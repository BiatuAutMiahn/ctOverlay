#pragma compile(AutoItExecuteAllowed, True)
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Res\ctdkgrrd.ico
#AutoIt3Wrapper_Outfile_x64=..\_.rc\ctOverlay.exe
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_Res_Description=Corsica Overlay
#AutoIt3Wrapper_Res_ProductName=
#AutoIt3Wrapper_Res_Fileversion=1.2409.2515.1225
#AutoIt3Wrapper_Res_Fileversion_AutoIncrement=y
#AutoIt3Wrapper_Res_Fileversion_First_Increment=y
#AutoIt3Wrapper_Run_After=echo %fileversion%>..\VERSION.rc
#AutoIt3Wrapper_Res_Fileversion_Use_Template=1.%YY%MO.%DD%HH.%MI%SE
#AutoIt3Wrapper_Res_Language=1033
#AutoIt3Wrapper_Run_Au3Stripper=y
#Au3Stripper_Parameters=/tl /debug /mo
#AutoIt3Wrapper_Change2CUI=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         https://github.com/BiatuAutMiahn
 Source: https://github.com/BiatuAutMiahn/cwNotifyAu3

#ce ----------------------------------------------------------------------------

#include <WinAPISys.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <SendMessage.au3>
#include <GDIPlus.au3>
#include <WinAPISysWin.au3>
#include <GuiToolTip.au3>
#include <Clipboard.au3>
#include <WinAPIShellEx.au3>
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <WinAPIGdi.au3>

#include "Includes\ResourcesEx.au3"
#include "Includes\_WinAPI_DPI.au3"
#include "Includes\ArrayNatSort.au3"
#include "Includes\_ClipPutHTML.au3"

Opt("TrayAutoPause", 0)
Opt("TrayIconHide", 1)
Opt("GUIOnEventMode",1)

Global Const $sAlias="ctOverlay"
Global Const $VERSION = "1.2409.2515.1225"
Global $sTitle=$sAlias&" v"&$VERSION


Global Const $MA_NOACTIVATE = 3
Global Const $MA_NOACTIVATEANDEAT = 4

Global $gDll_hKernel32=DllOpen("Kernel32.dll")
Global $gDll_hNTDll=DllOpen("NTDll.dll")
Global $gDll_hUser32=DllOpen("User32.dll")
Global $gDll_hShCore = DllOpen("Shcore.dll")

Global $g_sDataDir=@LocalAppDataDir&"\InfinitySys\ctOverlay"
Global $gsConfig=$g_sDataDir&"\ctOverlay.ini"
FileDelete($gsConfig)
;Global $gidAuthSep, $gidAuthAdd, $gidClip, $gidClipSend, $gidClipSendMacro, $gidClipSendRaw, $gidMainSepA, $gidMainSepB, $gidCtxDismiss, $gidCtxExit, $gCtxMain, $gidAuth, $gidCtxClipOpenSN
;Global $gidClipWatchMenu
;Global $gaRes, $gaResLast, $gidClipMenu, $gidClipMenuSep, $sClipAct
;Global $gidCtxClipPing, $gidCtxClipResolve, $gidCtxClipRemote, $gidCtxClipMgmt, $gidCtxClipCmd, $gidCtxClipActions, $gidCtxClipFixFw, $gidCtxClipExplore, $gidCtxClipReg, $gidClipMenuPin, $gidClipMenuUnpin
Global $gCtxMain
; iType, sAlias, (sCallback | aSubMenu), idCtrl, hCtrl
Global $aCtxMenu[1][5]
$aCtxMenu[0][0]=0
_InitDefMenu()

Global $sClipAct, $gsTooltip, $ghToolTip, $ghCtxMain
Global $aDisplays, $aMousePos[4], $aMon[4]; For monitor detection

Global $aPins[0][2]
Global $aMenu[0]
Local $iLeftLast,$iTopLast
; Init GDI
Global $hSelfLib, $hGraphics, $hBitmap, $hContext, $hHBitmap, $hBrushBl, $hBrushGr, $hBrushRd, $hBrushBk, $hIcon, $hHBitmap
;Global $g_sDataDir=@LocalAppDataDir&"\InfinitySys\cwOverlay.log"
Global $g_sLog=$g_sDataDir&"\cwOverlay.log"
FileClose(FileOpen($g_sLog,2))
_WinAPI_SetProcessDpiAwarenessContext($DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2)
Global $iDpiLast,$iDpiScale=1.5
Global $aMonitors=_GetMonInfo()
Global $iPriMon=$aMonitors[0][1]
Global $iMonLast=-1
Global $iDpiNoScale=$aMonitors[$iPriMon][5]/96
Global $iDpi=1.0;$iDpiNoScale*$iDpiScale
_Log(StringFormat("[a] iDpiScale:%0.3f, iDpiNoScale:%0.3f, iDpi:%0.3f",$iDpiScale,$iDpiNoScale,$iDpi))
;_ArrayDisplay($aMonitors)
Local $iSizeIco, $iMargin, $iWidth, $iHeight, $iRight, $iTop
_gfxRecalc()
Global $hGUI
$iLeft=@DesktopWidth-$iRight

;getMonInfo()
;_loadPins()
initUI()
While Sleep(125)
WEnd
_gfxDispose()
_GDIPlus_Shutdown()
GUIDelete($hGUI)

Func _Log($sLine)
    If Not FileExists($g_sDataDir) Then DirCreate($g_sDataDir)
    If FileGetSize($g_sLog)>1024*1024 Then FileDelete($g_sLog)
    FileWriteLine($g_sLog,$sLine)
    ConsoleWrite($sLine&@CRLF)
EndFunc

Func _gfxRecalc()
    $iMargin=2*$iDpi
    $iSizeIco=16*$iDpi
    $iWidth=$iSizeIco+($iMargin*2)
    $iHeight=$iMargin+$iSizeIco+$iMargin
    $iRight=$iWidth
    $iTop=18*$iDpi
    _Log(StringFormat("[b] iDpi:%0.3f, iSizeIco:%d, iWidth:%d, iHeight:%d, iRight:%d, iTop:%d",$iDpi,$iSizeIco,$iWidth,$iHeight,$iRight,$iTop))
EndFunc

