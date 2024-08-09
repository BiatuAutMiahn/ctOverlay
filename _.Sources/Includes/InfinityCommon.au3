#include-once

; Built-in Includes
#Include <Array.au3>
#include <WinAPIFiles.au3>
#include <Crypt.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <GuiStatusBar.au3>
#include <WindowsConstants.au3>
#include <GuiEdit.au3>
#include <Security.au3>

; UDFs, and Custom Includes
Global $bIsInfinity=True
#include "_Common.au3"
#include "base64.au3"
#include "_Dig.au3"
#include "_newResolve.au3"
#include "advping.au3"
#include "CryptProtect.au3"
#include "AD.au3"
#include "ProcessEx.au3"

;~ If Not $bNoResolve Then
;~ 	$aRes=_Resolve($sDest)
;~ 	$vRet[3]=$aRes[0]
;~ 	$vRet[4]=$aRes[1]
;~ Else
;~ 	Dim $vRet[3]
;~ EndIf

; --WIP--
; Execute self on remote with psexec.
; By itself it does nothing, sRemoteInit not yet implemented.
;
; Will be used to perform various tasks that require a user profile on remote.
;
; Background:
; Printer Installtion didn't function remotely with psexec unless using a RunAsWait to run as myself.
; If order to pull this off I would need to either hardcode my password or pass it via an argument.
; I didn't feel safe exposing my cleartext or Base64 encoded password.
; Instead, we cache our credentials with CryptProtectData.
; In order to get the creds over to the remote, we encrypt them with a rotating hash salt that changes every hour.
;
; psexec64 \\DTXXXXXX /s /c /f /i C:\Users\cxg190\System\Users\Biatu\Dev\AutoIt\CXG190\Utils\_.Sources\RunAs_dev.exe cxg190 <snip> 0 "\\clinnas-isf\DesktopEngineering\Desktop_Support\Desktop_Folders\CXG190\Utils\prInst.exe \\wpprmh01\pr53228"
;
;~ Func _RunAsRemote($sHost,$sInit)
;~ 	Return False
;~ 	$vCrypt=ohAuth_Encrypt($sHost)
;~ 	$sbInit=_Base64Encode($sInit)
;~ 	Return RunWait('psexec64.exe '&$sHost&' /s /c /f "'&@AutoItExe&'" -bRemote=1 -ohAuth='&$vCrypt&' -sRemoteInit='&$sbInit)
;~ EndFunc

Func _Ping($sDest,$iTimeout=250)
	Local $vRet[3]
	Local $ECHORet
	$vRet[0]=1
	Local $bRet = _IcmpCustomPayload($sDest, "abcdefghijklmnopqrstuvwabcdefghi", $ECHORet, $iTimeout)
	If @error Then
	  $vRet[1]=0
	  $vRet[2]=null
	  Switch @error
	   Case $IP_REQ_TIMED_OUT
		Return SetError(1, 1,$vRet)
	   Case $IP_DEST_HOST_UNREACHABLE
		Return SetError(1, 2,$vRet)
	   Case $IP_BAD_DESTINATION
		Return SetError(1, 3,$vRet)
	   Case Else
		Return SetError(1, 4,$vRet)
	  EndSwitch
	Else
	  $vRet[1]=1
	  $vRet[2]=DllStructGetData($ECHORet, "RoundTripTime")
	  Return $vRet
	EndIf
EndFunc

;ConsoleWrite(_Resolve("www.google.com")&','&@error&','&@extended&@CRLF)

