#pragma compile(AutoItExecuteAllowed, True)
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Res\ctdkgrrd.ico
#AutoIt3Wrapper_Outfile_x64=..\_.rc\ctOverlay.exe
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_Res_Description=Corsica Overlay
#AutoIt3Wrapper_Res_ProductName=
#AutoIt3Wrapper_Res_Fileversion=1.2408.1410.3431
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

#include "Includes\ResourcesEx.au3"
#include "Includes\_WinAPI_DPI.au3"
#include "Includes\ArrayNatSort.au3"
#include "Includes\_ClipPutHTML.au3"

Opt("TrayAutoPause", 0)
Opt("TrayIconHide", 1)
Opt("GUIOnEventMode",1)

Global Const $sAlias="ctOverlay"
Global Const $VERSION = "1.2408.1410.3431"
Global $sTitle=$sAlias&" v"&$VERSION


Global Const $MA_NOACTIVATE = 3
Global Const $MA_NOACTIVATEANDEAT = 4

Global $sDllUser32=DllOpen("User32.dll")
Global $g_dll_hShCore = DllOpen("Shcore.dll")
Global $g_sDataDir=@LocalAppDataDir&"\InfinitySys\ctOverlay"
Global $gsConfig=$g_sDataDir&"\ctOverlay.ini"
;Global $gidAuthSep, $gidAuthAdd, $gidClip, $gidClipSend, $gidClipSendMacro, $gidClipSendRaw, $gidMainSepA, $gidMainSepB, $gidCtxDismiss, $gidCtxExit, $gCtxMain, $gidAuth, $gidCtxClipOpenSN
;Global $gidClipWatchMenu
;Global $gaRes, $gaResLast, $gidClipMenu, $gidClipMenuSep, $sClipAct
;Global $gidCtxClipPing, $gidCtxClipResolve, $gidCtxClipRemote, $gidCtxClipMgmt, $gidCtxClipCmd, $gidCtxClipActions, $gidCtxClipFixFw, $gidCtxClipExplore, $gidCtxClipReg, $gidClipMenuPin, $gidClipMenuUnpin
Global $gCtxMain
Global $gidClipMenuPin, $gidClipSendMacro, $gidClipSendRaw, $gidCtxDismiss, $gidCtxExit, $aClipAct, $gidClipMenuUnpin, $gidCtxClipActions
Global $gidMainSepA, $gidMainSepB, $idClipMenuSep, $gidClipMenu, $gidClipSend, $gidClip, $gidClipMenuSep
Global $gidClipUrl
Global $gidClipTikToClip, $gidClipTikOpen
Global $sClipAct, $gsTooltip, $ghToolTip, $ghCtxMain
Global $aDisplays, $aMousePos[4], $aMon[4]; For monitor detection

Global $aPins[0][2]
Global $aMenu[0]
Local $iLeftLast,$iTopLast
; Init GDI
Global $hSelfLib, $hGraphics, $hBitmap, $hContext, $hHBitmap, $hBrushBl, $hBrushGr, $hBrushRd, $hBrushBk, $hIcon
Global $sAppDir=@LocalAppDataDir&"\InfinitySys\cwOverlay.log"
Global $sLog=$sAppDir&"\cwOverlay.log"

_WinAPI_SetProcessDpiAwarenessContext($DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2)
Global $iDpiScale=1.5
Global $iDpiNoScale=_WinAPI_GetDpiForPrimaryMonitor()/96
Global $iDpi=$iDpiNoScale*$iDpiScale

ConsoleWrite($iDpi&@CRLF)
Local $iSizeIco, $iMargin, $iWidth, $iHeight, $iRight, $iTop
_gfxRecalc()
Global $hGUI
$iLeft=@DesktopWidth-$iRight

getMonInfo()
_loadPins()
initUI()
While Sleep(1)
WEnd
_gfxDispose()
_GDIPlus_Shutdown()
GUIDelete($hGUI)


Func _Log($sLine)
    If Not FileExists($sAppDir) Then DirCreate($sAppDir)
    If FileGetSize($sLog)>1024*1024 Then FileDelete($sLog)
    FileWriteLine($sLog,$sLine)
EndFunc