Func _gfxInit()
    If @Compiled Then
        Local $hSelfLib = _WinAPI_LoadLibraryEx(Null,$LOAD_LIBRARY_AS_DATAFILE)
        Local $hResource = _WinAPI_FindResource($hSelfLib,$RT_GROUP_ICON,1)
        Local $hData = _WinAPI_LoadResource($hSelfLib, $hResource)
        Local $pData = _WinAPI_LockResource($hData)
        Local $iIcon = _WinAPI_LookupIconIdFromDirectoryEx($pData, 1, 2048, 2048)
        Local $hResource = _WinAPI_FindResource($hSelfLib, $RT_ICON, $iIcon)
        Local $iSize = _WinAPI_SizeOfResource($hSelfLib, $hResource)
        $hData = _WinAPI_LoadResource($hSelfLib, $hResource)
        $pData = _WinAPI_LockResource($hData)
        $hIcon = _WinAPI_CreateIconFromResourceEx($pData,$iSize)
    Else
        $hIcon = _WinAPI_ShellExtractIcon(@ScriptDir&"\Res\ctdkgrrd.ico",0,2048,2048)
    EndIf
    $hIcon = _GDIPlus_BitmapCreateFromHICON32($hIcon)
	$hGraphics = _GDIPlus_GraphicsCreateFromHWND($hGUI)
	$hBrushBl = _GDIPlus_BrushCreateSolid(0xFFA0A0FF)
	$hBrushGr = _GDIPlus_BrushCreateSolid(0xFFA0FFA0)
	$hBrushRd = _GDIPlus_BrushCreateSolid(0xAAFFA0A0)
    $hBrushBk = _GDIPlus_BrushCreateSolid(0xFFC0C0C0)
EndFunc

Func _gfxUninit()
    _GDIPlus_BrushDispose($hBrushBl)
    _GDIPlus_BrushDispose($hBrushGr)
    _GDIPlus_BrushDispose($hBrushRd)
    _GDIPlus_GraphicsDispose($hGraphics)
EndFunc

Func _gfxDispose()
    _GDIPlus_GraphicsDispose($hContext)
    _GDIPlus_BitmapDispose($hBitmap)
EndFunc

Func _gfxDraw()
    ;$hTimer=TimerInit()
    ;$hTimerA=TimerInit()
    $hBitmapIcon=_GDIPlus_ImageResize($hIcon,$iSizeIco,$iSizeIco)
    _GDIPlus_BitmapSetResolution($hBitmapIcon,96,96)
    ;$hBitmapIcon=_GDIPlus_ImageScale($hIcon,$iSizeIco/2048,$iSizeIco/2048,$GDIP_INTERPOLATIONMODE_NEARESTNEIGHBOR)

    _Log(StringFormat("[c] iDpi:%0.3f, iSizeIco:%d, iDpiNoScale:%0.3f, iSizeIco*iDpiNoScale:%0.3f, 24*iDpiNoScale:%f",$iDpi,$iSizeIco,$iDpiNoScale,$iSizeIco*$iDpiNoScale,24*$iDpiNoScale))

    ;ConsoleWrite(TimerDiff($hTimerA)&@CRLF)
    $hBitmap=_GDIPlus_BitmapCreateFromGraphics($iWidth, $iHeight, $hGraphics)
    $hContextIcon=_GDIPlus_ImageGetGraphicsContext($hBitmapIcon)
    $hContext=_GDIPlus_ImageGetGraphicsContext($hBitmap)
    _GDIPlus_GraphicsSetPixelOffsetMode($hContext,$GDIP_PIXELOFFSETMODE_HIGHQUALITY)
	_GDIPlus_GraphicsSetSmoothingMode($hContext,$GDIP_SMOOTHINGMODE_HIGHQUALITY)
    _GDIPlus_GraphicsSetCompositingQuality($hContext,$GDIP_COMPOSITINGQUALITY_HIGHQUALITY)
    _GDIPlus_GraphicsSetInterpolationMode($hContext,$GDIP_INTERPOLATIONMODE_HIGHQUALITYBICUBIC)
	_GDIPlus_GraphicsSetSmoothingMode($hGraphics,$GDIP_SMOOTHINGMODE_HIGHQUALITY)
    _GDIPlus_GraphicsSetCompositingQuality($hGraphics,$GDIP_COMPOSITINGQUALITY_HIGHQUALITY)
    _GDIPlus_GraphicsSetInterpolationMode($hGraphics,$GDIP_INTERPOLATIONMODE_HIGHQUALITYBICUBIC)
    _GDIPlus_GraphicsSetPixelOffsetMode($hGraphics,$GDIP_PIXELOFFSETMODE_HIGHQUALITY)
    _GDIPlus_GraphicsFillEllipse($hContext, 0, 0, $iMargin+$iSizeIco+$iMargin, $iMargin+$iSizeIco+$iMargin, $hBrushBk);$hBrushRd)
	_GDIPlus_GraphicsFillRect($hContext, $iMargin+($iSizeIco/2), 0, $iWidth-$iMargin-($iSizeIco/2), $iMargin+$iSizeIco+$iMargin, $hBrushBk);$hBrushGr)
    $iIcoHeight=_GDIPlus_ImageGetHeight($hBitmapIcon)
    _Log(StringFormat("[d] iIcoHeight:%d, iMargin:%d",$iIcoHeight,$iMargin))
    ;_Log('')
 ;   _GDIPlus_GraphicsDrawRect($hContextIcon,0,0,$iIcoHeight-1,$iIcoHeight-1)
 ;   _GDIPlus_GraphicsDrawRect($hContext,0,0,$iWidth-1,$iHeight-1)
    _GDIPlus_GraphicsFillEllipse($hContext, $iMargin, $iMargin, $iSizeIco, $iSizeIco, $hBrushRd);$hBrushBl)
    _GDIPlus_GraphicsDrawImage($hContext, $hBitmapIcon, $iMargin, $iMargin);-($iMargin/4), $iMargin-($iMargin/4))
    ;_GDIPlus_GraphicsDrawRect($hContext,$iMargin,$iMargin,$iWidth,$iHeight)
    ;ConsoleWrite((Mod($iIcoHeight,2)==0)&','&$iIcoHeight&','&$iDpiNoScale&','&$iMargin&','&$iSizeIco&@CRLF)
    $hHBitmap=_GDIPlus_BitmapCreateHBITMAPFromBitmap($hBitmap)

    ;ConsoleWrite(TimerDiff($hTimer)&@CRLF)
EndFunc

Func _gfxReload()
    _gfxDispose()
    _gfxDraw()
    _WinAPI_UpdateLayeredWindowEx($hGUI, -1, -1, $hHBitmap,0xBB)