; Resolve
Func _Resolve($sQuery,$iTimeout=5000)
	Local $aRet[2]
	If _isIPv4($sQuery) Then
		$aRet[1]=_DigNameFromIp($sQuery,False,$iTimeout)
        ;ConsoleWrite($aRet[1]&@CRLF)
        If @error Then Return SetError(1,@Error,False)
		$aRet[0]=_DigIpFromName($aRet[1],False,$iTimeout)
        If @error Then Return SetError(2,@Error,False)
	Else
		$aRet[0]=_DigIpFromName($sQuery,False,$iTimeout)
        If @error Then Return SetError(3,@Error,False)
        If _isIPv4($aRet[0]) Then
            $aRet[1]=_DigNameFromIp($aRet[0],False,$iTimeout)
            If @error Then Return SetError(4,@Error,False)
        Else
            $aRet[1]=$aRet[0]
            $aRet[0]=_DigIpFromName($aRet[0],False,$iTimeout)
            If @error Then Return SetError(5,@Error,False)
        EndIf
    EndIf
	If IsArray($aRet[0]) Then $aRet[0]=_ArrayToString($aRet[0],"|",1)
	If IsArray($aRet[1]) Then $aRet[1]=_ArrayToString($aRet[1],"|",1)
    If StringRight($aRet[1],1)=='.' Then $aRet[1]=StringTrimRight($aRet[1],1)
	Return SetError(0,0,$aRet)
EndFunc

Func _DigIpFromName($sHost,$bFullSearch=False,$iTimeout=2000)
    $vRet=_nResolve($sHost,False,$bFullSearch,$iTimeout)
    ;_ArrayDIsplay($vRet,'@'&@Error)
    If @error Then Return SetError(1,@Error,False)
    Return SetError(0,0,$vRet[0][1])
EndFunc

Func _DigNameFromIp($sIPv4,$bFullSearch=False,$iTimeout=2000)
    $vRet=_nResolve($sIPv4,True,$bFullSearch,$iTimeout)
    ;_ArrayDIsplay($vRet,'%'&@Error)
    If @error Then Return SetError(1,@Error,False)
    Return SetError(0,0,$vRet[0][1])
EndFunc

; ohAuth


Global $bEnValidate[]=[False,False,False,False]
Global $gidOPID, $gidPass, $gidBtnValidate
Func ohAuth_WM_COMMAND($hWnd, $iMsg, $wParam, $lParam)
    Local $iCode,$inID,$bMod=False
    $iId =  BitAND($wParam, 0xFFFF)
    $iCode = BitShift($wParam, 16)
    Switch $iId
        Case $gidPass
            Switch $iCode
                Case $EN_CHANGE
                    $bMod=True
                    $bEnValidate[0]=GUICtrlRead($iId)<>""
            EndSwitch
        Case $gidOPID
            Switch $iCode
                Case $EN_CHANGE
                    $bMod=True
                    $bEnValidate[1]=GUICtrlRead($iId)<>""
            EndSwitch
    EndSwitch
    If $bMod Then
        If $bEnValidate[0] And $bEnValidate[0]==$bEnValidate[1] Then
            $bEnValidate[3]=$GUI_ENABLE
        Else
            $bEnValidate[3]=$GUI_DISABLE

        EndIf
        if $bEnValidate[3]<>$bEnValidate[2] Then
            $bEnValidate[2]=$bEnValidate[3]
            GuiCtrlSetState($gidBtnValidate,$bEnValidate[3])
        EndIf
    EndIf
    Return $GUI_RUNDEFMSG
EndFunc


Global $g_ohAuth_iOVM,$g_ohAuth_bReAuth,$g_ohAuth_iEnState
Global $g_ohAuth_hWnd
Global $g_ohAuth_idUser,$g_ohAuth_idPass,$g_ohAuth_idRem,$g_ohAuth_idStat
Global $g_ohAuth_idAbort, $g_ohAuth_idDone
Global Enum $g_ohAuth_uiState_WMCMD = 1, $g_ohAuth_uiState_User = 2, $g_ohAuth_uiState_Pass = 4, $g_ohAuth_uiState_Rem = 8, $g_ohAuth_uiState_Abort = 16, $g_ohAuth_uiState_Done = 32
Global Enum $g_ohAuth_uiMode_Auth = 0, $g_ohAuth_uiMode_Renew = 1, $g_ohAuth_uiMode_Verify = 2

Func _ohAuth_WM_COMMAND()

EndFunc

Func _ohAuth_uiClose()
    _ohAuth_uiSetStates(0)
    GUIDelete($g_ohAuth_hWnd)
    Opt("GUIOnEventMode",$g_ohAuth_iOVM)
    $g_ohAuth_iOVM=False