Func _gfxRecalc()
    $iMargin=2*$iDpi
    $iSizeIco=16*$iDpi
    $iWidth=$iSizeIco+($iMargin*2)
    $iHeight=$iMargin+$iSizeIco+$iMargin
    $iRight=$iWidth
    $iTop=18*$iDpi
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
    $hBitmapIcon=_GDIPlus_ImageResize($hIcon,$iSizeIco*$iDpiNoScale,$iSizeIco*$iDpiNoScale)
    ;ConsoleWrite(TimerDiff($hTimerA)&@CRLF)
    $hBitmap=_GDIPlus_BitmapCreateFromGraphics($iWidth, $iHeight, $hGraphics)
    $hContextIcon=_GDIPlus_ImageGetGraphicsContext($hBitmapIcon)
    $hContext=_GDIPlus_ImageGetGraphicsContext($hBitmap)
	_GDIPlus_GraphicsSetSmoothingMode($hContext,$GDIP_SMOOTHINGMODE_HIGHQUALITY)
    _GDIPlus_GraphicsSetCompositingQuality($hContext,$GDIP_COMPOSITINGQUALITY_HIGHQUALITY)
    _GDIPlus_GraphicsSetInterpolationMode($hContext,$GDIP_INTERPOLATIONMODE_HIGHQUALITYBICUBIC)
	_GDIPlus_GraphicsSetSmoothingMode($hGraphics,$GDIP_SMOOTHINGMODE_HIGHQUALITY)
    _GDIPlus_GraphicsSetCompositingQuality($hGraphics,$GDIP_COMPOSITINGQUALITY_HIGHQUALITY)
    _GDIPlus_GraphicsSetInterpolationMode($hGraphics,$GDIP_INTERPOLATIONMODE_HIGHQUALITYBICUBIC)
    _GDIPlus_GraphicsFillEllipse($hContext, 0, 0, $iMargin+$iSizeIco+$iMargin, $iMargin+$iSizeIco+$iMargin, $hBrushBk);$hBrushRd)
	_GDIPlus_GraphicsFillRect($hContext, $iMargin+($iSizeIco/2), 0, $iWidth-$iMargin-($iSizeIco/2), $iMargin+$iSizeIco+$iMargin, $hBrushBk);$hBrushGr)
    $iIcoHeight=_GDIPlus_ImageGetHeight($hBitmapIcon)
 ;   _GDIPlus_GraphicsDrawRect($hContextIcon,0,0,$iIcoHeight-1,$iIcoHeight-1)
 ;   _GDIPlus_GraphicsDrawRect($hContext,0,0,$iWidth-1,$iHeight-1)
    _GDIPlus_GraphicsDrawImage($hContext, $hBitmapIcon, $iMargin, $iMargin);-($iMargin/4), $iMargin-($iMargin/4))
 ;   _GDIPlus_GraphicsFillEllipse($hContext, $iMargin, $iMargin, $iSizeIco, $iSizeIco, $hBrushRd);$hBrushBl)
    ;_GDIPlus_GraphicsDrawRect($hContext,$iMargin,$iMargin,$iWidth,$iHeight)
    ;ConsoleWrite((Mod($iIcoHeight,2)==0)&','&$iIcoHeight&','&$iDpiNoScale&','&$iMargin&','&$iSizeIco&@CRLF)
    Local $hHBitmap=_GDIPlus_BitmapCreateHBITMAPFromBitmap($hBitmap)
    _WinAPI_UpdateLayeredWindowEx($hGUI, -1, -1, $hHBitmap,0xBB)
    ;ConsoleWrite(TimerDiff($hTimer)&@CRLF)
EndFunc

Func _gfxReload()
    _gfxDispose()
    _gfxDraw()
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
    ;AdlibRegister("_watchDisplay",250)
    AdlibRegister('posTrack',64)
	GUISetState(@SW_SHOWNOACTIVATE, $hGUI)
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