EndFunc

Func initUI()
	_GDIPlus_Startup() ;initialize GDI+
	$hGUI = GUICreate("", $iWidth, $iHeight, $iLeft, $iTop, $WS_POPUP, $WS_EX_TOPMOST+$WS_EX_NOACTIVATE+$WS_EX_LAYERED+$WS_EX_TOOLWINDOW)
    _gfxInit()
    _gfxDraw()
    $idDummyMenu = GUICtrlCreateDummy()
    $gCtxMain = GUICtrlCreateContextMenu($idDummyMenu)
    $ghCtxMain=GUICtrlGetHandle($gCtxMain)
    _GUICtrlMenu_SetMenuStyle($ghCtxMain,$MNS_NOCHECK+$MNS_AUTODISMISS)
    GUIRegisterMsg($WM_NCHITTEST, 'WM_NCHITTEST')
    GUIRegisterMsg($WM_SYSCOMMAND, "WM_SYSCOMMAND")
    GUIRegisterMsg($WM_MOUSEACTIVATE, 'WM_EVENTS')
    GUIRegisterMsg($WM_DISPLAYCHANGE, "onDisplayChange")
    AdlibRegister("_watchDisplay",250)
    AdlibRegister('posTrackCall',64)
	GUISetState(@SW_SHOWNOACTIVATE, $hGUI)

    ;HotKeySet("#^x","_ctxEventMPos")
    _WinAPI_UpdateLayeredWindowEx($hGUI, -1, -1, $hHBitmap,0xBB)
EndFunc   ;==>Example

Func WM_EVENTS($hWnd,$MsgID,$WParam,$LParam)
    If $hWnd<>$hGui Or $MsgID<>$WM_MOUSEACTIVATE Then Return $GUI_RUNDEFMSG
    Local $aPos=GUIGetCursorInfo($hGui)
    ;ConsoleWrite($aPos[4]&@CRLF)
    If Pixel_Distance($aPos[0],$aPos[1],$iMargin+($iSizeIco/2),$iMargin+($iSizeIco/2))<=($iSizeIco/2) Then
        Local $iX=$iMargin+($iSizeIco/2)
        Local $iY=$iX
        ;ClientToScreen($hGui, $iX, $iY)
        ;ConsoleWrite($aPos[0]&':'&$aPos[1]&@CRLF)
        ;TrackPopupMenu($hGui, $ghCtxMain, $iX, $iY)
        GUISetState(@SW_SHOWNOACTIVATE, $hGUI)
        AdlibRegister("_ctxEvent")
    EndIf
    ;If $aPos[4]<>0 Then _SendMessage($hGui,$WM_COMMAND,_WinAPI_MakeLong($aPos[4],$BN_CLICKED),GUICtrlGetHandle($aPos[4]))
    Return $MA_NOACTIVATEANDEAT
EndFunc   ;==>WM_EVENTS

Func WM_SYSCOMMAND($hWnd,$Msg,$wParam,$lParam)
    If $hWnd<>$hGui Then $GUI_RUNDEFMSG
    If BitAND($wParam,0xFFF0)=0xF010 Then Return 0
    Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_SYSCOMMAND

Func WM_NCHITTEST($hWnd,$iMsg,$wParam,$lParam)
    #forceref $hWnd, $iMsg, $wParam, $lParam
    Return $HTCAPTION
EndFunc   ;==>WM_NCHITTEST

Func WM_MOVING($hWnd,$iMsg,$wParam,$lParam)
    If $hWnd=$hGui Then Return 1
    Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_MOVING

;<== Context Menu Calls

Func _ctxMacroAdSync()
    If Not waitForIt() Then Return
    Send('powershell -ExecutionPolicy Bypass -Command "iex (iwr -useb '&"'https://automation.corsicatech.com/wl/?id=MBF8RIaworixEqFqA4qCJSb4h7AoBNKe'"&')"{enter}',0)
EndFunc

Func _ctxMacroCustom()
    If Not waitForIt() Then Return
    Send(_ProcMacro('Hello {@clip}, please give us a call at your earliest convenience, thanks. 855.411.3387'),0)
EndFunc

Func _ctxMacroCustom2()
    If Not waitForIt() Then Return
    Send(_ProcMacro('{~!Time.Floor($iMin,5).Time2Str}{tab}{~!Time.Add($iMin,5).Round($iMin,5).Time2Str}'),0)
    If Not waitForIt() Then Return
    Send(_ProcMacro('Hello {@clip}, please give us a call at your earliest convenience, thanks. 855.411.3387'),0)
EndFunc

Func _ctxClipMacro()
    Local $sClip=ClipGet()
    Local $iIdx=_ctxGetPinParIdx()
    If Not @error Then $sClip=$aPins[$iIdx][0]
    $sClip=_ProcMacro($sClip)
    If Not waitForIt() Then Return
    Send($sClip,0)
EndFunc