EndFunc

Func _ohAuth_uiSetStates($iState)
    GUIRegisterMsg($WM_COMMAND,BitAND($iState,$g_ohAuth_uiState_WMCMD) ? "_ohAuth_WM_COMMAND" : "");0x1
    GUICtrlSetState($g_ohAuth_idUser,BitAND($iState,$g_ohAuth_uiState_User) ? $GUI_ENABLE : $GUI_DISABLE);0x2
    GUICtrlSetState($g_ohAuth_idPass,BitAND($iState,$g_ohAuth_uiState_Pass) ? $GUI_ENABLE : $GUI_DISABLE);0x4
    GUICtrlSetState($g_ohAuth_idRem,BitAND($iState,$g_ohAuth_uiState_Rem) ? $GUI_ENABLE : $GUI_DISABLE);0x8
    GUICtrlSetState($g_ohAuth_idAbort,BitAND($iState,$g_ohAuth_uiState_Abort) ? $GUI_ENABLE : $GUI_DISABLE);0x10
    GUICtrlSetState($g_ohAuth_idDone,BitAND($iState,$g_ohAuth_uiState_Done) ? $GUI_ENABLE : $GUI_DISABLE);0x20
EndFunc

Func ohAuth_PromptCred($iMode=0,$sUser="",$bRemember=True)
	Local $bWarnRemember=True
    Local $iuiWidth=348, $iuiHeight=161
    Local $iBtnMargin=8,$iBtnWidth=72,$iBtnLeft=($iuiWidth/2)-(($iBtnWidth+$iBtnMargin+$iBtnWidth)/2)
    Local $sRemMsg="Credentials will be stored in your user profile directory and will only be accessible from this account on this machine."
    Local $sAlias="ohAuth", $sMode, $sTitle
    $g_ohAuth_iEnState=0x1f
    If $iMode==0 Then
        $sMode="Add"
    ElseIf $iMode==1 Then
        $sMode="Renew"
        $g_ohAuth_iEnState=BitXOR($g_ohAuth_iEnState,$g_ohAuth_uiState_User)
    ElseIf $iMode==2 Then
        $sMode="Verify"
        $g_ohAuth_iEnState=BitXOR($g_ohAuth_iEnState,$g_ohAuth_uiState_User)
    EndIf
    $sTitle=$sAlias&" - "&$sMode&" Credentials"
    If Not $g_ohAuth_iOVM Then $g_ohAuth_iOVM=Opt("GUIOnEventMode")
    Opt("GUIOnEventMode",0)
	$g_ohAuth_hWnd=GUICreate($sTitle, $iuiWidth, $iuiHeight)
	GUISetFont(10, 400, 0, "Consolas")
	$g_ohAuth_idUser=GUICtrlCreateInput("",8,8,$iuiWidth-16, 23)
	$g_ohAuth_idPass=GUICtrlCreateInput("", 8, 40, $iuiWidth-16, 23, $ES_PASSWORD)
	$g_ohAuth_idRem=GUICtrlCreateCheckbox("Remember (Encrypted)", 8, 72, 185, 17)
	$g_ohAuth_idAbort=GUICtrlCreateButton("Cancel",$iBtnLeft, 97, $iBtnWidth, 32)
	$g_ohAuth_idDone=GUICtrlCreateButton("Check",$iBtnLeft+$iBtnMargin+$iBtnWidth,97, $iBtnWidth, 32)
	$g_ohAuth_idStat=_GUICtrlStatusBar_Create($g_ohAuth_hWnd)
	_GUICtrlEdit_SetCueBanner($g_ohAuth_idUser, "User", True)
	_GUICtrlEdit_SetCueBanner($g_ohAuth_idPass, "Password", True)
    If $g_ohAuth_bReAuth Then
        GUICtrlSetData($g_ohAuth_idUser,$sUser)
    EndIf
    If Not $bRemember Or $iMode==2 Then $g_ohAuth_iEnState=BitXOR($g_ohAuth_iEnState,$g_ohAuth_uiState_Rem)
    _ohAuth_uiSetStates($g_ohAuth_iEnState)
	_GUICtrlStatusBar_SetText($g_ohAuth_idStat,"Ready")
    GUISetState(@SW_SHOW)
	While Sleep(1)
		$aMsg = GUIGetMsg(1)
        If Not IsArray($aMsg) Or $aMsg[0]==0 Or $aMsg[1]<>$g_ohAuth_hWnd Then ContinueLoop
		Switch $aMsg[0]
            Case $g_ohAuth_idAbort,$GUI_EVENT_CLOSE
                _ohAuth_uiClose()
                ExitLoop
			Case $g_ohAuth_idRem
				if GuiCtrlRead($g_ohAuth_idRem)==$GUI_CHECKED Then
					$bRemember=True
					If $bWarnRemember Then
						MsgBox(48,"ohAuth - Remember Credentials",$sRemMsg,0,$g_ohAuth_hWnd)
						$bWarnRemember=False
					EndIf
				Else
					$bRemember=False
				EndIf