Func _ctxClipMacro()
    $gaAutMacros=StringSplit("HOUR,MDAY,MIN,MON,MSEC,SEC,WDAY,YDAY,YEAR",',')
    Local $sClip=ClipGet()
    Local $iIdx=_ctxGetPinParIdx()
    If Not @error Then $sClip=$aPins[$iIdx][0]
    $sClip=StringReplace($sClip,@CRLF,"{enter}")
    $sClip=StringReplace($sClip,@TAB,"{tab}")
    ; Make interpreter? {~!(.*)}, comma delim.
    If StringRegExp($sClip,"\{@TIME\}") Then
        $sMeridiem='a'
        $iHour=@HOUR
        If $iHour>=12 Then
            $iHour-=12
            $sMeridiem="p"
        EndIf
        $iMin=@MIN
        $iRound=StringRegExp($sClip,"\{@TIME\}",1)
        If $iHour=0 Then $iHour=12
        $sTime=$iHour&$iMin&$sMeridiem
        $sClip=StringReplace($sClip,"{@TIME}",$sTime)
    EndIf
    For $i=1 To $gaAutMacros[0]
        If Not StringInStr($sClip,"{@"&$gaAutMacros[$i]&"}") Then ContinueLoop
        $sClip=StringReplace($sClip,"{@"&$gaAutMacros[$i]&"}",Execute('@'&$gaAutMacros[$i]))
    Next
    waitForIt()
    Send($sClip,0)
EndFunc

Func _ctxClipRaw()
    Local $sClip=ClipGet()
    Local $iIdx=_ctxGetPinParIdx()
    If Not @error Then $sClip=$aPins[$iIdx][0]
    $sClip=StringReplace($sClip,@CRLF,@CR)
    waitForIt()
    Send($sClip,1)
EndFunc

Func _ctxClipTikOpen()
    Local $sClip=StringStripWS(ClipGet(),3)
    If StringLeft($sClip,1)='#' Then $sClip=StringTrimLeft($sClip,1)
    ShellExecute(StringFormat("https://na.myconnectwise.net/v4_6_release/services/system_io/Service/fv_sr100_request.rails?service_recid=%s&companyName=corsica",$sClip))
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
    _ClearMenuEvt()
    _DeleteCxt()
    _InitMenu()
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
        _DeleteCxt()
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

Func _InitMenu()
    $gidClip = GUICtrlCreateMenu("Clip", $gCtxMain)
    _GUICtrlMenu_SetMenuStyle(GUICtrlGetHandle($gidClip),$MNS_NOCHECK);+$MNS_AUTODISMISS)
    $gidClipSend = GUICtrlCreateMenu("Send", $gidClip)
    _GUICtrlMenu_SetMenuStyle(GUICtrlGetHandle($gidClipSend),$MNS_NOCHECK);+$MNS_AUTODISMISS)
    $gidClipSendMacro = GUICtrlCreateMenuItem("/w Macros", $gidClipSend)
    $gidClipSendRaw = GUICtrlCreateMenuItem("Raw", $gidClipSend)
    GUICtrlCreateMenuItem("", $gidClip)
;~     $gidClipUrl = GUICtrlCreateMenu("AsUrl", $gidClip)
;~     GUICtrlCreateMenuItem("", $gidClip)
    $gidClipTik = GUICtrlCreateMenu("AsTicket", $gidClip)
    _GUICtrlMenu_SetMenuStyle(GUICtrlGetHandle($gidClipTik),$MNS_NOCHECK);+$MNS_AUTODISMISS)
    $gidClipTikOpen = GUICtrlCreateMenuItem("Open", $gidClipTik)
    $gidClipTikToClip = GUICtrlCreateMenuItem("Clip2Url", $gidClipTik)

    $gidMainSepA=GUICtrlCreateMenuItem("", $gCtxMain)
    ; Pins
    _ArrayNaturalSort($aPins)
    If UBound($aPins,1) Then
        For $z=0 To UBound($aPins,1)-1
            If $aPins[$z][0]=="" Then ContinueLoop
            Local $aTemp=_GenCtx($aPins[$z][0],$gCtxMain)
            $aPins[$z][1]=$aTemp
        Next
        $gidMainSepB=GUICtrlCreateMenuItem("", $gCtxMain)
    EndIf
    ; Footer
    $gidCtxDismiss = GUICtrlCreateMenuItem("Dismiss", $gCtxMain)
    $gidCtxExit = GUICtrlCreateMenuItem("Exit", $gCtxMain)
    _SetMenuEvt()
EndFunc