Func _ProcMacro($sString,$isClip=0)
    $gsMacroRegExTimeRound="\{~!Time,Round\((\d{1,})\)\}"
    $gaAutMacros=StringSplit("HOUR,MDAY,MIN,MON,MSEC,SEC,WDAY,YDAY,YEAR",',')
    $sString=StringReplace($sString,@CRLF,"{enter}")
    $sString=StringReplace($sString,@TAB,"{tab}")
    ; Make interpreter? {~!(.*)}, comma delim.
    If StringRegExp($sString,"\{@TIME\}") Then
        $sMeridiem='a'
        $iHour=@HOUR
        If $iHour>=12 Then
            $iHour-=12
            $sMeridiem="p"
        EndIf
        $iMin=@MIN
        $iRound=StringRegExp($sString,"\{@TIME\}",1)
        If $iHour=0 Then $iHour=12
        $sTime=$iHour&$iMin&$sMeridiem
        $sString=StringReplace($sString,"{@TIME}",$sTime)
    EndIf
    If Not $isClip Then
        $sString=StringReplace($sString,"{@clip}",StringStripWS(ClipGet(),3))
    EndIf

    ; Macro Interpreter
    While StringRegExp($sString,"{~!([^}]+)}")
        Local $aRet[][2]=[[0,'']]
        Local $sRet
        $aCalcRegExp=StringRegExp($sString,"{~!([^}]+)}",2)
        If @error Then ExitLoop
        $sMatch=$aCalcRegExp[0]
        $aCalc=StringSplit($aCalcRegExp[1],'.')
        Local $aOp,$sFunc,$aParam
        For $i=1 To $aCalc[0]
            $aOp=StringRegExp($aCalc[$i],"([A-Za-z0-9]+)(?:\(([^\)]+)\))?",1)
            $iOp=UBound($aOp,1)
            $sFunc=""
            If $iOp>0 Then $sFunc=$aOp[0]
            If $iOp>1 Then $aParam=StringSplit($aOp[1],',')
            Switch $sFunc
                Case "Time"
                    $iHour=@HOUR
                    $sMeridiem='a'
                    If $iHour>=12 Then
                        $iHour-=12
                        $sMeridiem="p"
                    EndIf
                    If $iHour=0 Then $iHour=12
                    _MacroInt($aRet,"iHour",$iHour)
                    _MacroInt($aRet,"iMin",@Min)
                    _MacroInt($aRet,"sMeridiem",$sMeridiem)
                Case "Round"
                    $sVar=StringReplace($aParam[1],'$','')
                    _MacroSubst($aRet,$aParam)
                    $iVal=Round($aParam[1]/$aParam[2])*$aParam[2]
                    _MacroInt($aRet,$sVar,$iVal)
                Case "Ceil"
                    $sVar=StringReplace($aParam[1],'$','')
                    _MacroSubst($aRet,$aParam)
                    $iVal=Ceiling($aParam[1]/$aParam[2])*$aParam[2]
                    _MacroInt($aRet,$sVar,$iVal)
                Case "Floor"
                    $sVar=StringReplace($aParam[1],'$','')
                    _MacroSubst($aRet,$aParam)
                    $iVal=Floor($aParam[1]/$aParam[2])*$aParam[2]
                    _MacroInt($aRet,$sVar,$iVal)
                Case "Add"
                    $sVar=StringReplace($aParam[1],'$','')
                    _MacroSubst($aRet,$aParam)
                    $iVal=$aParam[1]+$aParam[2]
                    _MacroInt($aRet,$sVar,$iVal)
                Case "Time2Str"
                    _MacroSubst($aRet,$aParam)
                    $iHour=_MacroInt($aRet,"iHour")
                    $iMin=_MacroInt($aRet,"iMin")
                    $sMeridiem=_MacroInt($aRet,"sMeridiem")
                    If $iMin>59 Then
                        $iMin=0
                        $iHour+=1
                        $sMeridiem='a'
                        If $iHour>=12 Then
                            $iHour-=12
                            $sMeridiem="p"
                        EndIf
                        If $iHour=0 Then $iHour=12
                    EndIf
                    $sMin=StringFormat
                    If $iMin=0 Then
                        $sString=StringReplace($sString,$sMatch,StringFormat("%d%s",_MacroInt($aRet,"iHour"),_MacroInt($aRet,"sMeridiem")))
                    Else
                        $sString=StringReplace($sString,$sMatch,StringFormat("%d%02d%s",_MacroInt($aRet,"iHour"),_MacroInt($aRet,"iMin"),_MacroInt($aRet,"sMeridiem")))
                    EndIf
            EndSwitch
        Next
    WEnd

    For $i=1 To $gaAutMacros[0]
        If Not StringInStr($sString,"{@"&$gaAutMacros[$i]&"}") Then ContinueLoop
        $sString=StringReplace($sString,"{@"&$gaAutMacros[$i]&"}",Execute('@'&$gaAutMacros[$i]))
    Next
    Return $sString
EndFunc

Func _ctxClipRaw()
    Local $sClip=ClipGet()
    Local $iIdx=_ctxGetPinParIdx()
    If Not @error Then $sClip=$aPins[$iIdx][0]
    $sClip=StringReplace($sClip,@CRLF,@CR)
    If Not waitForIt() Then Return
    Send($sClip,1)
EndFunc

Func _ctxClipTikOpen()
    Local $sClip=StringStripWS(ClipGet(),3)
    If StringLeft($sClip,1)='#' Then $sClip=StringTrimLeft($sClip,1)
    ShellExecute(StringFormat("https://na.myconnectwise.net/v4_6_release/services/system_io/Service/fv_sr100_request.rails?service_recid=%s&companyName=corsica",$sClip))
EndFunc

Func _ctxClipCall()
    ShellExecute(StringFormat("tel:%s",$sClipAct))
EndFunc

Func _ctxClipTikClip()
    Local $sClip=StringStripWS(ClipGet(),3)
    If StringLeft($sClip,1)='#' Then $sClip=StringTrimLeft($sClip,1)
    $sUrI="https://na.myconnectwise.net/v4_6_release/services/system_io/Service/fv_sr100_request.rails?service_recid="&$sClip&"&companyName=corsica"
    ;$sHtml="<p class=MsoNormal style='margin-bottom:0in;line-height:normal;mso-pagination:none;mso-layout-grid-align:none;text-autospace:none'><span style='font-family:'Consolas',serif;mso-font-kerning:0pt'><a href='"&$sClip&"'><span\r\nstyle=\'font-family:Consolas;mso-bidi-font-family:Consolas;color:windowtext\'>#"&$sClip&"</span></a></span><o:p></o:p></p>"
    __ClipPutHyperlink($sUrI,'#'&$sClip)
EndFunc

Func _ctxGetPinParIdx()
    For $i=0 To UBound($aPins,1)-1
        $aTemp=$aPins[$i][1]
        For $j=UBound($aTemp,1)-1 To 0 Step -1
            If @GUI_CtrlId==$aTemp[$j] Then
                ConsoleWrite("_ctxGetPinParIdx:"&$i&@CRLF)
                Return SetError(0,0,$i)
            EndIf
        Next
    Next
    SetError(1,0,0)
EndFunc

Func _ctxReload()
    _destroyMenu($aCtxMenu, $gCtxMain)
    _InitMenu2($aCtxMenu, $gCtxMain)
EndFunc

Func _ctxExit()
    Exit 0
EndFunc

Func _ctxClipPut()
    Local $sItem=$sClipAct
    Local $iIdx=_ctxGetPinParIdx()
    If Not @error Then $sItem=$aPins[$iIdx][0]
    ClipPut($sItem)
EndFunc

Func _ctxClipPin()
    Local $bNew=1
    For $i=0 To UBound($aPins,1)-1
        If $sClipAct==$aPins[$i][0] Then
            $bNew=0
            ExitLoop
        EndIf
    Next
    If Not $bNew Then
        MsgBox(48,"ctOverlay",'"'&$sClipAct&'" is already pinned.')
        Return
    EndIf
    $iMax=UBound($aPins,1)
    ReDim $aPins[$iMax+1][2]
    $aPins[$iMax][0]=$sClipAct
    _savePins()