;~ 			Case $gidBtnValidate
;~ 				GUIRegisterMsg($WM_COMMAND,"")
;~ 				GUICtrlSetState($gidOPID,$GUI_DISABLE)
;~ 				GUICtrlSetState($gidPass,$GUI_DISABLE)
;~ 				GUICtrlSetState($idRemember,$GUI_DISABLE)
;~ 				GUICtrlSetState($gidBtnValidate,$GUI_DISABLE)
;~ 				GUICtrlSetState($idBtnCancel,$GUI_DISABLE)
;~ 				_GUICtrlStatusBar_SetText($idStatus,"Validating...")
;~ 				$sUser=GUICtrlRead($gidOPID)
;~ 				$sPass=GUICtrlRead($gidPass)
;~ 				$iRet=_AD_Open("DS\"&$sUser, $sPass,"","",1)
;~                 _AD_Close()
;~ 				If $iRet Then
;~ 					GuiCtrlSetData($gidPass,$ahSalts[@HOUR])
;~ 					_GUICtrlStatusBar_SetText($idStatus,"Validating...Success")
;~ 					sleep(250)
;~ 					_GUICtrlStatusBar_SetText($idStatus,"Encrypting...")
;~ 					$g_aAuth[0][1]=_Base64Encode(_CryptProtectData($sPass))
;~ 					$sPass=""
;~ 					$g_aAuth[0][0]=$sUser
;~ 					$sUser=""
;~ 					_GUICtrlStatusBar_SetText($idStatus,"Encrypting...Done")
;~ 					sleep(250)
;~ 					if $bRemember Then
;~ 						_GUICtrlStatusBar_SetText($idStatus,"Saving Token...")
;~ 						IniWrite($sAuthIni,"ohAuth","opid/PAM",$g_aAuth[0][0])
;~ 						IniWrite($sAuthIni,"ohAuth","token",$g_aAuth[0][1])
;~ 						sleep(250)
;~ 						_GUICtrlStatusBar_SetText($idStatus,"Saving Token...Done")
;~ 						sleep(250)
;~ 					EndIf
;~ 					Return
;~ 				Else
;~ 					If @Error==8 Then
;~ 						_GUICtrlStatusBar_SetText($idStatus,"Validating...Authentication Failed")
;~ 					Else
;~ 						_GUICtrlStatusBar_SetText($idStatus,"Validating...Internal Failure")
;~ 					EndIf
;~ 					GUIRegisterMsg($WM_COMMAND,"ohAuth_WM_COMMAND")
;~ 					GUICtrlSetState($gidOPID,$GUI_ENABLE)
;~ 					GUICtrlSetState($gidPass,$GUI_ENABLE)
;~ 					GUICtrlSetState($idRemember,$GUI_ENABLE)
;~ 					GUICtrlSetState($gidBtnValidate,$GUI_ENABLE)
;~ 					GUICtrlSetState($idBtnCancel,$GUI_ENABLE)
;~ 				EndIf
		EndSwitch
	WEnd
EndFunc
;ohAuth_PromptCred()

; Common Resource Dir
Global $sResourceDir=@UserProfileDir
Func _MapUtilityDrive()
    Return
	_InitAuth()
	ConsoleWrite("Mapping Utility Drive R:...")
	$sDesc=""
	$iRet=DriveMapAdd("R:",$sResourceDir,0,"DS\"&$g_aAuth[0][0],_CryptUnprotectData(_Base64Decode($g_aAuth[0][1]),$sDesc))
	If @Error<>0 Then
		ConsoleWrite('Fail ('&$iRet&','&@error&','&@extended&')'&@CRLF)
		Return SetError(@Error,@Extended,$iRet)
	EndIf
	ConsoleWrite('Done'&@CRLF)
	Return SetError(0,0,1)
EndFunc

Func _GuiCtrlGetFocus($GuiRef)
    Local $hwnd = ControlGetHandle($GuiRef, "", ControlGetFocus($GuiRef))
    Local $result = DllCall("user32.dll", "int", "GetDlgCtrlID", "hwnd", $hwnd)
    Return $result[0]
EndFunc

Func _InitBasicTray($sFunc=Default)
	Opt("TrayMenuMode", 1)
	Opt("TrayOnEventMode", 1)
	$cTrayExit = TrayCreateItem("Exit")
    If $sFunc==Default Then
        TrayItemSetOnEvent($cTrayExit,"_DefExit")
    EndIf
	TraySetState(1)
EndFunc

Func _DefExit()
    Exit
EndFunc

; #FUNCTION# ====================================================================================================================
; Name ..........: _IsUACAdmin
; Description ...: Determines if process has Admin privileges and whether running under UAC.
; Syntax ........: _IsUACAdmin()
; Parameters ....: None
; Return values .: Success          - 1 - User has full Admin rights (Elevated Admin w/ UAC)
;                  Failure          - 0 - User is not an Admin, sets @extended:
;                                   | 0 - User cannot elevate
;                                   | 1 - User can elevate
; Author ........: Erik Pilsits
; Modified ......:
; Remarks .......: THE GOOD STUFF: returns 0 w/ @extended = 1 > UAC Protected Admin
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func _IsUACAdmin()
    ; check elevation
    If StringRegExp(@OSVersion, "_(XP|20(0|3))") Or (Not _IsUACEnabled()) Then ; XP, XPe, 2000, 2003 > no UAC
        ; no UAC available or turned off
        If IsAdmin() Then
            Return SetExtended(0, 1)
        Else
            Return SetExtended(0, 0)
        EndIf
    Else
        ; check UAC elevation
        ;
        ; get process token groups information
        Local $hToken = _Security__OpenProcessToken(_WinAPI_GetCurrentProcess(), $TOKEN_QUERY)
        Local $tTI = _Security__GetTokenInformation($hToken, $TOKENGROUPS)
        _WinAPI_CloseHandle($hToken)
        ;
        Local $pTI = DllStructGetPtr($tTI)
        Local $cbSIDATTR = DllStructGetSize(DllStructCreate("ptr;dword"))
        Local $count = DllStructGetData(DllStructCreate("dword", $pTI), 1)
        Local $pGROUP1 = DllStructGetPtr(DllStructCreate("dword;STRUCT;ptr;dword;ENDSTRUCT", $pTI), 2)
        Local $tGROUP, $sGROUP = ""
        ;
        ; S-1-5-32-544 > BUILTINAdministrators > $SID_ADMINISTRATORS
        ; S-1-16-8192  > Mandatory LabelMedium Mandatory Level (Protected Admin) > $SID_MEDIUM_MANDATORY_LEVEL
        ; S-1-16-12288 > Mandatory LabelHigh Mandatory Level (Elevated Admin) > $SID_HIGH_MANDATORY_LEVEL
        ; SE_GROUP_USE_FOR_DENY_ONLY = 0x10
        ;
        ; check SIDs
        Local $inAdminGrp = False, $denyAdmin = False, $elevatedAdmin = False, $sSID
        For $i = 0 To $count - 1
            $tGROUP = DllStructCreate("ptr;dword", $pGROUP1 + ($cbSIDATTR * $i))
            $sSID = _Security__SidToStringSid(DllStructGetData($tGROUP, 1))
            If StringInStr($sSID, "S-1-5-32-544") Then
                ; member of Administrators group
                $inAdminGrp = True
                ; check for deny attribute
                If (BitAND(DllStructGetData($tGROUP, 2), 0x10) = 0x10) Then $denyAdmin = True
            ElseIf StringInStr($sSID, "S-1-16-12288") Then
                $elevatedAdmin = True
            EndIf
        Next
        ;
        If $inAdminGrp Then
            ; check elevated
            If $elevatedAdmin Then
                ; check deny status
                If $denyAdmin Then
                    ; protected Admin CANNOT elevate
                    Return SetExtended(0, 0)
                Else
                    ; elevated Admin
                    Return SetExtended(1, 1)
                EndIf
            Else
                ; protected Admin
                Return SetExtended(1, 0)
            EndIf
        Else
            ; not an Admin
            Return SetExtended(0, 0)
        EndIf
    EndIf
EndFunc   ;==>_IsUACAdmin

Func _IsUACEnabled()
    Return (RegRead("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System", "EnableLUA") = 1)
EndFunc   ;==>_IsUACEnabled


; #FUNCTION# ====================================================================================================================
; Name ..........: _UAC_SetEnableLUA
; Description ...: Sets UAC Registry Key for EnableLUA. Run all administrators in Admin Approval Mode.
; Syntax ........: _UAC_SetEnableLUA([$iValue = $UAC_ENABLED (1)])
; Parameters ....: $iValue - [optional] An integer value. Default is 1.
;                  |$UAC_DISABLED (0) - UAC (formally known as LUA) is disabled.
;                  |$UAC_ENABLED (1) - UAC (formally known as LUA) is enabled.
; Return values .: Success - 1
;                  Failure - -1, sets @error to:
;                  |1 - if unable to open requested key
;                  |2 - if unable to open requested main key
;                  |3 - if unable to remote connect to the registry
;                  |-1 - if unable to open requested value
;                  |-2 - if value type not supported
;                  |-3 - Current user is not Admin.
;                  |-4 - Invalid key on OS.
;                  |-5 - An invaild value.
; Author ........: Adam Lawrence (AdamUL)
; Modified ......:
; Remarks .......: Admin rights required to set the value.
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func _UAC_SetEnableLUA($iValue = 1)
    If Not IsAdmin() Then Return SetError(-3, 0, -1)
    If StringRegExp(@OSVersion, "_(XP|200(0|3))") Then Return SetError(-4, 0, -1)
    If $iValue < 0 Or $iValue > 1 Then Return SetError(-5, 0, -1)
    Local $s64Bit = ""
    If @OSArch = "X64" Then $s64Bit = "64"
    Local $iReturn = RegWrite("HKEY_LOCAL_MACHINE" & $s64Bit & "\Software\Microsoft\Windows\CurrentVersion\Policies\System", "EnableLUA", "REG_DWORD", $iValue)
    If $iReturn = 0 Then $iReturn = -1
    Return SetError(@error, 0, $iReturn)
EndFunc   ;==>_UAC_SetEnableLUA

; #FUNCTION# ====================================================================================================================
; Name ..........: _Process_RunAsCommand
; Description ...: Runs a command or an executable under a different user security privilege.
; Syntax ........: _Process_RunAsCommand($iMode, $sUserName, $sUserPass, $sUserDomain, $sExecutable [, $sWorkingDir = @TempDir [, $iRunOptFlag = $STDERR_MERGED]])
; Parameters ....: $iMode               - Mode in which this function should operate, See Remarks.
;                  $sUserName           - User name under which you would like to run the command/executable.
;                  $sUserPass           - Password for $sUserName.
;                  $sUserDomain         - Domain name to which the $sUserName belongs.
;                  $sExecutable         - The command to run/execute (along with any arguments).
;                  $sWorkingDir         - [optional] The working directroy for the command. Default is @TempDir. $sUserName must have
;                                         privileges to create/modify files on this directory.
;                  $iRunOptFlag         - [optional] The Opt flag for the Run function. Default is $STDERR_MERGED.
; Return values .: Success: Mode $PROCESS_RUN     : Will return the process handle & @extended will contain the PID of the command
;                           Mode $PROCESS_RUNWAIT : Will return the output & @extended will contain the exit code for the function
;                  Failure: Will return False & @error will contain:
;                           1 - If the $iMode flag is invalid
;                           2 - If the command is invalid
; Author ........: J. Sanchez, heavily borrowing from code by TheDcoder
; Modified ......: N/A
; Remarks .......: 1. The ONLY valid modes are: $PROCESS_RUN & $PROCESS_RUNWAIT
;                     $PROCESS_RUN     : Will act similarly to Run function, See Return values
;                     $PROCESS_RUNWAIT : Will act similarly to RunWait function, See Return values
;                     If you use $PROCESS_RUN then use _Process_GetExitCode to get the exit code & use StdoutRead to get the output of the command
;                  2. Use $PROCESS_COMMAND to run commands like this: $PROCESS_COMMAND & "ping 127.0.0.1"
;                  3. Add $PROCESS_DEBUG to $iMode to automagically debug the command, $PROCESS_RUN is equivalent to $PROCESS_RUNWAIT in this case
; Related .......: RunAs, RunWait
; Link ..........: http://bit.ly/ProcessUdfForAutoIt
; Example .......: Yes, see example.au3
; ===============================================================================================================================; Functions
Func _Process_RunAsCommand($iMode, $sUserName, $sUserPass, $sUserDomain, $sExecutable, $sWorkingDir = @TempDir, $iRunOptFlag = $STDERR_MERGED)
    Local $iExitCode = 0 ; Declare the exit code variable before hand
    Local $sOutput = "" ; Declare the output variable before hand
    Local $bDebug = False ; Declare the debug variable before hand
    If BitAND($iMode, $PROCESS_DEBUG) Then $bDebug = True
    If BitAND($iMode, $PROCESS_RUN) Then
        $iMode = $PROCESS_RUN
    ElseIf BitAND($iMode, $PROCESS_RUNWAIT) Then
        $iMode = $PROCESS_RUNWAIT
    Else
        Return SetError(1, 0, False)
    EndIf
    ; If Not $iMode = $PROCESS_RUN Or Not $iMode = $PROCESS_RUNWAIT Then Return SetError(1, 0, False) ; If the mode is invalid...
    ;Local $iPID = Run($sExecutable, $sWorkingDir, @SW_HIDE, $iRunOptFlag) ; Run!!! :P
    Local $iPID = RunAs($sUserName,$sUserDomain,$sUserPass,BitAND(0,4),$PROCESS_COMMAND & " " & $sExecutable,$sWorkingDir,@SW_HIDE,$iRunOptFlag)
    If @error Then Return SetError(2, @error, False) ; If the command is invalid...
    Local $hProcessHandle = _Process_GetHandle($iPID) ; Get the handle of the process
    If $iMode = $PROCESS_RUN Then
        If Not $bDebug Then Return SetExtended($iPID, $hProcessHandle) ; If the function is in Run mode then return the PID & Process Handle
        $sOutput = _Process_DebugRunCommand($hProcessHandle, $iPID) ; Debug the process
        $iExitCode = _Process_GetExitCode($hProcessHandle) ; Note the exit code
        Return SetExtended($iExitCode, $sOutput) ; Return the output & exit code
    EndIf
    If Not $bDebug Then
        While ProcessExists($iPID)
            $sOutput &= StdoutRead($iPID) ; Capture the output
            Sleep(250) ; Don't kill the CPU
        WEnd
        $sOutput &= StdoutRead($iPID) ; Capture any remaining output
        $iExitCode = _Process_GetExitCode($hProcessHandle) ; Note the exit code
        Return SetExtended($iExitCode, $sOutput) ; Return the exit code & the output :D
    EndIf
    $sOutput = _Process_DebugRunCommand($hProcessHandle, $iPID) ; Debug the process
    $iExitCode = _Process_GetExitCode($hProcessHandle) ; Note the exit code
    Return SetExtended($iExitCode, $sOutput) ; Return the output & exit code
EndFunc