Func _GenCtx($sItem,$idMenu)
    Local $aRet[1]
    Local $sLow=StringLower($sItem)
    $aRet[0]=GUICtrlCreateMenu($sLow,$idMenu)
    _GUICtrlMenu_SetMenuStyle(GUICtrlGetHandle($aRet[0]),$MNS_NOCHECK);+$MNS_AUTODISMISS)
    Local $iLast
    ;GUICtrlCreateMenuItem("To Clip", $gidClipMenu)
    ;GUICtrlCreateMenu("Send", $gidClipMenu)
    $iMax=UBound($aRet,1)
    ReDim $aRet[$iMax+1]
    ;GUICtrlCreateMenuItem("", $aRet[0])
    $aRet[$iMax]=GUICtrlCreateMenuItem("UnPin", $aRet[0])
    Return $aRet
EndFunc

Func _SetMenuEvt()
    For $z=0 To UBound($aPins,1)-1
        $aTemp=$aPins[$z][1]
        GUICtrlSetOnEvent($aTemp[2],"_ctxClipPut")
        GUICtrlSetOnEvent($aTemp[4],"_ctxClipMacro")
        GUICtrlSetOnEvent($aTemp[5],"_ctxClipRaw")
        $iMax=UBound($aTemp,1)-1
        GUICtrlSetOnEvent($aTemp[$iMax],"_ctxClipUnpin")
    Next
    GUICtrlSetOnEvent($gidClipMenuPin,"_ctxClipPin")
    GUICtrlSetOnEvent($gidClipSendMacro,"_ctxClipMacro")
    GUICtrlSetOnEvent($gidClipSendRaw,"_ctxClipRaw")
    GUICtrlSetOnEvent($gidClipTikOpen,"_ctxClipTikOpen")
    GUICtrlSetOnEvent($gidClipTikToClip,"_ctxClipTikClip")

    GUICtrlSetOnEvent($gidCtxDismiss,"_ctxReload")
    GUICtrlSetOnEvent($gidCtxExit,"_ctxExit")
EndFunc

Func _ClearMenuEvt()
    For $i=1 To UBound($aClipAct,1)-1
        GUICtrlSetOnEvent($aClipAct[$i],"")
    Next
    For $z=0 To UBound($aPins,1)-1
        $aTemp=$aPins[$z][1]
        For $y=1 To UBound($aTemp,1)-1
            GUICtrlSetOnEvent($aTemp[$y],"")
        Next
    Next
    GUICtrlSetOnEvent($gidClipMenuPin,"")
    GUICtrlSetOnEvent($gidClipMenuUnpin,"")
    GUICtrlSetOnEvent($gidCtxClipActions,"")
    GUICtrlSetOnEvent($gidClipSendMacro,"")
    GUICtrlSetOnEvent($gidClipSendRaw,"")
    GUICtrlSetOnEvent($gidCtxDismiss,"")
    GUICtrlSetOnEvent($gidCtxExit,"")
EndFunc

Func _DeleteCxt()
    _ClearMenuEvt()
    GUICtrlDelete($gidCtxExit)
    GUICtrlDelete($gidCtxDismiss)
    GUICtrlDelete($gidMainSepA)
    ; Pins
    For $z=0 To UBound($aPins,1)-1
        Local $aTemp=$aPins[$z][1]
        For $y=UBound($aTemp,1)-1 To 0 Step -1
            GUICtrlDelete($aTemp[$y])
        Next
    Next
    GUICtrlDelete($gidMainSepB)
    GUICtrlDelete($gidClipSendRaw)
    GUICtrlDelete($gidClipSendMacro)
    GUICtrlDelete($gidClipMenuSep)
    For $i=1 To UBound($aClipAct,1)-1
        GUICtrlDelete($aClipAct[$i])
    Next
    GUICtrlDelete($gidClipMenu)
    GUICtrlDelete($gidClipSend)
    GUICtrlDelete($gidClip)
EndFunc