EndFunc

Func _ctxClipUnpin()
    Local $iIdx=_ctxGetPinParIdx()
    Local $aNew[0][2],$bMod=False
    Local $sName=$aPins[$iIdx][0]
    Local $iRet=MsgBox(33,"ctOverlay",'Are you sure you want to unpin "'&$sName&'"?')
    If $iRet<>1 Then Return
    Local $aTemp=$aPins[$iIdx][1]
    For $i=0 To UBound($aPins,1)-1
        If $i==$iIdx Then
            $bMod=True
            ContinueLoop
        EndIf
        $iMax=UBound($aNew,1)
        ReDim $aNew[$iMax+1][2]
        $aNew[$iMax][0]=$aPins[$i][0]
    Next
    If $bMod Then
        _destroyMenu($aCtxMenu, $gCtxMain)
        $aPins=$aNew
        _savePins()
    EndIf
EndFunc

Func _TipProc()
    _ToolTip($gsTooltip)
EndFunc

Func _ClearTip()
    AdlibUnRegister("_TipProc")
    $gsTooltip=-1
    _ToolTip("")
EndFunc

Func _SetTip($sTip)
    $gsTooltip=$sTip
    _ToolTip($gsTooltip)
    AdlibRegister("_TipProc",8)
EndFunc

;==> Context Menu Calls

Func _MenuAdd(ByRef $aMenu,$iType,$sAlias=Null,$vActPar=Null)
    $iMax=UBound($aMenu,1)
    $iMaxY=UBound($aMenu,2)
    ReDim $aMenu[$iMax+1][$iMaxY]
    $aMenu[$iMax][0]=$iType
    $aMenu[$iMax][1]=$sAlias
    $aMenu[$iMax][2]=$vActPar
    $aMenu[0][0]=$iMax
EndFunc

Func _InitDefMenu()
    ; iType, sAlias, (sCallback | aSubMenu), idCtrl, hCtrl
    ; iType 0=Separator, 1=Item, 2=Submenu, 3=Dynamic, 4=
    Local $aCtxMacros[1][5]
    $aCtxMacros[0][0]=0
    Local $aCtxPins[1][5]
    $aCtxPins[0][0]=0
    Local $aCtxClipSend[1][5]
    _MenuAdd($aCtxClipSend,1,'/w Macros','_ctxClipMacro')
    _MenuAdd($aCtxClipSend,1,'Raw','_ctxClipRaw')

    Local $aCtxClipTik[1][5]
    _MenuAdd($aCtxClipTik,1,'Open','_ctxClipTikOpen')
    _MenuAdd($aCtxClipTik,1,'mkUrl','_ctxClipTikClip')

    Local $aCtxClip[1][5]
    _MenuAdd($aCtxClip,2,'Send',$aCtxClipSend)
    _MenuAdd($aCtxClip,2,'AsTicket',$aCtxClipTik)
    ;_MenuAdd($aCtxClip,0)
    ;_MenuAdd($aCtxClip,1,'Call {~!@Clip.RegExpRepl("^(\+\d{1,2}\s?)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$","$1.$2.$3")}','_ctxClipCall')

    _MenuAdd($aCtxMenu,2,'Clip',$aCtxClip)
    ;_MenuAdd($aCtxMenu,2,'Macros',$aCtxMacros)
    ;_MenuAdd($aCtxMenu,0)
    ;_MenuAdd($aCtxMenu,2,'Pins',$aCtxPins)
    _MenuAdd($aCtxMenu,0)
    _MenuAdd($aCtxMenu,1,'Dismiss','_ctxReload')
    _MenuAdd($aCtxMenu,1,'Exit','_ctxExit')

EndFunc

; iType, sAlias, (sCallback | aSubMenu), idCtrl, hCtrl
; iType 0=Separator, 1=Item, 2=Submenu, 3=Dynamic, 4=
Func _InitMenu2(ByRef $aMenu, $idParent)
    Local $idCtrl,$hCtrl,$sAlias,$iType,$vActPar
    For $i=1 To $aMenu[0][0]
        $iType=$aMenu[$i][0]
        $sAlias=$aMenu[$i][1]
        $vActPar=$aMenu[$i][2]
        Switch $iType
            Case 0; Create Separator
                $idCtrl=GUICtrlCreateMenuItem('', $idParent)
            Case 1; Create Item
                $idCtrl=GUICtrlCreateMenuItem($sAlias, $idParent)
                GUICtrlSetOnEvent($idCtrl,$vActPar)
            Case 2; Create SubMenu
                $idCtrl=GUICtrlCreateMenu($sAlias, $idParent)
        EndSwitch
        $hCtrl=GUICtrlGetHandle($idCtrl)
        If $iType=2 Then
            _GUICtrlMenu_SetMenuStyle($hCtrl,$MNS_NOCHECK+$MNS_AUTODISMISS)
            _InitMenu2($vActPar,$idCtrl)
        EndIf
        $aMenu[$i][3]=$idCtrl
        $aMenu[$i][4]=$hCtrl
    Next
    ;Return $aMenu
EndFunc

Func _destroyMenu(ByRef $aMenu, $idParent)
    Local $idCtrl
    For $i=1 To $aMenu[0][0]
        $idCtrl=$aMenu[$i][3]
        If $aMenu[$i][0]=2 Then
            ConsoleWrite($aMenu[$i][0]&','&$aMenu[$i][1]&','&$aMenu[$i][3]&@CRLF)
            _destroyMenu($aMenu[$i][2],$idCtrl)
        Else
            GUICtrlSetOnEvent($idCtrl,"")
        EndIf
        ConsoleWrite($idCtrl&@CRLF)
        GUICtrlDelete($idCtrl)
    Next
    ;Return $aMenu
EndFunc

Func waitForIt()
    Local $bAbort=False
    Do
        _ToolTip("Click Left: Send, Right: Abort")
        Sleep(10)
        If _IsPressed("02", $gDll_hUser32) Then
            _ToolTip("")
            Sleep(250)
            Return False
        EndIf
    Until _IsPressed("01", $gDll_hUser32)
    _ToolTip("")
    Sleep(250)
    Return True
EndFunc

Func _savePins()
    Local $sPins=""
    Local $iMax=UBound($aPins,1)
    For $i=0 To $iMax-1
        $sPins&=$aPins[$i][0]
        If $i<$iMax-1 Then $sPins&='|'
    Next
    IniWrite($gsConfig,"Config","Pins",$sPins)
EndFunc

Func _loadPins()
    Local $sIni=IniRead($gsConfig,"Config","Pins",""),$iMax
    If StringInStr($sIni,'|') Then
        Local $aTemp=StringSplit($sIni,'|')
        If @error Then Return SetError(1,0,0)
        Local $iMax
        For $i=1 To $aTemp[0]
            If StringStripCR(StringStripWS($aTemp[$i],15))=="" Then ContinueLoop
            $iMax=UBound($aPins,1)
            ReDim $aPins[$iMax+1][2]
            $aPins[$iMax][0]=$aTemp[$i]
        Next
    Else
        If StringStripCR(StringStripWS($sIni,15))=="" Then Return SetError(2,0,0)
        $iMax=UBound($aPins,1)
        ReDim $aPins[$iMax+1][2]
        $aPins[$iMax][0]=$sIni
    EndIf
    Return SetError(0,0,1)
EndFunc

Func _ToolTip($sMsg,$iPosX=Default,$iPosY=Default)
    Local $hDC,$hFont,$hOldFont,$aPos
    If $sMsg="" Then
        If IsHWnd($ghToolTip) Then _GUIToolTip_Destroy($ghToolTip)
        Return
    EndIf
    If Not IsHWnd($ghToolTip) Then
        $ghToolTip=_GUIToolTip_Create(0)
        $hDC=_WinAPI_GetDC(0)
        $hFont=_WinAPI_CreateFont(14, 0, 0, 0, 800, False, False, False, $DEFAULT_CHARSET, $OUT_DEFAULT_PRECIS, $CLIP_DEFAULT_PRECIS, $DEFAULT_QUALITY, 0, 'Consolas')
        $hOldFont=_WinAPI_SelectObject($hDC, $hFont)
        _SendMessage($ghToolTip, $WM_SETFONT, $hFont, True)
        _GUIToolTip_AddTool($ghToolTip, 0, $sMsg, 0, 0, 0, 0, 0, BitOR($TTF_TRACK, $TTF_ABSOLUTE))
    EndIf
    If $iPosX=Default Or $iPosY=Default Then
        $aPos=MouseGetPos()
        If $iPosX=Default Then $iPosX=$aPos[0]+16
        If $iPosY=Default Then $iPosY=$aPos[1]+16
    EndIf
    _GUIToolTip_UpdateTipText($ghToolTip,0,0,$sMsg)
    _GUIToolTip_TrackPosition($ghToolTip,$iPosX,$iPosY)
    _GUIToolTip_TrackActivate($ghToolTip,True,0,0)
EndFunc

; UEZ
Func Pixel_Distance($x1, $y1, $x2, $y2) ;Pythagoras theorem for 2D
    Local $a, $b, $c
    If $x2 = $x1 And $y2 = $y1 Then
        Return 0
    Else
        $a = $y2 - $y1
        $b = $x2 - $x1
        $c = Sqrt($a * $a + $b * $B)
        Return $c
    EndIf
EndFunc   ;==>Pixel_Distance

Func onDisplayChange($hWnd, $nMsgID, $wParam, $lParam)
    ConsoleWrite('Resolution changed to "' & @DesktopWidth & 'x' & @DesktopHeight & '".'&@CRLF)
    ;getMonInfo()
    _Log(StringFormat('DisplayChange:%dx%d',@DesktopWidth,@DesktopHeight))
    $aMonitors=_GetMonInfo()
    For $i=1 To $aMonitors[0][0]
        _Log(StringFormat("onDisplayChange:iMonDpi=%f,%f",$i,$aMonitors[$i][5]))
    Next
    Local $iRet=posTrack(1)
    _Log(StringFormat("onDisplayChange:PosTrack=%d,%d,%d",$iRet,@error,@extended))
    Return $GUI_RUNDEFMSG
EndFunc

Func getMonInfo()
    Local $aPos
    $aDisplays = _WinAPI_EnumDisplayMonitors()
    If Not IsArray($aDisplays) Then Return $GUI_RUNDEFMSG
    ReDim $aDisplays[$aDisplays[0][0] + 1][17]
    For $i = 1 To $aDisplays[0][0]
        $aPos = _WinAPI_GetPosFromRect($aDisplays[$i][1])
        For $j = 0 To 3
            $aDisplays[$i][$j + 1] = $aPos[$j]
        Next
        $aInfo = _WinAPI_GetMonitorInfo($aDisplays[$i][0])
        If IsArray($aInfo) Then
            For $j = 1 To 4
                $aDisplays[$i][$j + 4] = DllStructGetData($aInfo[0], $j)
            Next
            For $j = 1 To 4
                $aDisplays[$i][$j + 8] = DllStructGetData($aInfo[1], $j)
            Next
            $aDisplays[$i][13]=$aInfo[2]
            $aDisplays[$i][14]=$aInfo[3]
        EndIf
        $aDPI = _WinAPI_GetDpiForMonitor($aDisplays[$i][0], 0);$MDT_DEFAULT)
        ;$aDPIa = _WinAPI_GetDpiForMonitor($aDisplays[$i][0], 0);$MDT_DEFAULT)
        ;$aDPIb = _WinAPI_GetDpiForMonitor($aDisplays[$i][0], 1);$MDT_DEFAULT)
        ;$aDPIc = _WinAPI_GetDpiForMonitor($aDisplays[$i][0], 2);$MDT_DEFAULT)
        ;$aDPId = _WinAPI_GetDpiForMonitor($aDisplays[$i][0], 3);$MDT_DEFAULT)
        If IsArray($aDPI) Then
            $aDisplays[$i][15]=$aDPI[0]
            $aDisplays[$i][16]=$aDPI[1]
        EndIf
    Next
EndFunc

Func posTrackCall()
    posTrack()
EndFunc