Func waitForIt()
    Local $bAbort=False
    Do
        _ToolTip("Click Left: Send, Right: Abort")
        Sleep(10)
        If _IsPressed("02", $sDllUser32) Then
            _ToolTip("")
            Sleep(250)
            Return False
        EndIf
    Until _IsPressed("01", $sDllUser32)
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
    getMonInfo()
    posTrack()
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
        $aDPIa = _WinAPI_GetDpiForMonitor($aDisplays[$i][0], 0);$MDT_DEFAULT)
        $aDPIb = _WinAPI_GetDpiForMonitor($aDisplays[$i][0], 1);$MDT_DEFAULT)
        $aDPIc = _WinAPI_GetDpiForMonitor($aDisplays[$i][0], 2);$MDT_DEFAULT)
        $aDPId = _WinAPI_GetDpiForMonitor($aDisplays[$i][0], 3);$MDT_DEFAULT)
        ConsoleWrite($i&'.A:'&$aDPIa[0]&','&$aDPIa[1]&@CRLF);$MDT_DEFAULT)&@CRLF)
        ConsoleWrite($i&'.B:'&$aDPIb[0]&','&$aDPIb[1]&@CRLF);$MDT_DEFAULT)&@CRLF)
        ConsoleWrite($i&'.C:'&$aDPIc[0]&','&$aDPIc[1]&@CRLF);$MDT_DEFAULT)&@CRLF)
        ConsoleWrite($i&'.D:'&$aDPId[0]&','&$aDPId[1]&@CRLF);$MDT_DEFAULT)&@CRLF)
        If IsArray($aDPI) Then
            $aDisplays[$i][15]=$aDPI[0]
            $aDisplays[$i][16]=$aDPI[1]
        EndIf
    Next
EndFunc

; Track mouse and update GUI position.
Func posTrack()
    Local $iTimer=TimerInit()
    Local $iMon=-1, $tPos = _WinAPI_GetMousePos()
    $aMousePos[0]=DllStructGetData($tPos,1)
    $aMousePos[2]=DllStructGetData($tPos,2)
    If $aMousePos[0]<>$aMousePos[1] Or $aMousePos[2]<>$aMousePos[3] Then
        $aMousePos[1]=$aMousePos[0]
        $aMousePos[3]=$aMousePos[2]
        Local $hMon=_WinAPI_MonitorFromPoint($tPos)
        If @error Then return
        For $i=1 To UBound($aDisplays,1)-1
            If $aDisplays[$i][0]==$hMon Then
                $iMon=$i
                $iDpiNoScale=$aDisplays[$i][15]/96
                $iDpi=$iDpiNoScale*$iDpiScale
                ;ConsoleWrite($iDpi&@CRLF)
                ExitLoop
            EndIf
        Next
        If $iMon=-1 Then Return SetError(1,0,False)
        $iRight=$iWidth
        $iTop=18*$iDpi
        $iLeft=$aDisplays[$iMon][1]+$aDisplays[$iMon][3]-$iRight
        $iTop=$aDisplays[$iMon][2]+$iTop
        If $iLeft<>$iLeftLast Or $iTop<>$iTopLast Then
            If _isWindowsLocked() Then Return
            $iLeftLast=$iLeft
            $iTopLast=$iTop
            ;GUISetState(@SW_HIDE, $hGUI)
            _gfxRecalc()
            _gfxReload()
            $aPos=WinGetPos($hGui)
            If $aPos[0]<>$iLeft Or $aPos[1]<>$iTop Then
                WinMove($hGui,"",$iLeft,$iTop)
                _Log($iLeft&'x'&$iTop)
                _WinAPI_SetProcessDpiAwarenessContext($DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2)
            EndIf
            GUISetState(@SW_SHOWNOACTIVATE, $hGui)
        EndIf
    EndIf
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
  $aRet = DllCall($g_dll_hShCore, "long", "GetDpiForMonitor", "long", $hMonitor, "int", $dpiType, "uint*", $X, "uint*", $Y)
  If @error Or Not IsArray($aRet) Then Return SetError(1, 0, 0)
  Local $aDPI[2] = [$aRet[3],$aRet[4]]
  Return $aDPI
EndFunc

Func _watchDisplay()
EndFunc

Func _ctxEvent()
    AdlibUnRegister("_ctxEvent")
    _DeleteCxt()
    ;_checkAuth()
    _InitMenu()
    ShowMenu($hGui, $gCtxMain, ($iSizeIco/2)-$iMargin, $iMargin+($iSizeIco/2))
    ;DllCall("user32.dll", "int", "TrackPopupMenuEx", "hwnd", $ghCtxMain, "int", 0, "int", $iLeft, "int", 0, "hwnd", $hGui, "ptr", 0)
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