; Track mouse and update GUI position.
Func posTrack($bForce=0)
    If Not $bForce And _isWindowsLocked() Then Return SetError(1,0,0)
    GUISetState(@SW_SHOWNOACTIVATE, $hGUI)
    Local $iTimer=TimerInit()
    Local $iMon=-1, $tPos = _WinAPI_GetMousePos()
    $aMousePos[0]=DllStructGetData($tPos,1)
    $aMousePos[2]=DllStructGetData($tPos,2)
    If Not $bForce And ($aMousePos[0]=$aMousePos[1] Or $aMousePos[2]=$aMousePos[3]) Then Return SetError(1,1,0)
    $aMousePos[1]=$aMousePos[0]
    $aMousePos[3]=$aMousePos[2]
    Local $hMon=_WinAPI_MonitorFromPoint($tPos)
    If @error Then return SetError(1,2,0)
    For $i=1 To UBound($aMonitors,1)-1
        If $aMonitors[$i][0]==$hMon Then
            $iMon=$i
            ExitLoop
        EndIf
    Next
    If $iMon=-1 Or $iMon="" Then
        $aMonitors=_GetMonInfo()
        posTrack(1)
        Return SetError(1,3,False)
    EndIf
    If Not $bForce And $iMonLast=$iMon Then Return SetError(0,4,1)
    _Log(StringFormat("iMon:%d",$iMon))
    $iDpiNoScale=$aMonitors[$i][5]/96
    $iDpi=$iDpiNoScale*$iDpiScale
    _Log(StringFormat("[a:a] iDpiScale:%0.3f, iDpiNoScale:%0.3f, iDpi:%0.3f",$iDpiScale,$iDpiNoScale,$iDpi))
    $iMonLast=$iMon
    _gfxRecalc()
    $aPos=_WinAPI_GetPosFromRect($aMonitors[$iMon][2])
    $iLeft=$aPos[0]+$aPos[2]-$iRight
    $iTop=$aPos[1]+$iTop
    If $bForce Or ($iLeft<>$iLeftLast Or $iTop<>$iTopLast) Then
        $iLeftLast=$iLeft
        $iTopLast=$iTop
        ;GUISetState(@SW_HIDE, $hGUI)
        $aPos=WinGetPos($hGui)
        If $bForce Or ($aPos[0]<>$iLeft Or $aPos[1]<>$iTop) Then
            GUISetState(@SW_HIDE, $hGui)
            _gfxReload()
            WinMove($hGui,"",$iLeft,$iTop)
            ;_Log($iLeft&'x'&$iTop)
            _WinAPI_SetProcessDpiAwarenessContext($DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2)
        EndIf
        GUISetState(@SW_SHOWNOACTIVATE, $hGui)
    EndIf
    Return SetError(0,5,0)
EndFunc

; Show a menu in a given GUI window which belongs to a given GUI ctrl
Func ShowMenu($hWnd, $nContextID, $X, $Y, $iMouse=0)
    Local $hMenu = GUICtrlGetHandle($nContextID)
    ;Local $iCtrlPos = ControlGetPos($hWnd, "", $nContextControlID)
    ClientToScreen($hWnd, $X, $Y)
    If $iMouse Then
        $X = MouseGetPos(0)
        $Y = MouseGetPos(1)
    EndIf
    DllCall("user32.dll", "int", "TrackPopupMenuEx", "hwnd", $hMenu, "int", 0x0008, "int", $X, "int", $Y, "hwnd", $hWnd, "ptr", 0)
EndFunc

; Convert the client (GUI) coordinates to screen (desktop) coordinates
Func ClientToScreen($hWnd, ByRef $x, ByRef $y)
    Local $stPoint = DllStructCreate("int;int")
    DllStructSetData($stPoint, 1, $x)
    DllStructSetData($stPoint, 2, $y)
    DllCall("user32.dll", "int", "ClientToScreen", "hwnd", $hWnd, "ptr", DllStructGetPtr($stPoint))
    $x = DllStructGetData($stPoint, 1)
    $y = DllStructGetData($stPoint, 2)
    ; release Struct not really needed as it is a local
    $stPoint = 0
EndFunc

Func _WinAPI_GetDpiForMonitor($hMonitor, $dpiType)
  Local $X, $Y
  $aRet = DllCall($gDll_hShCore, "long", "GetDpiForMonitor", "long", $hMonitor, "int", $dpiType, "uint*", $X, "uint*", $Y)
  If @error Or Not IsArray($aRet) Then Return SetError(1, 0, 0)
  Local $aDPI[2] = [$aRet[3],$aRet[4]]
  Return $aDPI
EndFunc

Func _watchDisplay()
    GUISetState(@SW_SHOWNOACTIVATE, $hGui)
EndFunc

Func _ctxEvent()
    AdlibUnRegister("_ctxEvent")
    _destroyMenu($aCtxMenu, $gCtxMain)
    _InitMenu2($aCtxMenu, $gCtxMain)
    ShowMenu($hGui, $gCtxMain, ($iSizeIco/2)-$iMargin, $iMargin+($iSizeIco/2))
EndFunc

Func _ctxEventMPos()
    ;_DeleteCxt()
    ;_checkAuth()
    _destroyMenu($aCtxMenu, $gCtxMain)
    _InitMenu2($aCtxMenu, $gCtxMain)
    ;_InitMenu()
    $aPos=MouseGetPos()
    ShowMenu($hGui, $gCtxMain,0,0,1)
EndFunc

Func __ClipPutHyperlink($sURL,$sLabel="",$sSourceURL="")

	; Test parameters. (Label can be converted to a string if something else)
	If Not IsString($sURL) Or Not IsString($sSourceURL) Then Return SetError(1,0,0)

	; Convert Label to a string if it wasn't already (allows passing #'s etc)
	If Not IsString($sLabel) Then $sLabel=String($sLabel)

	; If no Label is specified, use the URL name as the label
	If $sLabel="" Then $sLabel=$sURL

	; 'Sneaky' method of converting regular little-endian 16-bit Unicode to UTF-8 Unicode
	;	(first convert it to UTF-8 *BINARY*, then convert it to a string (pretending its regular ANSI data))
	Local $sUTF8Label=BinaryToString(StringToBinary($sLabel,4),1)

	Local $sHTMLStr="<html><body>" & @CRLF & _
		'<p style="font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace;"><a href="' & $sURL & '">' & $sUTF8Label & '</a></p>' & @CRLF & _
		"</body>" & @CRLF & "</html>"
	$sHTMLClipStr=_ClipBoard_FormatHTML($sHTMLStr,15,15+StringLen($sURL)+15+StringLen($sUTF8Label)-1,1,-1,$sSourceURL)

	Local $vRet=_ClipBoard_SendHTML($sHTMLClipStr,$sLabel)
	SetError(@error,@extended)
	Return $vRet
EndFunc

Func _isWindowsLocked()
  If _WinAPI_OpenInputDesktop() Then Return False
  Return True
EndFunc   ;==>_isWindowsLocked

Func _MacroSubst(ByRef $aArrA, ByRef $aArrB)
    Local $vVar
    For $i=1 To $aArrB[0]
        If StringLeft($aArrB[$i],1)<>'$' Then ContinueLoop
        $vVar=_MacroInt($aArrA,StringTrimLeft($aArrB[$i],1))
        If @error Then $aArrB[$i]="Null"
        $aArrB[$i]=$vVar
    Next
EndFunc

Func _MacroInt(ByRef $aArray, $sField, $vVal=Null)
    Local $iVar=0
    For $i=1 To $aArray[0][0]
        If $aArray[$i][0]=$sField Then
            $iVar=$i
            ExitLoop
        EndIf
    Next
    If $vVal=Null Then
        If $iVar=0 Then Return SetError(1,0,0)
        Return SetError(0,$iVar,$aArray[$iVar][1])
    EndIf
    If $iVar=0 Then
        $iMax=UBound($aArray,1)
        ReDim $aArray[$iMax+1][2]
        $aArray[0][0]=$iMax
        $iVar=$iMax
    EndIf
    $aArray[$iVar][0]=$sField
    $aArray[$iVar][1]=$vVal
EndFunc

Func _GetMonInfo()
    ;aRet [hMon,Rect,WorkAera,isPrimary,DevName,DpiX]
    Local $iDimY=6
    Local $aRet[1][$iDimY],$aMon=__WinAPI_EnumDisplayMonitors()
    If @error Or Not IsArray($aMon) Then Return SetError(1, 0, 0)
    For $i = 1 To $aMon[0][0]
        Local $iMax=UBound($aRet,1)
        ReDim $aRet[$iMax+1][$iDimY]
        $aRet[$iMax][0]=$aMon[$i][0]
        Local $aInfo=__WinAPI_GetMonitorInfo($aMon[$i][0])
        If @error Or Not IsArray($aInfo) Then
            $aRet[$iMax][1]=@Error
            ContinueLoop
        EndIf
        For $j=1 To 4
            $aRet[$iMax][$j]=$aInfo[$j-1]
        Next
        If $aInfo[2] Then $aRet[0][1]=$i
        Local $tX=DllStructCreate("int dpiX"), $tY = DllStructCreate("int dpiY")
        Local $aDpiInfo=DllCall($gDll_hShCore, "long", "GetDpiForMonitor", "handle", $aMon[$i][0], "long", $MDT_DEFAULT, "struct*", $tX, "struct*", $tY)
        $aRet[$iMax][5]=$tX.dpiX
    Next
    $aRet[0][0]=$iMax
    Return SetError(0,0,$aRet)
EndFunc

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: BiatuAutMiahn, jpm
; ===============================================================================================================================
Func __WinAPI_EnumDisplayMonitors($hDC = 0, $tRECT = 0)
	Local $hEnumProc = DllCallbackRegister('__EnumDisplayMonitorsProc', 'bool', 'handle;handle;ptr;lparam')

	Dim $__g_vEnum[101][2] = [[0]]
	Local $aCall = DllCall($gDll_hUser32, 'bool', 'EnumDisplayMonitors', 'handle', $hDC, 'struct*', $tRECT, _
			'ptr', DllCallbackGetPtr($hEnumProc), 'lparam', 0)
	If @error Or Not $aCall[0] Or Not $__g_vEnum[0][0] Then
		$__g_vEnum = @error + 10
	EndIf
	DllCallbackFree($hEnumProc)
	If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)

	__Inc($__g_vEnum, -1)
	Return $__g_vEnum
EndFunc   ;==>_WinAPI_EnumDisplayMonitors

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: BiatuAutMiahn, jpm
; ===============================================================================================================================
Func __WinAPI_GetMonitorInfo($hMonitor)
	Local $tMIEX = DllStructCreate('dword;long[4];long[4];dword;wchar[32]')
	DllStructSetData($tMIEX, 1, DllStructGetSize($tMIEX))

	Local $aCall = DllCall($gDll_hUser32, 'bool', 'GetMonitorInfoW', 'handle', $hMonitor, 'struct*', $tMIEX)
	If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)

	Local $aRet[4]
	For $i = 0 To 1
		$aRet[$i] = DllStructCreate($tagRECT)
		__WinAPI_MoveMemory($aRet[$i], DllStructGetPtr($tMIEX, $i + 2), 16)
		; Return SetError(@error + 10, @extended, 0) ; cannot really occur
		; EndIf
	Next
	$aRet[3] = DllStructGetData($tMIEX, 5)
	Switch DllStructGetData($tMIEX, 4)
		Case 1 ; MONITORINFOF_PRIMARY
			$aRet[2] = 1
		Case Else
			$aRet[2] = 0
	EndSwitch
	Return $aRet
EndFunc   ;==>_WinAPI_GetMonitorInfo

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: BiatuAutMiahn, JPM
; ===============================================================================================================================
Func __WinAPI_MoveMemory($pDestination, $pSource, $iLength)
	If __WinAPI_IsBadReadPtr($pSource, $iLength) Then Return SetError(10, @extended, 0)
	If __WinAPI_IsBadWritePtr($pDestination, $iLength) Then Return SetError(11, @extended, 0)

	DllCall($gDll_hNTDll, 'none', 'RtlMoveMemory', 'struct*', $pDestination, 'struct*', $pSource, 'ulong_ptr', $iLength)
	If @error Then Return SetError(@error, @extended, 0)

	Return 1
EndFunc   ;==>_WinAPI_MoveMemory

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: BiatuAutMiahn, jpm
; ===============================================================================================================================
Func __WinAPI_IsBadReadPtr($pAddress, $iLength)
	Local $aCall = DllCall($gDll_hKernel32, 'bool', 'IsBadReadPtr', 'struct*', $pAddress, 'uint_ptr', $iLength)
	If @error Then Return SetError(@error, @extended, False)

	Return $aCall[0]
EndFunc   ;==>_WinAPI_IsBadReadPtr

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: BiatuAutMiahn, jpm
; ===============================================================================================================================
Func __WinAPI_IsBadWritePtr($pAddress, $iLength)
	Local $aCall = DllCall($gDll_hKernel32, 'bool', 'IsBadWritePtr', 'struct*', $pAddress, 'uint_ptr', $iLength)
	If @error Then Return SetError(@error, @extended, False)

	Return $aCall[0]
EndFunc   ;==>_WinAPI_IsBadWritePtr
