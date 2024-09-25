#pragma compile(AutoItExecuteAllowed, True)
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
Global Const $KLF_ACTIVATE = 0x00000001
Global Const $KLF_NOTELLSHELL = 0x00000080
Global Const $KLF_REORDER = 0x00000008
Global Const $KLF_REPLACELANG = 0x00000010
Global Const $KLF_RESET = 0x40000000
Global Const $KLF_SETFORPROCESS = 0x00000100
Global Const $KLF_SHIFTLOCK = 0x00010000
Global Const $KLF_SUBSTITUTE_OK = 0x00000002
Global Const $HKL_NEXT = 1
Global Const $HKL_PREV = 0
Global Const $AW_ACTIVATE = 0x00020000
Global Const $AW_BLEND = 0x00080000
Global Const $AW_CENTER = 0x00000010
Global Const $AW_HIDE = 0x00010000
Global Const $AW_HOR_NEGATIVE = 0x00000002
Global Const $AW_HOR_POSITIVE = 0x00000001
Global Const $AW_SLIDE = 0x00040000
Global Const $AW_VER_NEGATIVE = 0x00000008
Global Const $AW_VER_POSITIVE = 0x00000004
Global Const $BSF_ALLOWSFW = 0x0080
Global Const $BSF_FLUSHDISK = 0x0004
Global Const $BSF_FORCEIFHUNG = 0x0020
Global Const $BSF_IGNORECURRENTTASK = 0x0002
Global Const $BSF_NOHANG = 0x0008
Global Const $BSF_NOTIMEOUTIFNOTHUNG = 0x0040
Global Const $BSF_POSTMESSAGE = 0x0010
Global Const $BSF_QUERY = 0x0001
Global Const $BSF_SENDNOTIFYMESSAGE = 0x0100
Global Const $BSM_ALLCOMPONENTS = 0x00
Global Const $BSM_ALLDESKTOPS = 0x08
Global Const $BSM_APPLICATIONS = 0x10
Global Const $BSM_INSTALLABLEDRIVERS = 0x04
Global Const $BSM_NETDRIVER = 0x02
Global Const $BSM_VXDS = 0x01
Global Const $MDITILE_HORIZONTAL = 0x01
Global Const $MDITILE_SKIPDISABLED = 0x02
Global Const $MDITILE_VERTICAL = 0x00
Global Const $MDITILE_ZORDER = 0x04
Global Const $MSGFLT_ALLOW = 1
Global Const $MSGFLT_DISALLOW = 2
Global Const $MSGFLT_RESET = 0
Global Const $MSGFLTINFO_ALLOWED_HIGHER = 3
Global Const $MSGFLTINFO_ALREADYALLOWED_FORWND = 1
Global Const $MSGFLTINFO_ALREADYDISALLOWED_FORWND = 2
Global Const $MSGFLTINFO_NONE = 0
Global Const $CWP_ALL = 0x00
Global Const $CWP_SKIPINVISIBLE = 0x01
Global Const $CWP_SKIPDISABLED = 0x02
Global Const $CWP_SKIPTRANSPARENT = 0x04
Global Const $COMPRESSION_FORMAT_NONE = 0x0000
Global Const $COMPRESSION_FORMAT_DEFAULT = 0x0001
Global Const $COMPRESSION_FORMAT_LZNT1 = 0x0002
Global Const $COMPRESSION_FORMAT_XPRESS = 0x0003
Global Const $COMPRESSION_FORMAT_XPRESS_HUFF = 0x0004
Global Const $COMPRESSION_ENGINE_STANDARD = 0x0000
Global Const $COMPRESSION_ENGINE_MAXIMUM = 0x0100
Global Const $COMPRESSION_ENGINE_HIBER = 0x0200
Global Const $WINSTA_ACCESSCLIPBOARD = 0x0004
Global Const $WINSTA_ACCESSGLOBALATOMS = 0x0020
Global Const $WINSTA_CREATEDESKTOP = 0x0008
Global Const $WINSTA_ENUMDESKTOPS = 0x0001
Global Const $WINSTA_ENUMERATE = 0x0100
Global Const $WINSTA_EXITWINDOWS = 0x0040
Global Const $WINSTA_READATTRIBUTES = 0x0002
Global Const $WINSTA_READSCREEN = 0x0200
Global Const $WINSTA_WRITEATTRIBUTES = 0x0010
Global Const $WINSTA_ALL_ACCESS = BitOR($WINSTA_ACCESSCLIPBOARD, $WINSTA_ACCESSGLOBALATOMS, $WINSTA_CREATEDESKTOP, $WINSTA_ENUMDESKTOPS, $WINSTA_ENUMERATE, $WINSTA_EXITWINDOWS, $WINSTA_READATTRIBUTES, $WINSTA_READSCREEN, $WINSTA_WRITEATTRIBUTES)
Global Const $CWF_CREATE_ONLY = 0x01
Global Const $GCL_CBCLSEXTRA = -20
Global Const $GCL_CBWNDEXTRA = -18
Global Const $GCL_HBRBACKGROUND = -10
Global Const $GCL_HCURSOR = -12
Global Const $GCL_HICON = -14
Global Const $GCL_HICONSM = -34
Global Const $GCL_HMODULE = -16
Global Const $GCL_MENUNAME = -8
Global Const $GCL_STYLE = -26
Global Const $GCL_WNDPROC = -24
Global Const $DOCKINFO_DOCKED = 0x02
Global Const $DOCKINFO_UNDOCKED = 0x01
Global Const $DOCKINFO_USER_SUPPLIED = 0x04
Global Const $DOCKINFO_USER_DOCKED = 0x05
Global Const $DOCKINFO_USER_UNDOCKED = 0x06
Global Const $GUI_CARETBLINKING = 0x0001
Global Const $GUI_INMENUMODE = 0x0004
Global Const $GUI_INMOVESIZE = 0x0002
Global Const $GUI_POPUPMENUMODE = 0x0010
Global Const $GUI_SYSTEMMENUMODE = 0x0008
Global Const $HANDLE_FLAG_INHERIT = 0x00000001
Global Const $HANDLE_FLAG_PROTECT_FROM_CLOSE = 0x00000002
Global Const $GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS = 0x0004
Global Const $GET_MODULE_HANDLE_EX_FLAG_PIN = 0x0001
Global Const $GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT = 0x0002
Global Const $GET_MODULE_HANDLE_EX_FLAG_DEFAULT = 0x0000
Global Const $PROCESSOR_ARCHITECTURE_AMD64 = 9
Global Const $PROCESSOR_ARCHITECTURE_IA64 = 6
Global Const $PROCESSOR_ARCHITECTURE_INTEL = 0
Global Const $PROCESSOR_ARCHITECTURE_UNKNOWN = 0xFFFF
Global Const $PROCESSOR_INTEL_386 = 386
Global Const $PROCESSOR_INTEL_486 = 486
Global Const $PROCESSOR_INTEL_PENTIUM = 586
Global Const $PROCESSOR_INTEL_IA64 = 2200
Global Const $PROCESSOR_AMD_X8664 = 8664
Global Const $UOI_FLAGS = 1
Global Const $UOI_HEAPSIZE = 5
Global Const $UOI_IO = 6
Global Const $UOI_NAME = 2
Global Const $UOI_TYPE = 3
Global Const $UOI_USER_SID = 4
Global Const $DF_ALLOWOTHERACCOUNTHOOK = 0x01
Global Const $WSF_VISIBLE = 0x01
Global Const $VER_SUITE_BACKOFFICE = 0x00000004
Global Const $VER_SUITE_BLADE = 0x00000400
Global Const $VER_SUITE_COMPUTE_SERVER = 0x00004000
Global Const $VER_SUITE_DATACENTER = 0x00000080
Global Const $VER_SUITE_ENTERPRISE = 0x00000002
Global Const $VER_SUITE_EMBEDDEDNT = 0x00000040
Global Const $VER_SUITE_PERSONAL = 0x00000200
Global Const $VER_SUITE_SINGLEUSERTS = 0x00000100
Global Const $VER_SUITE_SMALLBUSINESS = 0x00000001
Global Const $VER_SUITE_SMALLBUSINESS_RESTRICTED = 0x00000020
Global Const $VER_SUITE_STORAGE_SERVER = 0x00002000
Global Const $VER_SUITE_TERMINAL = 0x00000010
Global Const $VER_SUITE_WH_SERVER = 0x00008000
Global Const $VER_NT_DOMAIN_CONTROLLER = 0x0000002
Global Const $VER_NT_SERVER = 0x0000003
Global Const $VER_NT_WORKSTATION = 0x0000001
Global Const $WDA_MONITOR = 0x01
Global Const $WDA_NONE = 0x00
Global Const $PF_3DNOW_INSTRUCTIONS_AVAILABLE = 7
Global Const $PF_CHANNELS_ENABLED = 16
Global Const $PF_COMPARE_EXCHANGE_DOUBLE = 2
Global Const $PF_COMPARE_EXCHANGE128 = 14
Global Const $PF_COMPARE64_EXCHANGE128 = 15
Global Const $PF_FLOATING_POINT_EMULATED = 1
Global Const $PF_FLOATING_POINT_PRECISION_ERRATA = 0
Global Const $PF_MMX_INSTRUCTIONS_AVAILABLE = 3
Global Const $PF_NX_ENABLED = 12
Global Const $PF_PAE_ENABLED = 9
Global Const $PF_RDTSC_INSTRUCTION_AVAILABLE = 8
Global Const $PF_SSE3_INSTRUCTIONS_AVAILABLE = 13
Global Const $PF_XMMI_INSTRUCTIONS_AVAILABLE = 6
Global Const $PF_XMMI64_INSTRUCTIONS_AVAILABLE = 10
Global Const $PF_XSAVE_ENABLED = 17
Global Const $KEYEVENTF_EXTENDEDKEY = 0x01
Global Const $KEYEVENTF_KEYUP = 0x02
Global Const $LIM_SMALL = 0
Global Const $LIM_LARGE = 1
Global Const $MAPVK_VK_TO_CHAR = 2
Global Const $MAPVK_VK_TO_VSC = 0
Global Const $MAPVK_VK_TO_VSC_EX = 4
Global Const $MAPVK_VSC_TO_VK = 1
Global Const $MAPVK_VSC_TO_VK_EX = 3
Global Const $MOD_ALT = 0x0001
Global Const $MOD_CONTROL = 0x0002
Global Const $MOD_NOREPEAT = 0x4000
Global Const $MOD_SHIFT = 0x0004
Global Const $MOD_WIN = 0x0008
Global Const $GUID_ACDC_POWER_SOURCE = '{5D3E9A59-E9D5-4B00-A6BD-FF34FF516548}'
Global Const $GUID_BATTERY_PERCENTAGE_REMAINING = '{A7AD8041-B45A-4CAE-87A3-EECBB468A9E1}'
Global Const $GUID_IDLE_BACKGROUND_TASK = '{515C31D8-F734-163D-A0FD-11A08C91E8F1}'
Global Const $GUID_MONITOR_POWER_ON = '{02731015-4510-4526-99E6-E5A17EBD1AEA}'
Global Const $GUID_POWERSCHEME_PERSONALITY = '{245D8541-3943-4422-B025-13A784F679B7}'
Global Const $GUID_SYSTEM_AWAYMODE = '{98A7F580-01F7-48AA-9C0F-44352C29E5C0}'
Global Const $GUID_MIN_POWER_SAVINGS = '{8C5E7FDA-E8BF-4A96-9A85-A6E23A8C635C}'
Global Const $GUID_MAX_POWER_SAVINGS = '{A1841308-3541-4FAB-BC81-F71556F20B4A}'
Global Const $GUID_TYPICAL_POWER_SAVINGS = '{381B4222-F694-41F0-9685-FF5BB260DF2E}'
Global Const $HSHELL_WINDOWCREATED = 1
Global Const $HSHELL_WINDOWDESTROYED = 2
Global Const $HSHELL_ACTIVATESHELLWINDOW = 3
Global Const $HSHELL_WINDOWACTIVATED = 4
Global Const $HSHELL_GETMINRECT = 5
Global Const $HSHELL_REDRAW = 6
Global Const $HSHELL_TASKMAN = 7
Global Const $HSHELL_LANGUAGE = 8
Global Const $HSHELL_SYSMENU = 9
Global Const $HSHELL_ENDTASK = 10
Global Const $HSHELL_ACCESSIBILITYSTATE = 11
Global Const $HSHELL_APPCOMMAND = 12
Global Const $HSHELL_WINDOWREPLACED = 13
Global Const $HSHELL_WINDOWREPLACING = 14
Global Const $HSHELL_RUDEAPPACTIVATED = 32772
Global Const $HSHELL_FLASH = 32774
Global Const $HWND_BROADCAST = 0xFFFF
Global Const $SMTO_BLOCK = 0x0001
Global Const $SMTO_NORMAL = 0x0000
Global Const $SMTO_ABORTIFHUNG = 0x0002
Global Const $SMTO_NOTIMEOUTIFNOTHUNG = 0x0008
Global Const $SMTO_ERRORONEXIT = 0x0020
Global Const $INPUTLANGCHANGE_BACKWARD = 0x0004
Global Const $INPUTLANGCHANGE_FORWARD = 0x0002
Global Const $INPUTLANGCHANGE_SYSCHARSET = 0x0001
Global Const $EVENT_MIN = 0x00000001
Global Const $EVENT_SYSTEM_SOUND = 0x00000001
Global Const $EVENT_SYSTEM_ALERT = 0x00000002
Global Const $EVENT_SYSTEM_FOREGROUND = 0x00000003
Global Const $EVENT_SYSTEM_MENUSTART = 0x00000004
Global Const $EVENT_SYSTEM_MENUEND = 0x00000005
Global Const $EVENT_SYSTEM_MENUPOPUPSTART = 0x00000006
Global Const $EVENT_SYSTEM_MENUPOPUPEND = 0x00000007
Global Const $EVENT_SYSTEM_CAPTURESTART = 0x00000008
Global Const $EVENT_SYSTEM_CAPTUREEND = 0x00000009
Global Const $EVENT_SYSTEM_MOVESIZESTART = 0x0000000A
Global Const $EVENT_SYSTEM_MOVESIZEEND = 0x0000000B
Global Const $EVENT_SYSTEM_CONTEXTHELPSTART = 0x0000000C
Global Const $EVENT_SYSTEM_CONTEXTHELPEND = 0x0000000D
Global Const $EVENT_SYSTEM_DRAGDROPSTART = 0x0000000E
Global Const $EVENT_SYSTEM_DRAGDROPEND = 0x0000000F
Global Const $EVENT_SYSTEM_DIALOGSTART = 0x00000010
Global Const $EVENT_SYSTEM_DIALOGEND = 0x00000011
Global Const $EVENT_SYSTEM_SCROLLINGSTART = 0x00000012
Global Const $EVENT_SYSTEM_SCROLLINGEND = 0x00000013
Global Const $EVENT_SYSTEM_SWITCHSTART = 0x00000014
Global Const $EVENT_SYSTEM_SWITCHEND = 0x00000015
Global Const $EVENT_SYSTEM_MINIMIZESTART = 0x00000016
Global Const $EVENT_SYSTEM_MINIMIZEEND = 0x00000017
Global Const $EVENT_SYSTEM_DESKTOPSWITCH = 0x00000020
Global Const $EVENT_OBJECT_CREATE = 0x00008000
Global Const $EVENT_OBJECT_DESTROY = 0x00008001
Global Const $EVENT_OBJECT_SHOW = 0x00008002
Global Const $EVENT_OBJECT_HIDE = 0x00008003
Global Const $EVENT_OBJECT_REORDER = 0x00008004
Global Const $EVENT_OBJECT_FOCUS = 0x00008005
Global Const $EVENT_OBJECT_SELECTION = 0x00008006
Global Const $EVENT_OBJECT_SELECTIONADD = 0x00008007
Global Const $EVENT_OBJECT_SELECTIONREMOVE = 0x00008008
Global Const $EVENT_OBJECT_SELECTIONWITHIN = 0x00008009
Global Const $EVENT_OBJECT_STATECHANGE = 0x0000800A
Global Const $EVENT_OBJECT_LOCATIONCHANGE = 0x0000800B
Global Const $EVENT_OBJECT_NAMECHANGE = 0x0000800C
Global Const $EVENT_OBJECT_DESCRIPTIONCHANGE = 0x0000800D
Global Const $EVENT_OBJECT_VALUECHANGE = 0x0000800E
Global Const $EVENT_OBJECT_PARENTCHANGE = 0x0000800F
Global Const $EVENT_OBJECT_HELPCHANGE = 0x00008010
Global Const $EVENT_OBJECT_DEFACTIONCHANGE = 0x00008011
Global Const $EVENT_OBJECT_ACCELERATORCHANGE = 0x00008012
Global Const $EVENT_OBJECT_INVOKED = 0x00008013
Global Const $EVENT_OBJECT_TEXTSELECTIONCHANGED = 0x00008014
Global Const $EVENT_OBJECT_CONTENTSCROLLED = 0x00008015
Global Const $EVENT_MAX = 0x7FFFFFFF
Global Const $WINEVENT_INCONTEXT = 0x04
Global Const $WINEVENT_OUTOFCONTEXT = 0x00
Global Const $WINEVENT_SKIPOWNPROCESS = 0x02
Global Const $WINEVENT_SKIPOWNTHREAD = 0x01
Global Const $TME_CANCEL = 0x80000000
Global Const $TME_HOVER = 0x00000001
Global Const $TME_LEAVE = 0x00000002
Global Const $TME_NONCLIENT = 0x00000010
Global Const $TME_QUERY = 0x40000000
Global Const $DESKTOP_CREATEMENU = 0x0004
Global Const $DESKTOP_CREATEWINDOW = 0x0002
Global Const $DESKTOP_ENUMERATE = 0x0040
Global Const $DESKTOP_HOOKCONTROL = 0x0008
Global Const $DESKTOP_JOURNALPLAYBACK = 0x0020
Global Const $DESKTOP_JOURNALRECORD = 0x0010
Global Const $DESKTOP_READOBJECTS = 0x0001
Global Const $DESKTOP_SWITCHDESKTOP = 0x0100
Global Const $DESKTOP_WRITEOBJECTS = 0x0080
Global Const $DESKTOP_ALL_ACCESS = BitOR($DESKTOP_CREATEMENU, $DESKTOP_CREATEWINDOW, $DESKTOP_ENUMERATE, $DESKTOP_HOOKCONTROL, $DESKTOP_JOURNALPLAYBACK, $DESKTOP_JOURNALRECORD, $DESKTOP_READOBJECTS, $DESKTOP_SWITCHDESKTOP, $DESKTOP_WRITEOBJECTS)
Global Const $RIDEV_APPKEYS = 0x00000400
Global Const $RIDEV_CAPTUREMOUSE = 0x00000200
Global Const $RIDEV_DEVNOTIFY = 0x00002000
Global Const $RIDEV_EXCLUDE = 0x00000010
Global Const $RIDEV_EXINPUTSINK = 0x00001000
Global Const $RIDEV_INPUTSINK = 0x00000100
Global Const $RIDEV_NOHOTKEYS = 0x00000200
Global Const $RIDEV_NOLEGACY = 0x00000030
Global Const $RIDEV_PAGEONLY = 0x00000020
Global Const $RIDEV_REMOVE = 0x00000001
Global Const $RID_HEADER = 0x10000005
Global Const $RID_INPUT = 0x10000003
Global Const $RIM_TYPEHID = 2
Global Const $RIM_TYPEKEYBOARD = 1
Global Const $RIM_TYPEMOUSE = 0
Global Const $RIDI_DEVICENAME = 0x20000007
Global Const $RIDI_DEVICEINFO = 0x2000000B
Global Const $RIDI_PREPARSEDDATA = 0x20000005
Global Const $MOUSE_ATTRIBUTES_CHANGED = 0x04
Global Const $MOUSE_MOVE_ABSOLUTE = 0x01
Global Const $MOUSE_MOVE_RELATIVE = 0x00
Global Const $MOUSE_VIRTUAL_DESKTOP = 0x02
Global Const $RI_MOUSE_LEFT_BUTTON_DOWN = 0x0001
Global Const $RI_MOUSE_LEFT_BUTTON_UP = 0x0002
Global Const $RI_MOUSE_MIDDLE_BUTTON_DOWN = 0x0010
Global Const $RI_MOUSE_MIDDLE_BUTTON_UP = 0x0020
Global Const $RI_MOUSE_RIGHT_BUTTON_DOWN = 0x0004
Global Const $RI_MOUSE_RIGHT_BUTTON_UP = 0x0008
Global Const $RI_MOUSE_BUTTON_1_DOWN = $RI_MOUSE_LEFT_BUTTON_DOWN
Global Const $RI_MOUSE_BUTTON_1_UP = $RI_MOUSE_LEFT_BUTTON_UP
Global Const $RI_MOUSE_BUTTON_2_DOWN = $RI_MOUSE_RIGHT_BUTTON_DOWN
Global Const $RI_MOUSE_BUTTON_2_UP = $RI_MOUSE_RIGHT_BUTTON_UP
Global Const $RI_MOUSE_BUTTON_3_DOWN = $RI_MOUSE_MIDDLE_BUTTON_DOWN
Global Const $RI_MOUSE_BUTTON_3_UP = $RI_MOUSE_MIDDLE_BUTTON_UP
Global Const $RI_MOUSE_BUTTON_4_DOWN = 0x0040
Global Const $RI_MOUSE_BUTTON_4_UP = 0x0080
Global Const $RI_MOUSE_BUTTON_5_DOWN = 0x0100
Global Const $RI_MOUSE_BUTTON_5_UP = 0x0200
Global Const $RI_MOUSE_WHEEL = 0x0400
Global Const $RI_KEY_BREAK = 1
Global Const $RI_KEY_E0 = 2
Global Const $RI_KEY_E1 = 4
Global Const $RI_KEY_MAKE = 0
Global Const $STR_NOCASESENSE = 0
Global Const $STR_CASESENSE = 1
Global Const $STR_NOCASESENSEBASIC = 2
Global Const $STR_STRIPLEADING = 1
Global Const $STR_STRIPTRAILING = 2
Global Const $STR_STRIPSPACES = 4
Global Const $STR_STRIPALL = 8
Global Const $STR_CHRSPLIT = 0
Global Const $STR_ENTIRESPLIT = 1
Global Const $STR_NOCOUNT = 2
Global Const $STR_REGEXPMATCH = 0
Global Const $STR_REGEXPARRAYMATCH = 1
Global Const $STR_REGEXPARRAYFULLMATCH = 2
Global Const $STR_REGEXPARRAYGLOBALMATCH = 3
Global Const $STR_REGEXPARRAYGLOBALFULLMATCH = 4
Global Const $STR_ENDISSTART = 0
Global Const $STR_ENDNOTSTART = 1
Global Const $SB_ANSI = 1
Global Const $SB_UTF16LE = 2
Global Const $SB_UTF16BE = 3
Global Const $SB_UTF8 = 4
Global Const $SE_UTF16 = 0
Global Const $SE_ANSI = 1
Global Const $SE_UTF8 = 2
Global Const $STR_UTF16 = 0
Global Const $STR_UCS2 = 1
Global Const $tagPOINT = "struct;long X;long Y;endstruct"
Global Const $tagRECT = "struct;long Left;long Top;long Right;long Bottom;endstruct"
Global Const $tagSIZE = "struct;long X;long Y;endstruct"
Global Const $tagMARGINS = "int cxLeftWidth;int cxRightWidth;int cyTopHeight;int cyBottomHeight"
Global Const $tagFILETIME = "struct;dword Lo;dword Hi;endstruct"
Global Const $tagSYSTEMTIME = "struct;word Year;word Month;word Dow;word Day;word Hour;word Minute;word Second;word MSeconds;endstruct"
Global Const $tagTIME_ZONE_INFORMATION = "struct;long Bias;wchar StdName[32];word StdDate[8];long StdBias;wchar DayName[32];word DayDate[8];long DayBias;endstruct"
Global Const $tagNMHDR = "struct;hwnd hWndFrom;uint_ptr IDFrom;INT Code;endstruct"
Global Const $tagCOMBOBOXEXITEM = "uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;int SelectedImage;int OverlayImage;" &  "int Indent;lparam Param"
Global Const $tagNMCBEDRAGBEGIN = $tagNMHDR & ";int ItemID;wchar szText[260]"
Global Const $tagNMCBEENDEDIT = $tagNMHDR & ";bool fChanged;int NewSelection;wchar szText[260];int Why"
Global Const $tagNMCOMBOBOXEX = $tagNMHDR & ";uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;" &  "int SelectedImage;int OverlayImage;int Indent;lparam Param"
Global Const $tagDTPRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;" &  "word MinSecond;word MinMSecond;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;" &  "word MaxMinute;word MaxSecond;word MaxMSecond;bool MinValid;bool MaxValid"
Global Const $tagNMDATETIMECHANGE = $tagNMHDR & ";dword Flag;" & $tagSYSTEMTIME
Global Const $tagNMDATETIMEFORMAT = $tagNMHDR & ";ptr Format;" & $tagSYSTEMTIME & ";ptr pDisplay;wchar Display[64]"
Global Const $tagNMDATETIMEFORMATQUERY = $tagNMHDR & ";ptr Format;struct;long SizeX;long SizeY;endstruct"
Global Const $tagNMDATETIMEKEYDOWN = $tagNMHDR & ";int VirtKey;ptr Format;" & $tagSYSTEMTIME
Global Const $tagNMDATETIMESTRING = $tagNMHDR & ";ptr UserString;" & $tagSYSTEMTIME & ";dword Flags"
Global Const $tagEVENTLOGRECORD = "dword Length;dword Reserved;dword RecordNumber;dword TimeGenerated;dword TimeWritten;dword EventID;" &  "word EventType;word NumStrings;word EventCategory;word ReservedFlags;dword ClosingRecordNumber;dword StringOffset;" &  "dword UserSidLength;dword UserSidOffset;dword DataLength;dword DataOffset"
Global Const $tagGDIP_EFFECTPARAMS_Blur = "float Radius; bool ExpandEdge"
Global Const $tagGDIP_EFFECTPARAMS_BrightnessContrast = "int BrightnessLevel; int ContrastLevel"
Global Const $tagGDIP_EFFECTPARAMS_ColorBalance = "int CyanRed; int MagentaGreen; int YellowBlue"
Global Const $tagGDIP_EFFECTPARAMS_ColorCurve = "int Adjustment; int Channel; int AdjustValue"
Global Const $tagGDIP_EFFECTPARAMS_ColorLUT = "byte LutB[256]; byte LutG[256]; byte LutR[256]; byte LutA[256]"
Global Const $tagGDIP_EFFECTPARAMS_HueSaturationLightness = "int HueLevel; int SaturationLevel; int LightnessLevel"
Global Const $tagGDIP_EFFECTPARAMS_Levels = "int Highlight; int Midtone; int Shadow"
Global Const $tagGDIP_EFFECTPARAMS_RedEyeCorrection = "uint NumberOfAreas; ptr Areas"
Global Const $tagGDIP_EFFECTPARAMS_Sharpen = "float Radius; float Amount"
Global Const $tagGDIP_EFFECTPARAMS_Tint = "int Hue; int Amount"
Global Const $tagGDIPBITMAPDATA = "uint Width;uint Height;int Stride;int Format;ptr Scan0;uint_ptr Reserved"
Global Const $tagGDIPCOLORMATRIX = "float m[25]"
Global Const $tagGDIPENCODERPARAM = "struct;byte GUID[16];ulong NumberOfValues;ulong Type;ptr Values;endstruct"
Global Const $tagGDIPENCODERPARAMS = "uint Count;" & $tagGDIPENCODERPARAM
Global Const $tagGDIPRECTF = "struct;float X;float Y;float Width;float Height;endstruct"
Global Const $tagGDIPSTARTUPINPUT = "uint Version;ptr Callback;bool NoThread;bool NoCodecs"
Global Const $tagGDIPSTARTUPOUTPUT = "ptr HookProc;ptr UnhookProc"
Global Const $tagGDIPIMAGECODECINFO = "byte CLSID[16];byte FormatID[16];ptr CodecName;ptr DllName;ptr FormatDesc;ptr FileExt;" &  "ptr MimeType;dword Flags;dword Version;dword SigCount;dword SigSize;ptr SigPattern;ptr SigMask"
Global Const $tagGDIPPENCODERPARAMS = "uint Count;byte Params[1]"
Global Const $tagHDITEM = "uint Mask;int XY;ptr Text;handle hBMP;int TextMax;int Fmt;lparam Param;int Image;int Order;uint Type;ptr pFilter;uint State"
Global Const $tagNMHDDISPINFO = $tagNMHDR & ";int Item;uint Mask;ptr Text;int TextMax;int Image;lparam lParam"
Global Const $tagNMHDFILTERBTNCLICK = $tagNMHDR & ";int Item;" & $tagRECT
Global Const $tagNMHEADER = $tagNMHDR & ";int Item;int Button;ptr pItem"
Global Const $tagGETIPAddress = "byte Field4;byte Field3;byte Field2;byte Field1"
Global Const $tagNMIPADDRESS = $tagNMHDR & ";int Field;int Value"
Global Const $tagLVFINDINFO = "struct;uint Flags;ptr Text;lparam Param;" & $tagPOINT & ";uint Direction;endstruct"
Global Const $tagLVHITTESTINFO = $tagPOINT & ";uint Flags;int Item;int SubItem;int iGroup"
Global Const $tagLVITEM = "struct;uint Mask;int Item;int SubItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;lparam Param;" &  "int Indent;int GroupID;uint Columns;ptr pColumns;ptr piColFmt;int iGroup;endstruct"
Global Const $tagNMLISTVIEW = $tagNMHDR & ";int Item;int SubItem;uint NewState;uint OldState;uint Changed;" &  "struct;long ActionX;long ActionY;endstruct;lparam Param"
Global Const $tagNMLVCUSTOMDRAW = "struct;" & $tagNMHDR & ";dword dwDrawStage;handle hdc;" & $tagRECT &  ";dword_ptr dwItemSpec;uint uItemState;lparam lItemlParam;endstruct" &  ";dword clrText;dword clrTextBk;int iSubItem;dword dwItemType;dword clrFace;int iIconEffect;" &  "int iIconPhase;int iPartID;int iStateID;struct;long TextLeft;long TextTop;long TextRight;long TextBottom;endstruct;uint uAlign"
Global Const $tagNMLVDISPINFO = $tagNMHDR & ";" & $tagLVITEM
Global Const $tagNMLVFINDITEM = $tagNMHDR & ";int Start;" & $tagLVFINDINFO
Global Const $tagNMLVGETINFOTIP = $tagNMHDR & ";dword Flags;ptr Text;int TextMax;int Item;int SubItem;lparam lParam"
Global Const $tagNMITEMACTIVATE = $tagNMHDR & ";int Index;int SubItem;uint NewState;uint OldState;uint Changed;" &  $tagPOINT & ";lparam lParam;uint KeyFlags"
Global Const $tagNMLVKEYDOWN = $tagNMHDR & ";align 2;word VKey;uint Flags"
Global Const $tagNMLVSCROLL = $tagNMHDR & ";int DX;int DY"
Global Const $tagMCHITTESTINFO = "uint Size;" & $tagPOINT & ";uint Hit;" & $tagSYSTEMTIME &  ";" & $tagRECT & ";int iOffset;int iRow;int iCol"
Global Const $tagMCMONTHRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" &  "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" &  "word MaxMSeconds;short Span"
Global Const $tagMCRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" &  "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" &  "word MaxMSeconds;short MinSet;short MaxSet"
Global Const $tagMCSELRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" &  "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" &  "word MaxMSeconds"
Global Const $tagNMDAYSTATE = $tagNMHDR & ";" & $tagSYSTEMTIME & ";int DayState;ptr pDayState"
Global Const $tagNMSELCHANGE = $tagNMHDR &  ";struct;word BegYear;word BegMonth;word BegDOW;word BegDay;word BegHour;word BegMinute;word BegSecond;word BegMSeconds;endstruct;" &  "struct;word EndYear;word EndMonth;word EndDOW;word EndDay;word EndHour;word EndMinute;word EndSecond;word EndMSeconds;endstruct"
Global Const $tagNMOBJECTNOTIFY = $tagNMHDR & ";int Item;ptr piid;ptr pObject;long Result;dword dwFlags"
Global Const $tagNMTCKEYDOWN = $tagNMHDR & ";align 2;word VKey;uint Flags"
Global Const $tagTVITEM = "struct;uint Mask;handle hItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;int SelectedImage;" &  "int Children;lparam Param;endstruct"
Global Const $tagTVITEMEX = "struct;" & $tagTVITEM & ";int Integral;uint uStateEx;hwnd hwnd;int iExpandedImage;int iReserved;endstruct"
Global Const $tagNMTREEVIEW = $tagNMHDR & ";uint Action;" &  "struct;uint OldMask;handle OldhItem;uint OldState;uint OldStateMask;" &  "ptr OldText;int OldTextMax;int OldImage;int OldSelectedImage;int OldChildren;lparam OldParam;endstruct;" &  "struct;uint NewMask;handle NewhItem;uint NewState;uint NewStateMask;" &  "ptr NewText;int NewTextMax;int NewImage;int NewSelectedImage;int NewChildren;lparam NewParam;endstruct;" &  "struct;long PointX;long PointY;endstruct"
Global Const $tagNMTVCUSTOMDRAW = "struct;" & $tagNMHDR & ";dword DrawStage;handle HDC;" & $tagRECT &  ";dword_ptr ItemSpec;uint ItemState;lparam ItemParam;endstruct" &  ";dword ClrText;dword ClrTextBk;int Level"
Global Const $tagNMTVDISPINFO = $tagNMHDR & ";" & $tagTVITEM
Global Const $tagNMTVGETINFOTIP = $tagNMHDR & ";ptr Text;int TextMax;handle hItem;lparam lParam"
Global Const $tagNMTVITEMCHANGE = $tagNMHDR & ";uint Changed;handle hItem;uint StateNew;uint StateOld;lparam lParam;"
Global Const $tagTVHITTESTINFO = $tagPOINT & ";uint Flags;handle Item"
Global Const $tagNMTVKEYDOWN = $tagNMHDR & ";align 2;word VKey;uint Flags"
Global Const $tagNMMOUSE = $tagNMHDR & ";dword_ptr ItemSpec;dword_ptr ItemData;" & $tagPOINT & ";lparam HitInfo"
Global Const $tagTOKEN_PRIVILEGES = "dword Count;align 4;int64 LUID;dword Attributes"
Global Const $tagIMAGEINFO = "handle hBitmap;handle hMask;int Unused1;int Unused2;" & $tagRECT
Global Const $tagMENUINFO = "dword Size;INT Mask;dword Style;uint YMax;handle hBack;dword ContextHelpID;ulong_ptr MenuData"
Global Const $tagMENUITEMINFO = "uint Size;uint Mask;uint Type;uint State;uint ID;handle SubMenu;handle BmpChecked;handle BmpUnchecked;" &  "ulong_ptr ItemData;ptr TypeData;uint CCH;handle BmpItem"
Global Const $tagREBARBANDINFO = "uint cbSize;uint fMask;uint fStyle;dword clrFore;dword clrBack;ptr lpText;uint cch;" &  "int iImage;hwnd hwndChild;uint cxMinChild;uint cyMinChild;uint cx;handle hbmBack;uint wID;uint cyChild;uint cyMaxChild;" &  "uint cyIntegral;uint cxIdeal;lparam lParam;uint cxHeader" & ((@OSVersion = "WIN_XP") ? "" : ";" & $tagRECT & ";uint uChevronState")
Global Const $tagNMREBARAUTOBREAK = $tagNMHDR & ";uint uBand;uint wID;lparam lParam;uint uMsg;uint fStyleCurrent;bool fAutoBreak"
Global Const $tagNMRBAUTOSIZE = $tagNMHDR & ";bool fChanged;" &  "struct;long TargetLeft;long TargetTop;long TargetRight;long TargetBottom;endstruct;" &  "struct;long ActualLeft;long ActualTop;long ActualRight;long ActualBottom;endstruct"
Global Const $tagNMREBAR = $tagNMHDR & ";dword dwMask;uint uBand;uint fStyle;uint wID;lparam lParam"
Global Const $tagNMREBARCHEVRON = $tagNMHDR & ";uint uBand;uint wID;lparam lParam;" & $tagRECT & ";lparam lParamNM"
Global Const $tagNMREBARCHILDSIZE = $tagNMHDR & ";uint uBand;uint wID;" &  "struct;long CLeft;long CTop;long CRight;long CBottom;endstruct;" &  "struct;long BLeft;long BTop;long BRight;long BBottom;endstruct"
Global Const $tagCOLORSCHEME = "dword Size;dword BtnHighlight;dword BtnShadow"
Global Const $tagNMTOOLBAR = $tagNMHDR & ";int iItem;" &  "struct;int iBitmap;int idCommand;byte fsState;byte fsStyle;dword_ptr dwData;int_ptr iString;endstruct" &  ";int cchText;ptr pszText;" & $tagRECT
Global Const $tagNMTBHOTITEM = $tagNMHDR & ";int idOld;int idNew;dword dwFlags"
Global Const $tagTBBUTTON = "int Bitmap;int Command;byte State;byte Style;dword_ptr Param;int_ptr String"
Global Const $tagTBBUTTONINFO = "uint Size;dword Mask;int Command;int Image;byte State;byte Style;word CX;dword_ptr Param;ptr Text;int TextMax"
Global Const $tagNETRESOURCE = "dword Scope;dword Type;dword DisplayType;dword Usage;ptr LocalName;ptr RemoteName;ptr Comment;ptr Provider"
Global Const $tagOVERLAPPED = "ulong_ptr Internal;ulong_ptr InternalHigh;struct;dword Offset;dword OffsetHigh;endstruct;handle hEvent"
Global Const $tagOPENFILENAME = "dword StructSize;hwnd hwndOwner;handle hInstance;ptr lpstrFilter;ptr lpstrCustomFilter;" &  "dword nMaxCustFilter;dword nFilterIndex;ptr lpstrFile;dword nMaxFile;ptr lpstrFileTitle;dword nMaxFileTitle;" &  "ptr lpstrInitialDir;ptr lpstrTitle;dword Flags;word nFileOffset;word nFileExtension;ptr lpstrDefExt;lparam lCustData;" &  "ptr lpfnHook;ptr lpTemplateName;ptr pvReserved;dword dwReserved;dword FlagsEx"
Global Const $tagBITMAPINFOHEADER = "struct;dword biSize;long biWidth;long biHeight;word biPlanes;word biBitCount;" &  "dword biCompression;dword biSizeImage;long biXPelsPerMeter;long biYPelsPerMeter;dword biClrUsed;dword biClrImportant;endstruct"
Global Const $tagBITMAPINFO = $tagBITMAPINFOHEADER & ";dword biRGBQuad[1]"
Global Const $tagBLENDFUNCTION = "byte Op;byte Flags;byte Alpha;byte Format"
Global Const $tagGUID = "struct;ulong Data1;ushort Data2;ushort Data3;byte Data4[8];endstruct"
Global Const $tagWINDOWPLACEMENT = "uint length;uint flags;uint showCmd;long ptMinPosition[2];long ptMaxPosition[2];long rcNormalPosition[4]"
Global Const $tagWINDOWPOS = "hwnd hWnd;hwnd InsertAfter;int X;int Y;int CX;int CY;uint Flags"
Global Const $tagSCROLLINFO = "uint cbSize;uint fMask;int nMin;int nMax;uint nPage;int nPos;int nTrackPos"
Global Const $tagSCROLLBARINFO = "dword cbSize;" & $tagRECT & ";int dxyLineButton;int xyThumbTop;" &  "int xyThumbBottom;int reserved;dword rgstate[6]"
Global Const $tagLOGFONT = "struct;long Height;long Width;long Escapement;long Orientation;long Weight;byte Italic;byte Underline;" &  "byte Strikeout;byte CharSet;byte OutPrecision;byte ClipPrecision;byte Quality;byte PitchAndFamily;wchar FaceName[32];endstruct"
Global Const $tagKBDLLHOOKSTRUCT = "dword vkCode;dword scanCode;dword flags;dword time;ulong_ptr dwExtraInfo"
Global Const $tagPROCESS_INFORMATION = "handle hProcess;handle hThread;dword ProcessID;dword ThreadID"
Global Const $tagSTARTUPINFO = "dword Size;ptr Reserved1;ptr Desktop;ptr Title;dword X;dword Y;dword XSize;dword YSize;dword XCountChars;" &  "dword YCountChars;dword FillAttribute;dword Flags;word ShowWindow;word Reserved2;ptr Reserved3;handle StdInput;" &  "handle StdOutput;handle StdError"
Global Const $tagSECURITY_ATTRIBUTES = "dword Length;ptr Descriptor;bool InheritHandle"
Global Const $tagWIN32_FIND_DATA = "dword dwFileAttributes;dword ftCreationTime[2];dword ftLastAccessTime[2];dword ftLastWriteTime[2];dword nFileSizeHigh;dword nFileSizeLow;dword dwReserved0;dword dwReserved1;wchar cFileName[260];wchar cAlternateFileName[14]"
Global Const $tagTEXTMETRIC = "long tmHeight;long tmAscent;long tmDescent;long tmInternalLeading;long tmExternalLeading;" &  "long tmAveCharWidth;long tmMaxCharWidth;long tmWeight;long tmOverhang;long tmDigitizedAspectX;long tmDigitizedAspectY;" &  "wchar tmFirstChar;wchar tmLastChar;wchar tmDefaultChar;wchar tmBreakChar;byte tmItalic;byte tmUnderlined;byte tmStruckOut;" &  "byte tmPitchAndFamily;byte tmCharSet"
Global Const $OPT_COORDSRELATIVE = 0
Global Const $OPT_COORDSABSOLUTE = 1
Global Const $OPT_COORDSCLIENT = 2
Global Const $OPT_ERRORSILENT = 0
Global Const $OPT_ERRORFATAL = 1
Global Const $OPT_CAPSNOSTORE = 0
Global Const $OPT_CAPSSTORE = 1
Global Const $OPT_MATCHSTART = 1
Global Const $OPT_MATCHANY = 2
Global Const $OPT_MATCHEXACT = 3
Global Const $OPT_MATCHADVANCED = 4
Global Const $CCS_TOP = 0x01
Global Const $CCS_NOMOVEY = 0x02
Global Const $CCS_BOTTOM = 0x03
Global Const $CCS_NORESIZE = 0x04
Global Const $CCS_NOPARENTALIGN = 0x08
Global Const $CCS_NOHILITE = 0x10
Global Const $CCS_ADJUSTABLE = 0x20
Global Const $CCS_NODIVIDER = 0x40
Global Const $CCS_VERT = 0x0080
Global Const $CCS_LEFT = 0x0081
Global Const $CCS_NOMOVEX = 0x0082
Global Const $CCS_RIGHT = 0x0083
Global Const $DT_DRIVETYPE = 1
Global Const $DT_SSDSTATUS = 2
Global Const $DT_BUSTYPE = 3
Global Const $PROXY_IE = 0
Global Const $PROXY_NONE = 1
Global Const $PROXY_SPECIFIED = 2
Global Const $OBJID_WINDOW = 0x00000000
Global Const $OBJID_TITLEBAR = 0xFFFFFFFE
Global Const $OBJID_SIZEGRIP = 0xFFFFFFF9
Global Const $OBJID_CARET = 0xFFFFFFF8
Global Const $OBJID_CURSOR = 0xFFFFFFF7
Global Const $OBJID_ALERT = 0xFFFFFFF6
Global Const $OBJID_SOUND = 0xFFFFFFF5
Global Const $DLG_CENTERONTOP = 0
Global Const $DLG_NOTITLE = 1
Global Const $DLG_NOTONTOP = 2
Global Const $DLG_TEXTLEFT = 4
Global Const $DLG_TEXTRIGHT = 8
Global Const $DLG_MOVEABLE = 16
Global Const $DLG_TEXTVCENTER = 32
Global Const $MCID_UNKNOWN = -1
Global Const $MCID_HAND = 0
Global Const $MCID_APPSTARTING = 1
Global Const $MCID_ARROW = 2
Global Const $MCID_CROSS = 3
Global Const $MCID_HELP = 4
Global Const $MCID_IBEAM = 5
Global Const $MCID_ICON = 6
Global Const $MCID_NO = 7
Global Const $MCID_SIZE = 8
Global Const $MCID_SIZEALL = 9
Global Const $MCID_SIZENESW = 10
Global Const $MCID_SIZENS = 11
Global Const $MCID_SIZENWSE = 12
Global Const $MCID_SIZEWE = 13
Global Const $MCID_UPARROW = 14
Global Const $MCID_WAIT = 15
Global Const $MCID_NONE = 16
Global Const $SD_LOGOFF = 0
Global Const $SD_SHUTDOWN = 1
Global Const $SD_REBOOT = 2
Global Const $SD_FORCE = 4
Global Const $SD_POWERDOWN = 8
Global Const $SD_FORCEHUNG = 16
Global Const $SD_STANDBY = 32
Global Const $SD_HIBERNATE = 64
Global Const $STDIN_CHILD = 1
Global Const $STDOUT_CHILD = 2
Global Const $STDERR_CHILD = 4
Global Const $STDERR_MERGED = 8
Global Const $STDIO_INHERIT_PARENT = 0x10
Global Const $RUN_CREATE_NEW_CONSOLE = 0x00010000
Global Const $UBOUND_DIMENSIONS = 0
Global Const $UBOUND_ROWS = 1
Global Const $UBOUND_COLUMNS = 2
Global Const $MOUSEEVENTF_ABSOLUTE = 0x8000
Global Const $MOUSEEVENTF_MOVE = 0x0001
Global Const $MOUSEEVENTF_LEFTDOWN = 0x0002
Global Const $MOUSEEVENTF_LEFTUP = 0x0004
Global Const $MOUSEEVENTF_RIGHTDOWN = 0x0008
Global Const $MOUSEEVENTF_RIGHTUP = 0x0010
Global Const $MOUSEEVENTF_MIDDLEDOWN = 0x0020
Global Const $MOUSEEVENTF_MIDDLEUP = 0x0040
Global Const $MOUSEEVENTF_WHEEL = 0x0800
Global Const $MOUSEEVENTF_XDOWN = 0x0080
Global Const $MOUSEEVENTF_XUP = 0x0100
Global Const $REG_NONE = 0
Global Const $REG_SZ = 1
Global Const $REG_EXPAND_SZ = 2
Global Const $REG_BINARY = 3
Global Const $REG_DWORD = 4
Global Const $REG_DWORD_LITTLE_ENDIAN = 4
Global Const $REG_DWORD_BIG_ENDIAN = 5
Global Const $REG_LINK = 6
Global Const $REG_MULTI_SZ = 7
Global Const $REG_RESOURCE_LIST = 8
Global Const $REG_FULL_RESOURCE_DESCRIPTOR = 9
Global Const $REG_RESOURCE_REQUIREMENTS_LIST = 10
Global Const $REG_QWORD = 11
Global Const $REG_QWORD_LITTLE_ENDIAN = 11
Global Const $HWND_BOTTOM = 1
Global Const $HWND_NOTOPMOST = -2
Global Const $HWND_TOP = 0
Global Const $HWND_TOPMOST = -1
Global Const $SWP_NOSIZE = 0x0001
Global Const $SWP_NOMOVE = 0x0002
Global Const $SWP_NOZORDER = 0x0004
Global Const $SWP_NOREDRAW = 0x0008
Global Const $SWP_NOACTIVATE = 0x0010
Global Const $SWP_FRAMECHANGED = 0x0020
Global Const $SWP_DRAWFRAME = 0x0020
Global Const $SWP_SHOWWINDOW = 0x0040
Global Const $SWP_HIDEWINDOW = 0x0080
Global Const $SWP_NOCOPYBITS = 0x0100
Global Const $SWP_NOOWNERZORDER = 0x0200
Global Const $SWP_NOREPOSITION = 0x0200
Global Const $SWP_NOSENDCHANGING = 0x0400
Global Const $SWP_DEFERERASE = 0x2000
Global Const $SWP_ASYNCWINDOWPOS = 0x4000
Global Const $KEYWORD_DEFAULT = 1
Global Const $KEYWORD_NULL = 2
Global Const $DECLARED_LOCAL = -1
Global Const $DECLARED_UNKNOWN = 0
Global Const $DECLARED_GLOBAL = 1
Global Const $ASSIGN_CREATE = 0
Global Const $ASSIGN_FORCELOCAL = 1
Global Const $ASSIGN_FORCEGLOBAL = 2
Global Const $ASSIGN_EXISTFAIL = 4
Global Const $BI_ENABLE = 0
Global Const $BI_DISABLE = 1
Global Const $BREAK_ENABLE = 1
Global Const $BREAK_DISABLE = 0
Global Const $CDTRAY_OPEN = "open"
Global Const $CDTRAY_CLOSED = "closed"
Global Const $SEND_DEFAULT = 0
Global Const $SEND_RAW = 1
Global Const $DIR_DEFAULT = 0
Global Const $DIR_EXTENDED = 1
Global Const $DIR_NORECURSE = 2
Global Const $DIR_REMOVE = 1
Global Const $DT_ALL = "ALL"
Global Const $DT_CDROM = "CDROM"
Global Const $DT_REMOVABLE = "REMOVABLE"
Global Const $DT_FIXED = "FIXED"
Global Const $DT_NETWORK = "NETWORK"
Global Const $DT_RAMDISK = "RAMDISK"
Global Const $DT_UNKNOWN = "UNKNOWN"
Global Const $DT_UNDEFINED = 1
Global Const $DT_FAT = "FAT"
Global Const $DT_FAT32 = "FAT32"
Global Const $DT_EXFAT = "exFAT"
Global Const $DT_NTFS = "NTFS"
Global Const $DT_NWFS = "NWFS"
Global Const $DT_CDFS = "CDFS"
Global Const $DT_UDF = "UDF"
Global Const $DMA_DEFAULT = 0
Global Const $DMA_PERSISTENT = 1
Global Const $DMA_AUTHENTICATION = 8
Global Const $DS_UNKNOWN = "UNKNOWN"
Global Const $DS_READY = "READY"
Global Const $DS_NOTREADY = "NOTREADY"
Global Const $DS_INVALID = "INVALID"
Global Const $MOUSE_CLICK_LEFT = "left"
Global Const $MOUSE_CLICK_RIGHT = "right"
Global Const $MOUSE_CLICK_MIDDLE = "middle"
Global Const $MOUSE_CLICK_MAIN = "main"
Global Const $MOUSE_CLICK_MENU = "menu"
Global Const $MOUSE_CLICK_PRIMARY = "primary"
Global Const $MOUSE_CLICK_SECONDARY = "secondary"
Global Const $MOUSE_WHEEL_UP = "up"
Global Const $MOUSE_WHEEL_DOWN = "down"
Global Const $NUMBER_AUTO = 0
Global Const $NUMBER_32BIT = 1
Global Const $NUMBER_64BIT = 2
Global Const $NUMBER_DOUBLE = 3
Global Const $OBJ_NAME = 1
Global Const $OBJ_STRING = 2
Global Const $OBJ_PROGID = 3
Global Const $OBJ_FILE = 4
Global Const $OBJ_MODULE = 5
Global Const $OBJ_CLSID = 6
Global Const $OBJ_IID = 7
Global Const $EXITCLOSE_NORMAL = 0
Global Const $EXITCLOSE_BYEXIT = 1
Global Const $EXITCLOSE_BYCLICK = 2
Global Const $EXITCLOSE_BYLOGOFF = 3
Global Const $EXITCLOSE_BYSHUTDOWN = 4
Global Const $PROCESS_STATS_MEMORY = 0
Global Const $PROCESS_STATS_IO = 1
Global Const $PROCESS_LOW = 0
Global Const $PROCESS_BELOWNORMAL = 1
Global Const $PROCESS_NORMAL = 2
Global Const $PROCESS_ABOVENORMAL = 3
Global Const $PROCESS_HIGH = 4
Global Const $PROCESS_REALTIME = 5
Global Const $RUN_LOGON_NOPROFILE = 0
Global Const $RUN_LOGON_PROFILE = 1
Global Const $RUN_LOGON_NETWORK = 2
Global Const $RUN_LOGON_INHERIT = 4
Global Const $SOUND_NOWAIT = 0
Global Const $SOUND_WAIT = 1
Global Const $SHEX_OPEN = "open"
Global Const $SHEX_EDIT = "edit"
Global Const $SHEX_PRINT = "print"
Global Const $SHEX_PROPERTIES = "properties"
Global Const $TCP_DATA_DEFAULT = 0
Global Const $TCP_DATA_BINARY = 1
Global Const $UDP_OPEN_DEFAULT = 0
Global Const $UDP_OPEN_BROADCAST = 1
Global Const $UDP_DATA_DEFAULT = 0
Global Const $UDP_DATA_BINARY = 1
Global Const $UDP_DATA_ARRAY = 2
Global Const $TIP_NOICON = 0
Global Const $TIP_INFOICON = 1
Global Const $TIP_WARNINGICON = 2
Global Const $TIP_ERRORICON = 3
Global Const $TIP_BALLOON = 1
Global Const $TIP_CENTER = 2
Global Const $TIP_FORCEVISIBLE = 4
Global Const $WINDOWS_NOONTOP = 0
Global Const $WINDOWS_ONTOP = 1
Global Const $WIN_STATE_EXISTS = 1
Global Const $WIN_STATE_VISIBLE = 2
Global Const $WIN_STATE_ENABLED = 4
Global Const $WIN_STATE_ACTIVE = 8
Global Const $WIN_STATE_MINIMIZED = 16
Global Const $WIN_STATE_MAXIMIZED = 32
Global Const $FC_NOOVERWRITE = 0
Global Const $FC_OVERWRITE = 1
Global Const $FC_CREATEPATH = 8
Global Const $FT_MODIFIED = 0
Global Const $FT_CREATED = 1
Global Const $FT_ACCESSED = 2
Global Const $FT_ARRAY = 0
Global Const $FT_STRING = 1
Global Const $FT_MSEC = 2
Global Const $FT_UTC = 4
Global Const $FSF_CREATEBUTTON = 1
Global Const $FSF_NEWDIALOG = 2
Global Const $FSF_EDITCONTROL = 4
Global Const $FT_NONRECURSIVE = 0
Global Const $FT_RECURSIVE = 1
Global Const $FO_READ = 0
Global Const $FO_APPEND = 1
Global Const $FO_OVERWRITE = 2
Global Const $FO_CREATEPATH = 8
Global Const $FO_BINARY = 16
Global Const $FO_UNICODE = 32
Global Const $FO_UTF16_LE = 32
Global Const $FO_UTF16_BE = 64
Global Const $FO_UTF8 = 128
Global Const $FO_UTF8_NOBOM = 256
Global Const $FO_ANSI = 512
Global Const $FO_UTF16_LE_NOBOM = 1024
Global Const $FO_UTF16_BE_NOBOM = 2048
Global Const $FO_UTF8_FULL = 16384
Global Const $FO_FULLFILE_DETECT = 16384
Global Const $EOF = -1
Global Const $FD_FILEMUSTEXIST = 1
Global Const $FD_PATHMUSTEXIST = 2
Global Const $FD_MULTISELECT = 4
Global Const $FD_PROMPTCREATENEW = 8
Global Const $FD_PROMPTOVERWRITE = 16
Global Const $CREATE_NEW = 1
Global Const $CREATE_ALWAYS = 2
Global Const $OPEN_EXISTING = 3
Global Const $OPEN_ALWAYS = 4
Global Const $TRUNCATE_EXISTING = 5
Global Const $INVALID_SET_FILE_POINTER = -1
Global Const $FILE_BEGIN = 0
Global Const $FILE_CURRENT = 1
Global Const $FILE_END = 2
Global Const $FILE_ATTRIBUTE_READONLY = 0x00000001
Global Const $FILE_ATTRIBUTE_HIDDEN = 0x00000002
Global Const $FILE_ATTRIBUTE_SYSTEM = 0x00000004
Global Const $FILE_ATTRIBUTE_DIRECTORY = 0x00000010
Global Const $FILE_ATTRIBUTE_ARCHIVE = 0x00000020
Global Const $FILE_ATTRIBUTE_DEVICE = 0x00000040
Global Const $FILE_ATTRIBUTE_NORMAL = 0x00000080
Global Const $FILE_ATTRIBUTE_TEMPORARY = 0x00000100
Global Const $FILE_ATTRIBUTE_SPARSE_FILE = 0x00000200
Global Const $FILE_ATTRIBUTE_REPARSE_POINT = 0x00000400
Global Const $FILE_ATTRIBUTE_COMPRESSED = 0x00000800
Global Const $FILE_ATTRIBUTE_OFFLINE = 0x00001000
Global Const $FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 0x00002000
Global Const $FILE_ATTRIBUTE_ENCRYPTED = 0x00004000
Global Const $FILE_SHARE_READ = 0x00000001
Global Const $FILE_SHARE_WRITE = 0x00000002
Global Const $FILE_SHARE_DELETE = 0x00000004
Global Const $FILE_SHARE_READWRITE = BitOR($FILE_SHARE_READ, $FILE_SHARE_WRITE)
Global Const $FILE_SHARE_ANY = BitOR($FILE_SHARE_READ, $FILE_SHARE_WRITE, $FILE_SHARE_DELETE)
Global Const $GENERIC_ALL = 0x10000000
Global Const $GENERIC_EXECUTE = 0x20000000
Global Const $GENERIC_WRITE = 0x40000000
Global Const $GENERIC_READ = 0x80000000
Global Const $GENERIC_READWRITE = BitOR($GENERIC_READ, $GENERIC_WRITE)
Global Const $FILE_ENCODING_UTF16LE = 32
Global Const $FE_ENTIRE_UTF8 = 1
Global Const $FE_PARTIALFIRST_UTF8 = 2
Global Const $FN_FULLPATH = 0
Global Const $FN_RELATIVEPATH = 1
Global Const $FV_COMMENTS = "Comments"
Global Const $FV_COMPANYNAME = "CompanyName"
Global Const $FV_FILEDESCRIPTION = "FileDescription"
Global Const $FV_FILEVERSION = "FileVersion"
Global Const $FV_INTERNALNAME = "InternalName"
Global Const $FV_LEGALCOPYRIGHT = "LegalCopyright"
Global Const $FV_LEGALTRADEMARKS = "LegalTrademarks"
Global Const $FV_ORIGINALFILENAME = "OriginalFilename"
Global Const $FV_PRODUCTNAME = "ProductName"
Global Const $FV_PRODUCTVERSION = "ProductVersion"
Global Const $FV_PRIVATEBUILD = "PrivateBuild"
Global Const $FV_SPECIALBUILD = "SpecialBuild"
Global Const $FRTA_NOCOUNT = 0
Global Const $FRTA_COUNT = 1
Global Const $FRTA_INTARRAYS = 2
Global Const $FRTA_ENTIRESPLIT = 4
Global Const $FLTA_FILESFOLDERS = 0
Global Const $FLTA_FILES = 1
Global Const $FLTA_FOLDERS = 2
Global Const $FLTAR_FILESFOLDERS = 0
Global Const $FLTAR_FILES = 1
Global Const $FLTAR_FOLDERS = 2
Global Const $FLTAR_NOHIDDEN = 4
Global Const $FLTAR_NOSYSTEM = 8
Global Const $FLTAR_NOLINK = 16
Global Const $FLTAR_NORECUR = 0
Global Const $FLTAR_RECUR = 1
Global Const $FLTAR_NOSORT = 0
Global Const $FLTAR_SORT = 1
Global Const $FLTAR_FASTSORT = 2
Global Const $FLTAR_NOPATH = 0
Global Const $FLTAR_RELPATH = 1
Global Const $FLTAR_FULLPATH = 2
Global Const $PATH_ORIGINAL = 0
Global Const $PATH_DRIVE = 1
Global Const $PATH_DIRECTORY = 2
Global Const $PATH_FILENAME = 3
Global Const $PATH_EXTENSION = 4
Global Const $MB_OK = 0
Global Const $MB_OKCANCEL = 1
Global Const $MB_ABORTRETRYIGNORE = 2
Global Const $MB_YESNOCANCEL = 3
Global Const $MB_YESNO = 4
Global Const $MB_RETRYCANCEL = 5
Global Const $MB_CANCELTRYCONTINUE = 6
Global Const $MB_HELP = 0x4000
Global Const $MB_ICONNONE = 0
Global Const $MB_ICONSTOP = 16
Global Const $MB_ICONERROR = 16
Global Const $MB_ICONHAND = 16
Global Const $MB_ICONQUESTION = 32
Global Const $MB_ICONEXCLAMATION = 48
Global Const $MB_ICONWARNING = 48
Global Const $MB_ICONINFORMATION = 64
Global Const $MB_ICONASTERISK = 64
Global Const $MB_USERICON = 0x00000080
Global Const $MB_DEFBUTTON1 = 0
Global Const $MB_DEFBUTTON2 = 256
Global Const $MB_DEFBUTTON3 = 512
Global Const $MB_DEFBUTTON4 = 768
Global Const $MB_APPLMODAL = 0
Global Const $MB_SYSTEMMODAL = 4096
Global Const $MB_TASKMODAL = 8192
Global Const $MB_DEFAULT_DESKTOP_ONLY = 0x00020000
Global Const $MB_RIGHT = 0x00080000
Global Const $MB_RTLREADING = 0x00100000
Global Const $MB_SETFOREGROUND = 0x00010000
Global Const $MB_TOPMOST = 0x00040000
Global Const $MB_SERVICE_NOTIFICATION = 0x00200000
Global Const $MB_RIGHTJUSTIFIED = $MB_RIGHT
Global Const $IDTIMEOUT = -1
Global Const $IDOK = 1
Global Const $IDCANCEL = 2
Global Const $IDABORT = 3
Global Const $IDRETRY = 4
Global Const $IDIGNORE = 5
Global Const $IDYES = 6
Global Const $IDNO = 7
Global Const $IDCLOSE = 8
Global Const $IDHELP = 9
Global Const $IDTRYAGAIN = 10
Global Const $IDCONTINUE = 11
Global $__g_vEnum, $__g_vExt = 0
Global $__g_iRGBMode = 1
Global Const $tagOSVERSIONINFO = 'struct;dword OSVersionInfoSize;dword MajorVersion;dword MinorVersion;dword BuildNumber;dword PlatformId;wchar CSDVersion[128];endstruct'
Global Const $IMAGE_BITMAP = 0
Global Const $IMAGE_ICON = 1
Global Const $IMAGE_CURSOR = 2
Global Const $IMAGE_ENHMETAFILE = 3
Global Const $LR_DEFAULTCOLOR = 0x0000
Global Const $LR_MONOCHROME = 0x0001
Global Const $LR_COLOR = 0x0002
Global Const $LR_COPYRETURNORG = 0x0004
Global Const $LR_COPYDELETEORG = 0x0008
Global Const $LR_LOADFROMFILE = 0x0010
Global Const $LR_LOADTRANSPARENT = 0x0020
Global Const $LR_DEFAULTSIZE = 0x0040
Global Const $LR_VGACOLOR = 0x0080
Global Const $LR_LOADMAP3DCOLORS = 0x1000
Global Const $LR_CREATEDIBSECTION = 0x2000
Global Const $LR_COPYFROMRESOURCE = 0x4000
Global Const $LR_SHARED = 0x8000
Global Const $__tagCURSORINFO = "dword Size;dword Flags;handle hCursor;" & "struct;long X;long Y;endstruct"
Func _WinAPI_CreateFile($sFileName, $iCreation, $iAccess = 4, $iShare = 0, $iAttributes = 0, $tSecurity = 0)
Local $iDA = 0, $iSM = 0, $iCD = 0, $iFA = 0
If BitAND($iAccess, 1) <> 0 Then $iDA = BitOR($iDA, $GENERIC_EXECUTE)
If BitAND($iAccess, 2) <> 0 Then $iDA = BitOR($iDA, $GENERIC_READ)
If BitAND($iAccess, 4) <> 0 Then $iDA = BitOR($iDA, $GENERIC_WRITE)
If BitAND($iShare, 1) <> 0 Then $iSM = BitOR($iSM, $FILE_SHARE_DELETE)
If BitAND($iShare, 2) <> 0 Then $iSM = BitOR($iSM, $FILE_SHARE_READ)
If BitAND($iShare, 4) <> 0 Then $iSM = BitOR($iSM, $FILE_SHARE_WRITE)
Switch $iCreation
Case 0
$iCD = $CREATE_NEW
Case 1
$iCD = $CREATE_ALWAYS
Case 2
$iCD = $OPEN_EXISTING
Case 3
$iCD = $OPEN_ALWAYS
Case 4
$iCD = $TRUNCATE_EXISTING
EndSwitch
If BitAND($iAttributes, 1) <> 0 Then $iFA = BitOR($iFA, $FILE_ATTRIBUTE_ARCHIVE)
If BitAND($iAttributes, 2) <> 0 Then $iFA = BitOR($iFA, $FILE_ATTRIBUTE_HIDDEN)
If BitAND($iAttributes, 4) <> 0 Then $iFA = BitOR($iFA, $FILE_ATTRIBUTE_READONLY)
If BitAND($iAttributes, 8) <> 0 Then $iFA = BitOR($iFA, $FILE_ATTRIBUTE_SYSTEM)
Local $aCall = DllCall("kernel32.dll", "handle", "CreateFileW", "wstr", $sFileName, "dword", $iDA, "dword", $iSM,  "struct*", $tSecurity, "dword", $iCD, "dword", $iFA, "ptr", 0)
If @error Or ($aCall[0] = Ptr(-1)) Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_FreeLibrary($hModule)
Local $aCall = DllCall("kernel32.dll", "bool", "FreeLibrary", "handle", $hModule)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_GetCursorInfo()
Local $tCursor = DllStructCreate($__tagCURSORINFO)
Local $iCursor = DllStructGetSize($tCursor)
DllStructSetData($tCursor, "Size", $iCursor)
Local $aCall = DllCall("user32.dll", "bool", "GetCursorInfo", "struct*", $tCursor)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aCursor[5]
$aCursor[0] = True
$aCursor[1] = DllStructGetData($tCursor, "Flags") <> 0
$aCursor[2] = DllStructGetData($tCursor, "hCursor")
$aCursor[3] = DllStructGetData($tCursor, "X")
$aCursor[4] = DllStructGetData($tCursor, "Y")
Return $aCursor
EndFunc
Func _WinAPI_GetDlgCtrlID($hWnd)
Local $aCall = DllCall("user32.dll", "int", "GetDlgCtrlID", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetModuleHandle($sModuleName)
If $sModuleName = "" Then $sModuleName = Null
Local $aCall = DllCall("kernel32.dll", "handle", "GetModuleHandleW", "wstr", $sModuleName)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetString($pString, $bUnicode = True)
Local $iLength = _WinAPI_StrLen($pString, $bUnicode)
If @error Or Not $iLength Then Return SetError(@error + 10, @extended, '')
Local $tString = DllStructCreate(($bUnicode ? 'wchar' : 'char') & '[' & ($iLength + 1) & ']', $pString)
If @error Then Return SetError(@error, @extended, '')
Return SetExtended($iLength, DllStructGetData($tString, 1))
EndFunc
Func _WinAPI_GetVersion()
Local $tOSVI = DllStructCreate($tagOSVERSIONINFO)
DllStructSetData($tOSVI, 1, DllStructGetSize($tOSVI))
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetVersionExW', 'struct*', $tOSVI)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return Number(DllStructGetData($tOSVI, 2) & "." & DllStructGetData($tOSVI, 3), $NUMBER_DOUBLE)
EndFunc
Func _WinAPI_IsWow64Process($iPID = 0)
If Not $iPID Then $iPID = @AutoItPID
Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', (_WinAPI_GetVersion() < 6.0 ? 0x00000400 : 0x00001000),  'bool', 0, 'dword', $iPID)
If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, False)
Local $aCall = DllCall('kernel32.dll', 'bool', 'IsWow64Process', 'handle', $hProcess[0], 'bool*', 0)
If __CheckErrorCloseHandle($aCall, $hProcess[0]) Then Return SetError(@error, @extended, False)
Return $aCall[2]
EndFunc
Func _WinAPI_LoadImage($hInstance, $sImage, $iType, $iXDesired, $iYDesired, $iLoad)
Local $aCall, $sImageType = "int"
If IsString($sImage) Then $sImageType = "wstr"
$aCall = DllCall("user32.dll", "handle", "LoadImageW", "handle", $hInstance, $sImageType, $sImage, "uint", $iType,  "int", $iXDesired, "int", $iYDesired, "uint", $iLoad)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_LoadLibrary($sFileName)
Local $aCall = DllCall("kernel32.dll", "handle", "LoadLibraryW", "wstr", $sFileName)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsDirectory($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsDirectoryW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ReadFile($hFile, $pBuffer, $iToRead, ByRef $iRead, $tOverlapped = 0)
Local $aCall = DllCall("kernel32.dll", "bool", "ReadFile", "handle", $hFile, "struct*", $pBuffer, "dword", $iToRead,  "dword*", 0, "struct*", $tOverlapped)
If @error Then Return SetError(@error, @extended, False)
$iRead = $aCall[4]
Return $aCall[0]
EndFunc
Func _WinAPI_StrLen($pString, $bUnicode = True)
Local $W = ''
If $bUnicode Then $W = 'W'
Local $aCall = DllCall('kernel32.dll', 'int', 'lstrlen' & $W, 'struct*', $pString)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SwitchColor($iColor)
If $iColor = -1 Then Return $iColor
Return BitOR(BitAND($iColor, 0x00FF00), BitShift(BitAND($iColor, 0x0000FF), -16), BitShift(BitAND($iColor, 0xFF0000), 16))
EndFunc
Func _WinAPI_WriteFile($hFile, $pBuffer, $iToWrite, ByRef $iWritten, $tOverlapped = 0)
Local $aCall = DllCall("kernel32.dll", "bool", "WriteFile", "handle", $hFile, "struct*", $pBuffer, "dword", $iToWrite,  "dword*", 0, "struct*", $tOverlapped)
If @error Then Return SetError(@error, @extended, False)
$iWritten = $aCall[4]
Return $aCall[0]
EndFunc
Func __CheckErrorArrayBounds(Const ByRef $aData, ByRef $iStart, ByRef $iEnd, $nDim = 1, $iDim = $UBOUND_DIMENSIONS)
If Not IsArray($aData) Then Return SetError(1, 0, 1)
If UBound($aData, $iDim) <> $nDim Then Return SetError(2, 0, 1)
If $iStart < 0 Then $iStart = 0
Local $iUBound = UBound($aData) - 1
If $iEnd < 1 Or $iEnd > $iUBound Then $iEnd = $iUBound
If $iStart > $iEnd Then Return SetError(4, 0, 1)
Return 0
EndFunc
Func __CheckErrorCloseHandle($aCall, $hFile, $bLastError = False, $iCurErr = @error, $iCurExt = @extended)
If Not $iCurErr And Not $aCall[0] Then $iCurErr = 10
Local $aLastError = DllCall("kernel32.dll", "dword", "GetLastError")
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hFile)
If $iCurErr Then DllCall("kernel32.dll", "none", "SetLastError", "dword", $aLastError[0])
If $bLastError Then $iCurExt = $aLastError[0]
Return SetError($iCurErr, $iCurExt, $iCurErr)
EndFunc
Func __DLL($sPath, $bPin = False)
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetModuleHandleExW', 'dword', ($bPin ? 0x0001 : 0x0002), "wstr", $sPath, 'ptr*', 0)
If Not $aCall[3] Then
$aCall = DllCall("kernel32.dll", "handle", "LoadLibraryW", "wstr", $sPath)
If @error Or Not $aCall[0] Then Return 0
EndIf
Return 1
EndFunc
Func __EnumWindowsProc($hWnd, $bVisible)
Local $aCall
If $bVisible Then
$aCall = DllCall("user32.dll", "bool", "IsWindowVisible", "hwnd", $hWnd)
If Not $aCall[0] Then
Return 1
EndIf
EndIf
__Inc($__g_vEnum)
$__g_vEnum[$__g_vEnum[0][0]][0] = $hWnd
$aCall = DllCall("user32.dll", "int", "GetClassNameW", "hwnd", $hWnd, "wstr", "", "int", 4096)
$__g_vEnum[$__g_vEnum[0][0]][1] = $aCall[2]
Return 1
EndFunc
Func __FatalExit($iCode, $sText = '')
If $sText Then MsgBox($MB_SYSTEMMODAL, 'AutoIt', $sText)
DllCall('kernel32.dll', 'none', 'FatalExit', 'int', $iCode)
EndFunc
Func __Inc(ByRef $aData, $iIncrement = 100)
Select
Case UBound($aData, $UBOUND_COLUMNS)
If $iIncrement < 0 Then
ReDim $aData[$aData[0][0] + 1][UBound($aData, $UBOUND_COLUMNS)]
Else
$aData[0][0] += 1
If $aData[0][0] > UBound($aData) - 1 Then
ReDim $aData[$aData[0][0] + $iIncrement][UBound($aData, $UBOUND_COLUMNS)]
EndIf
EndIf
Case UBound($aData, $UBOUND_ROWS)
If $iIncrement < 0 Then
ReDim $aData[$aData[0] + 1]
Else
$aData[0] += 1
If $aData[0] > UBound($aData) - 1 Then
ReDim $aData[$aData[0] + $iIncrement]
EndIf
EndIf
Case Else
Return 0
EndSelect
Return 1
EndFunc
Func __RGB($iColor)
If $__g_iRGBMode Then
$iColor = _WinAPI_SwitchColor($iColor)
EndIf
Return $iColor
EndFunc
Func _WinAPI_CharToOem($sStr)
Local $aCall, $sRetStr = "", $nLen = StringLen($sStr) + 1, $iStart = 1
While $iStart < $nLen
$aCall = DllCall('user32.dll', 'bool', 'CharToOemW', 'wstr', StringMid($sStr, $iStart, 65536), 'wstr', '')
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
$iStart += 65536
$sRetStr &= $aCall[2]
WEnd
Return $sRetStr
EndFunc
Func _WinAPI_ClientToScreen($hWnd, ByRef $tPoint)
Local $aCall = DllCall("user32.dll", "bool", "ClientToScreen", "hwnd", $hWnd, "struct*", $tPoint)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tPoint
EndFunc
Func _WinAPI_DWordToFloat($iValue)
Local $tDWord = DllStructCreate('dword')
Local $tFloat = DllStructCreate('float', DllStructGetPtr($tDWord))
DllStructSetData($tDWord, 1, $iValue)
Return DllStructGetData($tFloat, 1)
EndFunc
Func _WinAPI_DWordToInt($iValue)
Local $tData = DllStructCreate('int')
DllStructSetData($tData, 1, $iValue)
Return DllStructGetData($tData, 1)
EndFunc
Func _WinAPI_FloatToDWord($iValue)
Local $tFloat = DllStructCreate('float')
Local $tDWord = DllStructCreate('dword', DllStructGetPtr($tFloat))
DllStructSetData($tFloat, 1, $iValue)
Return DllStructGetData($tDWord, 1)
EndFunc
Func _WinAPI_FloatToInt($nFloat)
Local $tFloat = DllStructCreate("float")
Local $tInt = DllStructCreate("int", DllStructGetPtr($tFloat))
DllStructSetData($tFloat, 1, $nFloat)
Return DllStructGetData($tInt, 1)
EndFunc
Func _WinAPI_GetXYFromPoint(ByRef $tPoint, ByRef $iX, ByRef $iY)
$iX = DllStructGetData($tPoint, "X")
$iY = DllStructGetData($tPoint, "Y")
EndFunc
Func _WinAPI_GUIDFromString($sGUID)
Local $tGUID = DllStructCreate($tagGUID)
If Not _WinAPI_GUIDFromStringEx($sGUID, $tGUID) Then Return SetError(@error, @extended, 0)
Return $tGUID
EndFunc
Func _WinAPI_GUIDFromStringEx($sGUID, $tGUID)
Local $aCall = DllCall("ole32.dll", "long", "CLSIDFromString", "wstr", $sGUID, "struct*", $tGUID)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _WinAPI_HashData($pMemory, $iSize, $iLength = 32)
If ($iLength <= 0) Or ($iLength > 256) Then Return SetError(11, 0, 0)
Local $tData = DllStructCreate('byte[' & $iLength & ']')
Local $aCall = DllCall('shlwapi.dll', 'uint', 'HashData', 'struct*', $pMemory, 'dword', $iSize, 'struct*', $tData, 'dword', $iLength)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return DllStructGetData($tData, 1)
EndFunc
Func _WinAPI_HashString($sString, $bCaseSensitive = True, $iLength = 32)
Local $iLengthS = StringLen($sString)
If Not $iLengthS Or ($iLength > 256) Then Return SetError(12, 0, 0)
Local $tString = DllStructCreate('wchar[' & ($iLengthS + 1) & ']')
If Not $bCaseSensitive Then
$sString = StringLower($sString)
EndIf
DllStructSetData($tString, 1, $sString)
Local $sHash = _WinAPI_HashData($tString, 2 * $iLengthS, $iLength)
If @error Then Return SetError(@error, @extended, 0)
Return $sHash
EndFunc
Func _WinAPI_HiByte($iValue)
Return BitAND(BitShift($iValue, 8), 0xFF)
EndFunc
Func _WinAPI_HiDWord($iValue)
Local $tInt64 = DllStructCreate('int64')
Local $tQWord = DllStructCreate('dword;dword', DllStructGetPtr($tInt64))
DllStructSetData($tInt64, 1, $iValue)
Return DllStructGetData($tQWord, 2)
EndFunc
Func _WinAPI_HiWord($iLong)
Return BitShift($iLong, 16)
EndFunc
Func _WinAPI_IntToDWord($iValue)
Local $tData = DllStructCreate('dword')
DllStructSetData($tData, 1, $iValue)
Return DllStructGetData($tData, 1)
EndFunc
Func _WinAPI_IntToFloat($iInt)
Local $tInt = DllStructCreate("int")
Local $tFloat = DllStructCreate("float", DllStructGetPtr($tInt))
DllStructSetData($tInt, 1, $iInt)
Return DllStructGetData($tFloat, 1)
EndFunc
Func _WinAPI_LoByte($iValue)
Return BitAND($iValue, 0xFF)
EndFunc
Func _WinAPI_LoDWord($iValue)
Local $tInt64 = DllStructCreate('int64')
Local $tQWord = DllStructCreate('dword;dword', DllStructGetPtr($tInt64))
DllStructSetData($tInt64, 1, $iValue)
Return DllStructGetData($tQWord, 1)
EndFunc
Func _WinAPI_LoWord($iLong)
Return BitAND($iLong, 0xFFFF)
EndFunc
Func _WinAPI_LongMid($iValue, $iStart, $iCount)
Return BitAND(BitShift($iValue, $iStart), BitOR(BitShift(BitShift(0x7FFFFFFF, 32 - ($iCount + 1)), 1), BitShift(1, -($iCount - 1))))
EndFunc
Func _WinAPI_MAKELANGID($iLngIDPrimary, $iLngIDSub)
Return BitOR(BitShift($iLngIDSub, -10), $iLngIDPrimary)
EndFunc
Func _WinAPI_MAKELCID($iLngID, $iSortID)
Return BitOR(BitShift($iSortID, -16), $iLngID)
EndFunc
Func _WinAPI_MakeLong($iLo, $iHi)
Return BitOR(BitShift($iHi, -16), BitAND($iLo, 0xFFFF))
EndFunc
Func _WinAPI_MakeQWord($iLoDWORD, $iHiDWORD)
Local $tInt64 = DllStructCreate("uint64")
Local $tDwords = DllStructCreate("dword;dword", DllStructGetPtr($tInt64))
DllStructSetData($tDwords, 1, $iLoDWORD)
DllStructSetData($tDwords, 2, $iHiDWORD)
Return DllStructGetData($tInt64, 1)
EndFunc
Func _WinAPI_MakeWord($iLo, $iHi)
Local $tWord = DllStructCreate('ushort')
Local $tByte = DllStructCreate('byte;byte', DllStructGetPtr($tWord))
DllStructSetData($tByte, 1, $iHi)
DllStructSetData($tByte, 2, $iLo)
Return DllStructGetData($tWord, 1)
EndFunc
Func _WinAPI_MultiByteToWideChar($vText, $iCodePage = 0, $iFlags = 0, $bRetString = False)
Local $sTextType = ""
If IsString($vText) Then $sTextType = "str"
If (IsDllStruct($vText) Or IsPtr($vText)) Then $sTextType = "struct*"
If $sTextType = "" Then Return SetError(1, 0, 0)
Local $aCall = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", $iCodePage, "dword", $iFlags,  $sTextType, $vText, "int", -1, "ptr", 0, "int", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $iOut = $aCall[0]
Local $tOut = DllStructCreate("wchar[" & $iOut & "]")
$aCall = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", $iCodePage, "dword", $iFlags, $sTextType, $vText,  "int", -1, "struct*", $tOut, "int", $iOut)
If @error Or Not $aCall[0] Then Return SetError(@error + 20, @extended, 0)
If $bRetString Then Return DllStructGetData($tOut, 1)
Return $tOut
EndFunc
Func _WinAPI_MultiByteToWideCharEx($sText, $pText, $iCodePage = 0, $iFlags = 0)
Local $aCall = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", $iCodePage, "dword", $iFlags, "STR", $sText,  "int", -1, "struct*", $pText, "int", (StringLen($sText) + 1) * 2)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_OemToChar($sStr)
Local $aCall, $sRetStr = "", $nLen = StringLen($sStr) + 1, $iStart = 1
While $iStart < $nLen
$aCall = DllCall('user32.dll', 'bool', 'OemToCharA', 'str', StringMid($sStr, $iStart, 65536), 'str', '')
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
$sRetStr &= $aCall[2]
$iStart += 65536
WEnd
Return $sRetStr
EndFunc
Func _WinAPI_PointFromRect(ByRef $tRECT, $bCenter = True)
Local $iX1 = DllStructGetData($tRECT, "Left")
Local $iY1 = DllStructGetData($tRECT, "Top")
Local $iX2 = DllStructGetData($tRECT, "Right")
Local $iY2 = DllStructGetData($tRECT, "Bottom")
If $bCenter Then
$iX1 = $iX1 + (($iX2 - $iX1) / 2)
$iY1 = $iY1 + (($iY2 - $iY1) / 2)
EndIf
Local $tPoint = DllStructCreate($tagPOINT)
DllStructSetData($tPoint, "X", $iX1)
DllStructSetData($tPoint, "Y", $iY1)
Return $tPoint
EndFunc
Func _WinAPI_PrimaryLangId($iLngID)
Return BitAND($iLngID, 0x3FF)
EndFunc
Func _WinAPI_ScreenToClient($hWnd, ByRef $tPoint)
Local $aCall = DllCall("user32.dll", "bool", "ScreenToClient", "hwnd", $hWnd, "struct*", $tPoint)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShortToWord($iValue)
Return BitAND($iValue, 0x0000FFFF)
EndFunc
Func _WinAPI_StrFormatByteSize($iSize)
Local $aCall = DllCall('shlwapi.dll', 'ptr', 'StrFormatByteSizeW', 'int64', $iSize, 'wstr', '', 'uint', 1024)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_StrFormatByteSizeEx($iSize)
Local $aSymbol = DllCall('kernel32.dll', 'int', 'GetLocaleInfoW', 'dword', 0x0400, 'dword', 0x000F, 'wstr', '', 'int', 2048)
If @error Then Return SetError(@error + 10, @extended, '')
Local $sSize = _WinAPI_StrFormatByteSize(0)
If @error Then Return SetError(@error, @extended, '')
Return StringReplace($sSize, '0', StringRegExpReplace(Number($iSize), '(?<=\d)(?=(\d{3})+\z)', $aSymbol[3]))
EndFunc
Func _WinAPI_StrFormatKBSize($iSize)
Local $aCall = DllCall('shlwapi.dll', 'ptr', 'StrFormatKBSizeW', 'int64', $iSize, 'wstr', '', 'uint', 1024)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_StrFromTimeInterval($iTime, $iDigits = 7)
Local $aCall = DllCall('shlwapi.dll', 'int', 'StrFromTimeIntervalW', 'wstr', '', 'uint', 1024, 'dword', $iTime,  'int', $iDigits)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return StringStripWS($aCall[1], $STR_STRIPLEADING + $STR_STRIPTRAILING)
EndFunc
Func _WinAPI_StringFromGUID($tGUID)
Local $aCall = DllCall("ole32.dll", "int", "StringFromGUID2", "struct*", $tGUID, "wstr", "", "int", 40)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, "")
Return SetExtended($aCall[0], $aCall[2])
EndFunc
Func _WinAPI_SubLangId($iLngID)
Return BitShift($iLngID, 10)
EndFunc
Func _WinAPI_SwapDWord($iValue)
Local $tStruct1 = DllStructCreate('dword;dword')
Local $tStruct2 = DllStructCreate('byte[4];byte[4]', DllStructGetPtr($tStruct1))
DllStructSetData($tStruct1, 1, $iValue)
For $i = 1 To 4
DllStructSetData($tStruct2, 2, DllStructGetData($tStruct2, 1, 5 - $i), $i)
Next
Return DllStructGetData($tStruct1, 2)
EndFunc
Func _WinAPI_SwapQWord($iValue)
Local $tStruct1 = DllStructCreate('int64;int64')
Local $tStruct2 = DllStructCreate('byte[8];byte[8]', DllStructGetPtr($tStruct1))
DllStructSetData($tStruct1, 1, $iValue)
For $i = 1 To 8
DllStructSetData($tStruct2, 2, DllStructGetData($tStruct2, 1, 9 - $i), $i)
Next
Return DllStructGetData($tStruct1, 2)
EndFunc
Func _WinAPI_SwapWord($iValue)
Local $tStruct1 = DllStructCreate('word;word')
Local $tStruct2 = DllStructCreate('byte[2];byte[2]', DllStructGetPtr($tStruct1))
DllStructSetData($tStruct1, 1, $iValue)
For $i = 1 To 2
DllStructSetData($tStruct2, 2, DllStructGetData($tStruct2, 1, 3 - $i), $i)
Next
Return DllStructGetData($tStruct1, 2)
EndFunc
Func _WinAPI_WideCharToMultiByte($vUnicode, $iCodePage = 0, $bRetNoStruct = True, $bRetBinary = False)
Local $sUnicodeType = "wstr"
If Not IsString($vUnicode) Then $sUnicodeType = "struct*"
Local $aCall = DllCall("kernel32.dll", "int", "WideCharToMultiByte", "uint", $iCodePage, "dword", 0, $sUnicodeType, $vUnicode, "int", -1,  "ptr", 0, "int", 0, "ptr", 0, "ptr", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 20, @extended, "")
Local $tMultiByte = DllStructCreate((($bRetBinary) ? ("byte") : ("char")) & "[" & $aCall[0] & "]")
$aCall = DllCall("kernel32.dll", "int", "WideCharToMultiByte", "uint", $iCodePage, "dword", 0, $sUnicodeType, $vUnicode,  "int", -1, "struct*", $tMultiByte, "int", $aCall[0], "ptr", 0, "ptr", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, "")
If $bRetNoStruct Then Return DllStructGetData($tMultiByte, 1)
Return $tMultiByte
EndFunc
Func _WinAPI_WordToShort($iValue)
If BitAND($iValue, 0x00008000) Then
Return BitOR($iValue, 0xFFFF8000)
EndIf
Return BitAND($iValue, 0x00007FFF)
EndFunc
Global Const $FORMAT_MESSAGE_ALLOCATE_BUFFER = 0x00000100
Global Const $FORMAT_MESSAGE_IGNORE_INSERTS = 0x00000200
Global Const $FORMAT_MESSAGE_FROM_STRING = 0x00000400
Global Const $FORMAT_MESSAGE_FROM_HMODULE = 0x00000800
Global Const $FORMAT_MESSAGE_FROM_SYSTEM = 0x00001000
Global Const $FORMAT_MESSAGE_ARGUMENT_ARRAY = 0x00002000
Func _WinAPI_Beep($iFreq = 500, $iDuration = 1000)
Local $aCall = DllCall("kernel32.dll", "bool", "Beep", "dword", $iFreq, "dword", $iDuration)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_FormatMessage($iFlags, $pSource, $iMessageID, $iLanguageID, ByRef $pBuffer, $iSize, $vArguments)
Local $sBufferType = "struct*"
If IsString($pBuffer) Then $sBufferType = "wstr"
Local $aCall = DllCall("kernel32.dll", "dword", "FormatMessageW", "dword", $iFlags, "struct*", $pSource, "dword", $iMessageID,  "dword", $iLanguageID, $sBufferType, $pBuffer, "dword", $iSize, "ptr", $vArguments)
If @error Then Return SetError(@error, @extended, 0)
If Not $aCall[0] Then Return SetError(10, _WinAPI_GetLastError(), 0)
If $sBufferType = "wstr" Then $pBuffer = $aCall[5]
Return $aCall[0]
EndFunc
Func _WinAPI_GetErrorMessage($iCode, $iLanguage = 0, Const $_iCallerError = @error, Const $_iCallerExtended = @extended)
Local $aCall = DllCall('kernel32.dll', 'dword', 'FormatMessageW', 'dword', BitOR($FORMAT_MESSAGE_FROM_SYSTEM, $FORMAT_MESSAGE_IGNORE_INSERTS), 'ptr', 0, 'dword', $iCode,  'dword', $iLanguage, 'wstr', '', 'dword', 4096, 'ptr', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return SetError($_iCallerError, $_iCallerExtended, StringRegExpReplace($aCall[5], '[' & @LF & ',' & @CR & ']*\Z', ''))
EndFunc
Func _WinAPI_GetLastError(Const $_iCallerError = @error, Const $_iCallerExtended = @extended)
Local $aCall = DllCall("kernel32.dll", "dword", "GetLastError")
Return SetError($_iCallerError, $_iCallerExtended, $aCall[0])
EndFunc
Func _WinAPI_GetLastErrorMessage(Const $_iCallerError = @error, Const $_iCallerExtended = @extended)
Local $iLastError = _WinAPI_GetLastError()
Local $tBufferPtr = DllStructCreate("ptr")
Local $nCount = _WinAPI_FormatMessage(BitOR($FORMAT_MESSAGE_ALLOCATE_BUFFER, $FORMAT_MESSAGE_FROM_SYSTEM, $FORMAT_MESSAGE_IGNORE_INSERTS),  0, $iLastError, 0, $tBufferPtr, 0, 0)
If @error Then Return SetError(-@error, @extended, "")
Local $sText = ""
Local $pBuffer = DllStructGetData($tBufferPtr, 1)
If $pBuffer Then
If $nCount > 0 Then
Local $tBuffer = DllStructCreate("wchar[" & ($nCount + 1) & "]", $pBuffer)
$sText = DllStructGetData($tBuffer, 1)
If StringRight($sText, 2) = @CRLF Then $sText = StringTrimRight($sText, 2)
EndIf
DllCall("kernel32.dll", "handle", "LocalFree", "handle", $pBuffer)
EndIf
Return SetError($_iCallerError, $_iCallerExtended, $sText)
EndFunc
Func _WinAPI_MessageBeep($iType = 1)
Local $iSound
Switch $iType
Case 1
$iSound = 0
Case 2
$iSound = 16
Case 3
$iSound = 32
Case 4
$iSound = 48
Case 5
$iSound = 64
Case Else
$iSound = -1
EndSwitch
Local $aCall = DllCall("user32.dll", "bool", "MessageBeep", "uint", $iSound)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_MsgBox($iFlags, $sTitle, $sText)
BlockInput(0)
MsgBox($iFlags, $sTitle, $sText & "      ")
EndFunc
Func _WinAPI_SetLastError($iErrorCode, Const $_iCallerError = @error, Const $_iCallerExtended = @extended)
DllCall("kernel32.dll", "none", "SetLastError", "dword", $iErrorCode)
Return SetError($_iCallerError, $_iCallerExtended, Null)
EndFunc
Func _WinAPI_ShowError($sText, $bExit = True)
BlockInput(0)
MsgBox($MB_SYSTEMMODAL, "Error", $sText & "      ")
If $bExit Then Exit
EndFunc
Func _WinAPI_ShowLastError($sText = '', $bAbort = False, $iLanguage = 0, Const $_iCallerError = @error, Const $_iCallerExtended = @extended)
Local $sError
Local $iLastError = _WinAPI_GetLastError()
While 1
$sError = _WinAPI_GetErrorMessage($iLastError, $iLanguage)
If @error And $iLanguage Then
$iLanguage = 0
Else
ExitLoop
EndIf
WEnd
If StringStripWS($sText, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$sText &= @CRLF & @CRLF
Else
$sText = ''
EndIf
_WinAPI_MsgBox(BitOR(0x00040000, BitShift(0x00000010, -2 * (Not $iLastError))), $iLastError, $sText & $sError)
If $iLastError Then
_WinAPI_SetLastError($iLastError)
If $bAbort Then
Exit $iLastError
EndIf
EndIf
Return SetError($_iCallerError, $_iCallerExtended, 1)
EndFunc
Func _WinAPI_ShowMsg($sText)
_WinAPI_MsgBox($MB_SYSTEMMODAL, "Information", $sText)
EndFunc
Func __COMErrorFormating(ByRef $oCOMError, $sPrefix = @TAB)
Local Const $STR_STRIPTRAILING = 2
Local $sError = "COM Error encountered in " & @ScriptName & " (" & $oCOMError.Scriptline & ") :" & @CRLF &  $sPrefix & "Number        " & @TAB & "= 0x" & Hex($oCOMError.Number, 8) & " (" & $oCOMError.Number & ")" & @CRLF &  $sPrefix & "WinDescription" & @TAB & "= " & StringStripWS($oCOMError.WinDescription, $STR_STRIPTRAILING) & @CRLF &  $sPrefix & "Description   " & @TAB & "= " & StringStripWS($oCOMError.Description, $STR_STRIPTRAILING) & @CRLF &  $sPrefix & "Source        " & @TAB & "= " & $oCOMError.Source & @CRLF &  $sPrefix & "HelpFile      " & @TAB & "= " & $oCOMError.HelpFile & @CRLF &  $sPrefix & "HelpContext   " & @TAB & "= " & $oCOMError.HelpContext & @CRLF &  $sPrefix & "LastDllError  " & @TAB & "= " & $oCOMError.LastDllError & @CRLF &  $sPrefix & "Retcode       " & @TAB & "= 0x" & Hex($oCOMError.retcode)
Return $sError
EndFunc
Global Const $DUPLICATE_CLOSE_SOURCE = 0x00000001
Global Const $DUPLICATE_SAME_ACCESS = 0x00000002
Global Const $OBJ_BITMAP = 7
Global Const $OBJ_BRUSH = 2
Global Const $OBJ_COLORSPACE = 14
Global Const $OBJ_DC = 3
Global Const $OBJ_ENHMETADC = 12
Global Const $OBJ_ENHMETAFILE = 13
Global Const $OBJ_EXTPEN = 11
Global Const $OBJ_FONT = 6
Global Const $OBJ_MEMDC = 10
Global Const $OBJ_METADC = 4
Global Const $OBJ_METAFILE = 9
Global Const $OBJ_PAL = 5
Global Const $OBJ_PEN = 1
Global Const $OBJ_REGION = 8
Global Const $NULL_BRUSH = 5
Global Const $NULL_PEN = 8
Global Const $BLACK_BRUSH = 4
Global Const $DKGRAY_BRUSH = 3
Global Const $DC_BRUSH = 18
Global Const $GRAY_BRUSH = 2
Global Const $HOLLOW_BRUSH = $NULL_BRUSH
Global Const $LTGRAY_BRUSH = 1
Global Const $WHITE_BRUSH = 0
Global Const $BLACK_PEN = 7
Global Const $DC_PEN = 19
Global Const $WHITE_PEN = 6
Global Const $ANSI_FIXED_FONT = 11
Global Const $ANSI_VAR_FONT = 12
Global Const $DEVICE_DEFAULT_FONT = 14
Global Const $DEFAULT_GUI_FONT = 17
Global Const $OEM_FIXED_FONT = 10
Global Const $SYSTEM_FONT = 13
Global Const $SYSTEM_FIXED_FONT = 16
Global Const $DEFAULT_PALETTE = 15
Func _WinAPI_CloseHandle($hObject)
Local $aCall = DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hObject)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DeleteObject($hObject)
Local $aCall = DllCall("gdi32.dll", "bool", "DeleteObject", "handle", $hObject)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DuplicateHandle($hSourceProcessHandle, $hSourceHandle, $hTargetProcessHandle, $iDesiredAccess, $iInheritHandle, $iOptions)
Local $aCall = DllCall("kernel32.dll", "bool", "DuplicateHandle",  "handle", $hSourceProcessHandle,  "handle", $hSourceHandle,  "handle", $hTargetProcessHandle,  "handle*", 0,  "dword", $iDesiredAccess,  "bool", $iInheritHandle,  "dword", $iOptions)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[4]
EndFunc
Func _WinAPI_GetCurrentObject($hDC, $iType)
Local $aCall = DllCall('gdi32.dll', 'handle', 'GetCurrentObject', 'handle', $hDC, 'uint', $iType)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetCurrentProcess()
Local $aCall = DllCall("kernel32.dll", "handle", "GetCurrentProcess")
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetObject($hObject, $iSize, $pObject)
Local $aCall = DllCall("gdi32.dll", "int", "GetObjectW", "handle", $hObject, "int", $iSize, "struct*", $pObject)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetObjectInfoByHandle($hObject)
Local $tagPUBLIC_OBJECT_BASIC_INFORMATION = 'ulong Attributes;ulong GrantedAcess;ulong HandleCount;ulong PointerCount;ulong Reserved[10]'
Local $tPOBI = DllStructCreate($tagPUBLIC_OBJECT_BASIC_INFORMATION)
Local $aCall = DllCall('ntdll.dll', 'long', 'ZwQueryObject', 'handle', $hObject, 'uint', 0, 'struct*', $tPOBI,  'ulong', DllStructGetSize($tPOBI), 'ptr', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Local $aRet[4]
For $i = 0 To 3
$aRet[$i] = DllStructGetData($tPOBI, $i + 1)
Next
Return $aRet
EndFunc
Func _WinAPI_GetObjectNameByHandle($hObject)
Local $tagUNICODE_STRING = 'struct;ushort Length;ushort MaximumLength;ptr Buffer;endstruct'
Local $tagPUBLIC_OBJECT_TYPE_INFORMATION = 'struct;' & $tagUNICODE_STRING & ';ulong Reserved[22];endstruct'
Local $tPOTI = DllStructCreate($tagPUBLIC_OBJECT_TYPE_INFORMATION & ';byte[32]')
Local $aCall = DllCall('ntdll.dll', 'long', 'ZwQueryObject', 'handle', $hObject, 'uint', 2, 'struct*', $tPOTI,  'ulong', DllStructGetSize($tPOTI), 'ulong*', 0)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Local $pData = DllStructGetData($tPOTI, 3)
If Not $pData Then Return SetError(11, 0, '')
Return _WinAPI_GetString($pData)
EndFunc
Func _WinAPI_GetObjectType($hObject)
Local $aCall = DllCall('gdi32.dll', 'dword', 'GetObjectType', 'handle', $hObject)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetStdHandle($iStdHandle)
If $iStdHandle < 0 Or $iStdHandle > 2 Then Return SetError(2, 0, -1)
Local Const $aHandle[3] = [-10, -11, -12]
Local $aCall = DllCall("kernel32.dll", "handle", "GetStdHandle", "dword", $aHandle[$iStdHandle])
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_GetStockObject($iObject)
Local $aCall = DllCall("gdi32.dll", "handle", "GetStockObject", "int", $iObject)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SelectObject($hDC, $hGDIObj)
Local $aCall = DllCall("gdi32.dll", "handle", "SelectObject", "handle", $hDC, "handle", $hGDIObj)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetHandleInformation($hObject, $iMask, $iFlags)
Local $aCall = DllCall("kernel32.dll", "bool", "SetHandleInformation", "handle", $hObject, "dword", $iMask, "dword", $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Global $__g_hHeap = 0
Func _WinAPI_CreateBuffer($iLength, $pBuffer = 0, $bAbort = True)
$pBuffer = __HeapReAlloc($pBuffer, $iLength, 0, $bAbort)
If @error Then Return SetError(@error, @extended, 0)
Return $pBuffer
EndFunc
Func _WinAPI_CreateBufferFromStruct($tStruct, $pBuffer = 0, $bAbort = True)
If Not IsDllStruct($tStruct) Then Return SetError(1, 0, 0)
$pBuffer = __HeapReAlloc($pBuffer, DllStructGetSize($tStruct), 0, $bAbort)
If @error Then Return SetError(@error + 100, @extended, 0)
_WinAPI_MoveMemory($pBuffer, $tStruct, DllStructGetSize($tStruct))
Return $pBuffer
EndFunc
Func _WinAPI_CreateString($sString, $pString = 0, $iLength = -1, $bUnicode = True, $bAbort = True)
$iLength = Number($iLength)
If $iLength >= 0 Then
$sString = StringLeft($sString, $iLength)
Else
$iLength = StringLen($sString)
EndIf
Local $iSize = $iLength + 1
If $bUnicode Then
$iSize *= 2
EndIf
$pString = __HeapReAlloc($pString, $iSize, 0, $bAbort)
If @error Then Return SetError(@error, @extended, 0)
DllStructSetData(DllStructCreate(($bUnicode ? 'wchar' : 'char') & '[' & ($iLength + 1) & ']', $pString), 1, $sString)
Return SetExtended($iLength, $pString)
EndFunc
Func _WinAPI_EqualMemory($pSource1, $pSource2, $iLength)
If _WinAPI_IsBadReadPtr($pSource1, $iLength) Then Return SetError(11, @extended, 0)
If _WinAPI_IsBadReadPtr($pSource2, $iLength) Then Return SetError(12, @extended, 0)
Local $aCall = DllCall('ntdll.dll', 'ulong_ptr', 'RtlCompareMemory', 'struct*', $pSource1, 'struct*', $pSource2, 'ulong_ptr', $iLength)
If @error Then Return SetError(@error, @extended, 0)
Return Number($aCall[0] = $iLength)
EndFunc
Func _WinAPI_FillMemory($pMemory, $iLength, $iValue = 0)
If _WinAPI_IsBadWritePtr($pMemory, $iLength) Then Return SetError(11, @extended, 0)
DllCall('ntdll.dll', 'none', 'RtlFillMemory', 'struct*', $pMemory, 'ulong_ptr', $iLength, 'byte', $iValue)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_FreeMemory($pMemory)
If Not __HeapFree($pMemory, 1) Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_GetMemorySize($pMemory)
Local $iResult = __HeapSize($pMemory, 1)
If @error Then Return SetError(@error, @extended, 0)
Return $iResult
EndFunc
Func _WinAPI_GlobalMemoryStatus()
Local Const $tagMEMORYSTATUSEX = "dword Length;dword MemoryLoad;" &  "uint64 TotalPhys;uint64 AvailPhys;uint64 TotalPageFile;uint64 AvailPageFile;" &  "uint64 TotalVirtual;uint64 AvailVirtual;uint64 AvailExtendedVirtual"
Local $tMem = DllStructCreate($tagMEMORYSTATUSEX)
DllStructSetData($tMem, 1, DllStructGetSize($tMem))
Local $aCall = DllCall("kernel32.dll", "bool", "GlobalMemoryStatusEx", "struct*", $tMem)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aMem[7]
$aMem[0] = DllStructGetData($tMem, 2)
$aMem[1] = DllStructGetData($tMem, 3)
$aMem[2] = DllStructGetData($tMem, 4)
$aMem[3] = DllStructGetData($tMem, 5)
$aMem[4] = DllStructGetData($tMem, 6)
$aMem[5] = DllStructGetData($tMem, 7)
$aMem[6] = DllStructGetData($tMem, 8)
Return $aMem
EndFunc
Func _WinAPI_IsBadCodePtr($pAddress)
Local $aCall = DllCall('kernel32.dll', 'bool', 'IsBadCodePtr', 'struct*', $pAddress)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsBadReadPtr($pAddress, $iLength)
Local $aCall = DllCall('kernel32.dll', 'bool', 'IsBadReadPtr', 'struct*', $pAddress, 'uint_ptr', $iLength)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsBadStringPtr($pAddress, $iLength)
Local $aCall = DllCall('kernel32.dll', 'bool', 'IsBadStringPtr', 'struct*', $pAddress, 'uint_ptr', $iLength)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsBadWritePtr($pAddress, $iLength)
Local $aCall = DllCall('kernel32.dll', 'bool', 'IsBadWritePtr', 'struct*', $pAddress, 'uint_ptr', $iLength)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsMemory($pMemory)
Local $bResult = __HeapValidate($pMemory)
Return SetError(@error, @extended, $bResult)
EndFunc
Func _WinAPI_LocalFree($hMemory)
Local $aCall = DllCall("kernel32.dll", "handle", "LocalFree", "handle", $hMemory)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_MoveMemory($pDestination, $pSource, $iLength)
If _WinAPI_IsBadReadPtr($pSource, $iLength) Then Return SetError(10, @extended, 0)
If _WinAPI_IsBadWritePtr($pDestination, $iLength) Then Return SetError(11, @extended, 0)
DllCall('ntdll.dll', 'none', 'RtlMoveMemory', 'struct*', $pDestination, 'struct*', $pSource, 'ulong_ptr', $iLength)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_ReadProcessMemory($hProcess, $pBaseAddress, $pBuffer, $iSize, ByRef $iRead)
Local $aCall = DllCall("kernel32.dll", "bool", "ReadProcessMemory", "handle", $hProcess,  "ptr", $pBaseAddress, "struct*", $pBuffer, "ulong_ptr", $iSize, "ulong_ptr*", 0)
If @error Then Return SetError(@error, @extended, False)
$iRead = $aCall[5]
Return $aCall[0]
EndFunc
Func _WinAPI_WriteProcessMemory($hProcess, $pBaseAddress, $pBuffer, $iSize, ByRef $iWritten, $sBufferType = "ptr")
Local $aCall = DllCall("kernel32.dll", "bool", "WriteProcessMemory", "handle", $hProcess, "ptr", $pBaseAddress,  $sBufferType, $pBuffer, "ulong_ptr", $iSize, "ulong_ptr*", 0)
If @error Then Return SetError(@error, @extended, False)
$iWritten = $aCall[5]
Return $aCall[0]
EndFunc
Func _WinAPI_ZeroMemory($pMemory, $iLength)
If _WinAPI_IsBadWritePtr($pMemory, $iLength) Then Return SetError(11, @extended, 0)
DllCall('ntdll.dll', 'none', 'RtlZeroMemory', 'struct*', $pMemory, 'ulong_ptr', $iLength)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func __HeapAlloc($iSize, $bAbort = False)
Local $aCall
If Not $__g_hHeap Then
$aCall = DllCall('kernel32.dll', 'handle', 'HeapCreate', 'dword', 0, 'ulong_ptr', 0, 'ulong_ptr', 0)
If @error Or Not $aCall[0] Then __FatalExit(1, 'Error allocating memory.')
$__g_hHeap = $aCall[0]
EndIf
$aCall = DllCall('kernel32.dll', 'ptr', 'HeapAlloc', 'handle', $__g_hHeap, 'dword', 0x00000008, 'ulong_ptr', $iSize)
If @error Or Not $aCall[0] Then
If $bAbort Then __FatalExit(1, 'Error allocating memory.')
Return SetError(@error + 30, @extended, 0)
EndIf
Return $aCall[0]
EndFunc
Func __HeapFree(ByRef $pMemory, $bCheck = False, $iCurErr = @error, $iCurExt = @extended)
If $bCheck And (Not __HeapValidate($pMemory)) Then Return SetError(@error, @extended, 0)
Local $aCall = DllCall('kernel32.dll', 'int', 'HeapFree', 'handle', $__g_hHeap, 'dword', 0, 'ptr', $pMemory)
If @error Or Not $aCall[0] Then Return SetError(@error + 40, @extended, 0)
$pMemory = 0
Return SetError($iCurErr, $iCurExt, 1)
EndFunc
Func __HeapReAlloc($pMemory, $iSize, $bAmount = False, $bAbort = False)
Local $pRet
If __HeapValidate($pMemory) Then
If $bAmount And (__HeapSize($pMemory) >= $iSize) Then Return SetExtended(1, Ptr($pMemory))
Local $aCall = DllCall('kernel32.dll', 'ptr', 'HeapReAlloc', 'handle', $__g_hHeap, 'dword', 0x00000008, 'ptr', $pMemory,  'ulong_ptr', $iSize)
If @error Or Not $aCall[0] Then
If $bAbort Then __FatalExit(1, 'Error allocating memory.')
Return SetError(@error + 20, @extended, Ptr($pMemory))
EndIf
$pRet = $aCall[0]
Else
$pRet = __HeapAlloc($iSize, $bAbort)
If @error Then Return SetError(@error, @extended, 0)
EndIf
Return $pRet
EndFunc
Func __HeapSize($pMemory, $bCheck = False)
If $bCheck And (Not __HeapValidate($pMemory)) Then Return SetError(@error, @extended, 0)
Local $aCall = DllCall('kernel32.dll', 'ulong_ptr', 'HeapSize', 'handle', $__g_hHeap, 'dword', 0, 'ptr', $pMemory)
If @error Or ($aCall[0] = Ptr(-1)) Then Return SetError(@error + 50, @extended, 0)
Return $aCall[0]
EndFunc
Func __HeapValidate($pMemory)
If (Not $__g_hHeap) Or (Not Ptr($pMemory)) Then Return SetError(9, 0, False)
Local $aCall = DllCall('kernel32.dll', 'int', 'HeapValidate', 'handle', $__g_hHeap, 'dword', 0, 'ptr', $pMemory)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Global Const $SND_APPLICATION = 0x00000080
Global Const $SND_ALIAS = 0x00010000
Global Const $SND_ALIAS_ID = 0x00110000
Global Const $SND_ASYNC = 0x00000001
Global Const $SND_FILENAME = 0x00020000
Global Const $SND_LOOP = 0x00000008
Global Const $SND_MEMORY = 0x00000004
Global Const $SND_NODEFAULT = 0x00000002
Global Const $SND_NOSTOP = 0x00000010
Global Const $SND_NOWAIT = 0x00002000
Global Const $SND_PURGE = 0x00000040
Global Const $SND_RESOURCE = 0x00040004
Global Const $SND_SENTRY = 0x00080000
Global Const $SND_SYNC = 0x00000000
Global Const $SND_SYSTEM = 0x00200000
Global Const $SND_SYSTEM_NOSTOP = 0x00200010
Global Const $SND_ALIAS_SYSTEMASTERISK = 'SystemAsterisk'
Global Const $SND_ALIAS_SYSTEMDEFAULT = 'SystemDefault'
Global Const $SND_ALIAS_SYSTEMEXCLAMATION = 'SystemExclamation'
Global Const $SND_ALIAS_SYSTEMEXIT = 'SystemExit'
Global Const $SND_ALIAS_SYSTEMHAND = 'SystemHand'
Global Const $SND_ALIAS_SYSTEMQUESTION = 'SystemQuestion'
Global Const $SND_ALIAS_SYSTEMSTART = 'SystemStart'
Global Const $SND_ALIAS_SYSTEMWELCOME = 'SystemWelcome'
Func _WinAPI_ArrayToStruct(Const ByRef $aData, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aData, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)
Local $tagStruct = ''
For $i = $iStart To $iEnd
$tagStruct &= 'wchar[' & (StringLen($aData[$i]) + 1) & '];'
Next
Local $tData = DllStructCreate($tagStruct & 'wchar[1]')
Local $iCount = 1
For $i = $iStart To $iEnd
DllStructSetData($tData, $iCount, $aData[$i])
$iCount += 1
Next
DllStructSetData($tData, $iCount, ChrW(0))
Return $tData
EndFunc
Func _WinAPI_CreateMargins($iLeftWidth, $iRightWidth, $iTopHeight, $iBottomHeight)
Local $tMARGINS = DllStructCreate($tagMARGINS)
DllStructSetData($tMARGINS, 1, $iLeftWidth)
DllStructSetData($tMARGINS, 2, $iRightWidth)
DllStructSetData($tMARGINS, 3, $iTopHeight)
DllStructSetData($tMARGINS, 4, $iBottomHeight)
Return $tMARGINS
EndFunc
Func _WinAPI_CreatePoint($iX, $iY)
Local $tPOINT = DllStructCreate($tagPOINT)
DllStructSetData($tPOINT, 1, $iX)
DllStructSetData($tPOINT, 2, $iY)
Return $tPOINT
EndFunc
Func _WinAPI_CreateRect($iLeft, $iTop, $iRight, $iBottom)
Local $tRECT = DllStructCreate($tagRECT)
DllStructSetData($tRECT, 1, $iLeft)
DllStructSetData($tRECT, 2, $iTop)
DllStructSetData($tRECT, 3, $iRight)
DllStructSetData($tRECT, 4, $iBottom)
Return $tRECT
EndFunc
Func _WinAPI_CreateRectEx($iX, $iY, $iWidth, $iHeight)
Local $tRECT = DllStructCreate($tagRECT)
DllStructSetData($tRECT, 1, $iX)
DllStructSetData($tRECT, 2, $iY)
DllStructSetData($tRECT, 3, $iX + $iWidth)
DllStructSetData($tRECT, 4, $iY + $iHeight)
Return $tRECT
EndFunc
Func _WinAPI_CreateSize($iWidth, $iHeight)
Local $tSIZE = DllStructCreate($tagSIZE)
DllStructSetData($tSIZE, 1, $iWidth)
DllStructSetData($tSIZE, 2, $iHeight)
Return $tSIZE
EndFunc
Func _WinAPI_CopyStruct($tStruct, $sStruct = '')
Local $iSize = DllStructGetSize($tStruct)
If Not $iSize Then Return SetError(1, 0, 0)
Local $tResult
If Not StringStripWS($sStruct, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES) Then
$tResult = DllStructCreate('byte[' & $iSize & ']')
Else
$tResult = DllStructCreate($sStruct)
EndIf
If DllStructGetSize($tResult) < $iSize Then Return SetError(2, 0, 0)
_WinAPI_MoveMemory($tResult, $tStruct, $iSize)
Return $tResult
EndFunc
Func _WinAPI_GetExtended()
Return $__g_vExt
EndFunc
Func _WinAPI_GetMousePos($bToClient = False, $hWnd = 0)
Local $iMode = Opt("MouseCoordMode", 1)
Local $aPos = MouseGetPos()
Opt("MouseCoordMode", $iMode)
Local $tPOINT = DllStructCreate($tagPOINT)
DllStructSetData($tPOINT, "X", $aPos[0])
DllStructSetData($tPOINT, "Y", $aPos[1])
If $bToClient And Not _WinAPI_ScreenToClient($hWnd, $tPOINT) Then Return SetError(@error + 20, @extended, 0)
Return $tPOINT
EndFunc
Func _WinAPI_GetMousePosX($bToClient = False, $hWnd = 0)
Local $tPOINT = _WinAPI_GetMousePos($bToClient, $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return DllStructGetData($tPOINT, "X")
EndFunc
Func _WinAPI_GetMousePosY($bToClient = False, $hWnd = 0)
Local $tPOINT = _WinAPI_GetMousePos($bToClient, $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return DllStructGetData($tPOINT, "Y")
EndFunc
Func _WinAPI_MulDiv($iNumber, $iNumerator, $iDenominator)
Local $aCall = DllCall("kernel32.dll", "int", "MulDiv", "int", $iNumber, "int", $iNumerator, "int", $iDenominator)
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_PlaySound($sSound, $iFlags = $SND_SYSTEM_NOSTOP, $hInstance = 0)
Local $sTypeOfSound = 'ptr'
If $sSound Then
If IsString($sSound) Then
$sTypeOfSound = 'wstr'
EndIf
Else
$sSound = 0
$iFlags = 0
EndIf
Local $aCall = DllCall('winmm.dll', 'bool', 'PlaySoundW', $sTypeOfSound, $sSound, 'handle', $hInstance, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_StringLenA(Const ByRef $tString)
Local $aCall = DllCall("kernel32.dll", "int", "lstrlenA", "struct*", $tString)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_StringLenW(Const ByRef $tString)
Local $aCall = DllCall("kernel32.dll", "int", "lstrlenW", "struct*", $tString)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_StructToArray(ByRef $tStruct, $iItems = 0)
Local $iSize = 2 * Floor(DllStructGetSize($tStruct) / 2)
Local $pStruct = DllStructGetPtr($tStruct)
If Not $iSize Or Not $pStruct Then Return SetError(1, 0, 0)
Local $tData, $iLength, $iOffset = 0
Local $aRet[101] = [0]
While 1
$iLength = _WinAPI_StrLen($pStruct + $iOffset)
If Not $iLength Then
ExitLoop
EndIf
If 2 * (1 + $iLength) + $iOffset > $iSize Then Return SetError(3, 0, 0)
$tData = DllStructCreate('wchar[' & (1 + $iLength) & ']', $pStruct + $iOffset)
If @error Then Return SetError(@error + 10, 0, 0)
__Inc($aRet)
$aRet[$aRet[0]] = DllStructGetData($tData, 1)
If $aRet[0] = $iItems Then
ExitLoop
EndIf
$iOffset += 2 * (1 + $iLength)
If $iOffset >= $iSize Then Return SetError(3, 0, 0)
WEnd
If Not $aRet[0] Then Return SetError(2, 0, 0)
__Inc($aRet, -1)
Return $aRet
EndFunc
Func _WinAPI_UnionStruct($tStruct1, $tStruct2, $sStruct = '')
Local $aSize[2] = [DllStructGetSize($tStruct1), DllStructGetSize($tStruct2)]
If Not $aSize[0] Or Not $aSize[1] Then Return SetError(1, 0, 0)
Local $tResult
If Not StringStripWS($sStruct, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES) Then
$tResult = DllStructCreate('byte[' & ($aSize[0] + $aSize[1]) & ']')
Else
$tResult = DllStructCreate($sStruct)
EndIf
If DllStructGetSize($tResult) < ($aSize[0] + $aSize[1]) Then Return SetError(2, 0, 0)
_WinAPI_MoveMemory($tResult, $tStruct1, $aSize[0])
_WinAPI_MoveMemory(DllStructGetPtr($tResult) + $aSize[0], $tStruct2, $aSize[1])
Return $tResult
EndFunc
Global Const $tagBITMAP = 'struct;long bmType;long bmWidth;long bmHeight;long bmWidthBytes;ushort bmPlanes;ushort bmBitsPixel;ptr bmBits;endstruct'
Global Const $tagBITMAPV5HEADER = 'struct;dword bV5Size;long bV5Width;long bV5Height;ushort bV5Planes;ushort bV5BitCount;dword bV5Compression;dword bV5SizeImage;long bV5XPelsPerMeter;long bV5YPelsPerMeter;dword bV5ClrUsed;dword bV5ClrImportant;dword bV5RedMask;dword bV5GreenMask;dword bV5BlueMask;dword bV5AlphaMask;dword bV5CSType;int bV5Endpoints[9];dword bV5GammaRed;dword bV5GammaGreen;dword bV5GammaBlue;dword bV5Intent;dword bV5ProfileData;dword bV5ProfileSize;dword bV5Reserved;endstruct'
Global Const $tagDIBSECTION = $tagBITMAP & ';' & $tagBITMAPINFOHEADER & ';dword dsBitfields[3];ptr dshSection;dword dsOffset'
Global Const $TMPF_FIXED_PITCH = 0x01
Global Const $TMPF_VECTOR = 0x02
Global Const $TMPF_TRUETYPE = 0x04
Global Const $TMPF_DEVICE = 0x08
Global Const $__WINAPICONSTANT_FW_NORMAL = 400
Global Const $__WINAPICONSTANT_DEFAULT_CHARSET = 1
Global Const $__WINAPICONSTANT_OUT_DEFAULT_PRECIS = 0
Global Const $__WINAPICONSTANT_CLIP_DEFAULT_PRECIS = 0
Global Const $__WINAPICONSTANT_DEFAULT_QUALITY = 0
Func _WinAPI_BitBlt($hDestDC, $iXDest, $iYDest, $iWidth, $iHeight, $hSrcDC, $iXSrc, $iYSrc, $iROP)
Local $aCall = DllCall("gdi32.dll", "bool", "BitBlt", "handle", $hDestDC, "int", $iXDest, "int", $iYDest, "int", $iWidth,  "int", $iHeight, "handle", $hSrcDC, "int", $iXSrc, "int", $iYSrc, "dword", $iROP)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CombineRgn($hRgnDest, $hRgnSrc1, $hRgnSrc2, $iCombineMode)
Local $aCall = DllCall("gdi32.dll", "int", "CombineRgn", "handle", $hRgnDest, "handle", $hRgnSrc1, "handle", $hRgnSrc2,  "int", $iCombineMode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CopyBitmap($hBitmap)
$hBitmap = _WinAPI_CopyImage($hBitmap, 0, 0, 0, 0x2000)
Return SetError(@error, @extended, $hBitmap)
EndFunc
Func _WinAPI_CopyImage($hImage, $iType = 0, $iXDesiredPixels = 0, $iYDesiredPixels = 0, $iFlags = 0)
Local $aCall = DllCall('user32.dll', 'handle', 'CopyImage', 'handle', $hImage, 'uint', $iType,  'int', $iXDesiredPixels, 'int', $iYDesiredPixels, 'uint', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateANDBitmap($hBitmap)
Local $iError = 0, $hDib = 0
$hBitmap = _WinAPI_CopyBitmap($hBitmap)
If Not $hBitmap Then Return SetError(@error + 20, @extended, 0)
Do
Local $atDIB[2]
$atDIB[0] = DllStructCreate($tagDIBSECTION)
If (Not _WinAPI_GetObject($hBitmap, DllStructGetSize($atDIB[0]), $atDIB[0]))  Or (DllStructGetData($atDIB[0], 'bmBitsPixel') <> 32) Or (DllStructGetData($atDIB[0], 'biCompression')) Then
$iError = 10
ExitLoop
EndIf
$atDIB[1] = DllStructCreate($tagBITMAP)
$hDib = _WinAPI_CreateDIB(DllStructGetData($atDIB[0], 'bmWidth'), DllStructGetData($atDIB[0], 'bmHeight'), 1)
If Not _WinAPI_GetObject($hDib, DllStructGetSize($atDIB[1]), $atDIB[1]) Then
$iError = 11
ExitLoop
EndIf
Local $aCall = DllCall('user32.dll', 'lresult', 'CallWindowProc', 'ptr', __ANDProc(), 'ptr', 0, 'uint', 0,  'wparam', DllStructGetPtr($atDIB[0]), 'lparam', DllStructGetPtr($atDIB[1]))
If @error Then
$iError = @error
ExitLoop
EndIf
If Not $aCall[0] Then
$iError = 12
ExitLoop
EndIf
$iError = 0
Until 1
_WinAPI_DeleteObject($hBitmap)
If $iError Then
If $hDib Then
_WinAPI_DeleteObject($hDib)
EndIf
$hDib = 0
EndIf
Return SetError($iError, 0, $hDib)
EndFunc
Func _WinAPI_CreateBitmap($iWidth, $iHeight, $iPlanes = 1, $iBitsPerPel = 1, $pBits = 0)
Local $aCall = DllCall("gdi32.dll", "handle", "CreateBitmap", "int", $iWidth, "int", $iHeight, "uint", $iPlanes,  "uint", $iBitsPerPel, "struct*", $pBits)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateCompatibleBitmap($hDC, $iWidth, $iHeight)
Local $aCall = DllCall("gdi32.dll", "handle", "CreateCompatibleBitmap", "handle", $hDC, "int", $iWidth, "int", $iHeight)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateDIB($iWidth, $iHeight, $iBitsPerPel = 32, $tColorTable = 0, $iColorCount = 0)
Local $aRGBQ[2], $iColors, $tagRGBQ
Switch $iBitsPerPel
Case 1
$iColors = 2
Case 4
$iColors = 16
Case 8
$iColors = 256
Case Else
$iColors = 0
EndSwitch
If $iColors Then
If Not IsDllStruct($tColorTable) Then
Switch $iBitsPerPel
Case 1
$aRGBQ[0] = 0
$aRGBQ[1] = 0xFFFFFF
$tColorTable = _WinAPI_CreateDIBColorTable($aRGBQ)
Case Else
EndSwitch
Else
If $iColors > $iColorCount Then
$iColors = $iColorCount
EndIf
If (Not $iColors) Or ((4 * $iColors) > DllStructGetSize($tColorTable)) Then
Return SetError(20, 0, 0)
EndIf
EndIf
$tagRGBQ = ';dword aRGBQuad[' & $iColors & ']'
Else
$tagRGBQ = ''
EndIf
Local $tBITMAPINFO = DllStructCreate($tagBITMAPINFOHEADER & $tagRGBQ)
DllStructSetData($tBITMAPINFO, 'biSize', 40)
DllStructSetData($tBITMAPINFO, 'biWidth', $iWidth)
DllStructSetData($tBITMAPINFO, 'biHeight', $iHeight)
DllStructSetData($tBITMAPINFO, 'biPlanes', 1)
DllStructSetData($tBITMAPINFO, 'biBitCount', $iBitsPerPel)
DllStructSetData($tBITMAPINFO, 'biCompression', 0)
DllStructSetData($tBITMAPINFO, 'biSizeImage', 0)
DllStructSetData($tBITMAPINFO, 'biXPelsPerMeter', 0)
DllStructSetData($tBITMAPINFO, 'biYPelsPerMeter', 0)
DllStructSetData($tBITMAPINFO, 'biClrUsed', $iColors)
DllStructSetData($tBITMAPINFO, 'biClrImportant', 0)
If $iColors Then
If IsDllStruct($tColorTable) Then
_WinAPI_MoveMemory(DllStructGetPtr($tBITMAPINFO, 'aRGBQuad'), $tColorTable, 4 * $iColors)
Else
_WinAPI_ZeroMemory(DllStructGetPtr($tBITMAPINFO, 'aRGBQuad'), 4 * $iColors)
EndIf
EndIf
Local $hBitmap = _WinAPI_CreateDIBSection(0, $tBITMAPINFO, 0, $__g_vExt)
If Not $hBitmap Then Return SetError(@error, @extended, 0)
Return $hBitmap
EndFunc
Func _WinAPI_CreateDIBSection($hDC, $tBITMAPINFO, $iUsage, ByRef $pBits, $hSection = 0, $iOffset = 0)
$pBits = 0
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateDIBSection', 'handle', $hDC, 'struct*', $tBITMAPINFO, 'uint', $iUsage,  'ptr*', 0, 'handle', $hSection, 'dword', $iOffset)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
$pBits = $aCall[4]
Return $aCall[0]
EndFunc
Func _WinAPI_CreateDIBColorTable(Const ByRef $aColorTable, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aColorTable, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)
Local $tColorTable = DllStructCreate('dword[' & ($iEnd - $iStart + 1) & ']')
Local $iCount = 1
For $i = $iStart To $iEnd
DllStructSetData($tColorTable, 1, _WinAPI_SwitchColor(__RGB($aColorTable[$i])), $iCount)
$iCount += 1
Next
Return $tColorTable
EndFunc
Func _WinAPI_CreateFont($iHeight, $iWidth, $iEscape = 0, $iOrientn = 0, $iWeight = $__WINAPICONSTANT_FW_NORMAL, $bItalic = False, $bUnderline = False, $bStrikeout = False, $iCharset = $__WINAPICONSTANT_DEFAULT_CHARSET, $iOutputPrec = $__WINAPICONSTANT_OUT_DEFAULT_PRECIS, $iClipPrec = $__WINAPICONSTANT_CLIP_DEFAULT_PRECIS, $iQuality = $__WINAPICONSTANT_DEFAULT_QUALITY, $iPitch = 0, $sFace = 'Arial')
Local $aCall = DllCall("gdi32.dll", "handle", "CreateFontW", "int", $iHeight, "int", $iWidth, "int", $iEscape,  "int", $iOrientn, "int", $iWeight, "dword", $bItalic, "dword", $bUnderline, "dword", $bStrikeout,  "dword", $iCharset, "dword", $iOutputPrec, "dword", $iClipPrec, "dword", $iQuality, "dword", $iPitch, "wstr", $sFace)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateFontIndirect($tLogFont)
Local $aCall = DllCall("gdi32.dll", "handle", "CreateFontIndirectW", "struct*", $tLogFont)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateRectRgn($iLeftRect, $iTopRect, $iRightRect, $iBottomRect)
Local $aCall = DllCall("gdi32.dll", "handle", "CreateRectRgn", "int", $iLeftRect, "int", $iTopRect, "int", $iRightRect,  "int", $iBottomRect)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateRoundRectRgn($iLeftRect, $iTopRect, $iRightRect, $iBottomRect, $iWidthEllipse, $iHeightEllipse)
Local $aCall = DllCall("gdi32.dll", "handle", "CreateRoundRectRgn", "int", $iLeftRect, "int", $iTopRect,  "int", $iRightRect, "int", $iBottomRect, "int", $iWidthEllipse, "int", $iHeightEllipse)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateSolidBrush($iColor)
Local $aCall = DllCall("gdi32.dll", "handle", "CreateSolidBrush", "INT", $iColor)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetBitmapDimension($hBitmap)
Local $tObj = DllStructCreate($tagBITMAP)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetObject', 'handle', $hBitmap, 'int', DllStructGetSize($tObj), 'struct*', $tObj)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return _WinAPI_CreateSize(DllStructGetData($tObj, 'bmWidth'), DllStructGetData($tObj, 'bmHeight'))
EndFunc
Func _WinAPI_GetSysColorBrush($iIndex)
Local $aCall = DllCall("user32.dll", "handle", "GetSysColorBrush", "int", $iIndex)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetTextExtentPoint32($hDC, $sText)
Local $tSize = DllStructCreate($tagSIZE)
Local $iSize = StringLen($sText)
Local $aCall = DllCall("gdi32.dll", "bool", "GetTextExtentPoint32W", "handle", $hDC, "wstr", $sText, "int", $iSize, "struct*", $tSize)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tSize
EndFunc
Func _WinAPI_GetTextMetrics($hDC)
Local $tTEXTMETRIC = DllStructCreate($tagTEXTMETRIC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'GetTextMetricsW', 'handle', $hDC, 'struct*', $tTEXTMETRIC)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tTEXTMETRIC
EndFunc
Func _WinAPI_GetWindowRgn($hWnd, $hRgn)
Local $aCall = DllCall("user32.dll", "int", "GetWindowRgn", "hwnd", $hWnd, "handle", $hRgn)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_IsAlphaBitmap($hBitmap)
$hBitmap = _WinAPI_CopyBitmap($hBitmap)
If Not $hBitmap Then Return SetError(@error + 20, @extended, 0)
Local $aCall, $iError = 0
Do
Local $tDIB = DllStructCreate($tagDIBSECTION)
If (Not _WinAPI_GetObject($hBitmap, DllStructGetSize($tDIB), $tDIB)) Or (DllStructGetData($tDIB, 'bmBitsPixel') <> 32) Or (DllStructGetData($tDIB, 'biCompression')) Then
$iError = 1
ExitLoop
EndIf
$aCall = DllCall('user32.dll', 'int', 'CallWindowProc', 'ptr', __AlphaProc(), 'ptr', 0, 'uint', 0, 'struct*', $tDIB, 'ptr', 0)
If @error Or ($aCall[0] = -1) Then
$iError = @error + 10
ExitLoop
EndIf
Until 1
_WinAPI_DeleteObject($hBitmap)
If $iError Then Return SetError($iError, 0, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_PtInRect(ByRef $tRECT, ByRef $tPoint)
Local $aCall = DllCall("user32.dll", "bool", "PtInRect", "struct*", $tRECT, "struct", $tPoint)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_RedrawWindow($hWnd, $tRECT = 0, $hRegion = 0, $iFlags = 5)
Local $aCall = DllCall("user32.dll", "bool", "RedrawWindow", "hwnd", $hWnd, "struct*", $tRECT, "handle", $hRegion,  "uint", $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWindowRgn($hWnd, $hRgn, $bRedraw = True)
Local $aCall = DllCall("user32.dll", "int", "SetWindowRgn", "hwnd", $hWnd, "handle", $hRgn, "bool", $bRedraw)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func __AlphaProc()
Static $pProc = 0
If Not $pProc Then
If @AutoItX64 Then
$pProc = __Init(Binary(  '0x48894C240848895424104C894424184C894C24205541574831C050504883EC28' &  '48837C24600074054831C0EB0748C7C0010000004821C0751F488B6C24604883' &  '7D180074054831C0EB0748C7C0010000004821C07502EB0948C7C001000000EB' &  '034831C04821C0740C48C7C0FFFFFFFF4863C0EB6F48C744242800000000488B' &  '6C24604C637D04488B6C2460486345084C0FAFF849C1E7024983C7FC4C3B7C24' &  '287C36488B6C24604C8B7D184C037C24284983C7034C897C2430488B6C243080' &  '7D0000740C48C7C0010000004863C0EB1348834424280471A54831C04863C0EB' &  '034831C04883C438415F5DC3'))
Else
$pProc = __Init(Binary(  '0x555331C05050837C241C00740431C0EB05B80100000021C075198B6C241C837D' &  '1400740431C0EB05B80100000021C07502EB07B801000000EB0231C021C07407' &  'B8FFFFFFFFEB4FC70424000000008B6C241C8B5D048B6C241C0FAF5D08C1E302' &  '83C3FC3B1C247C288B6C241C8B5D14031C2483C303895C24048B6C2404807D00' &  '007407B801000000EB0C8304240471BE31C0EB0231C083C4085B5DC21000'))
EndIf
EndIf
Return $pProc
EndFunc
Func __ANDProc()
Static $pProc = 0
If Not $pProc Then
If @AutoItX64 Then
$pProc = __Init(Binary(  '0x48894C240848895424104C894424184C894C2420554157415648C7C009000000' &  '4883EC0848C704240000000048FFC875EF4883EC284883BC24A0000000007405' &  '4831C0EB0748C7C0010000004821C00F85840000004883BC24A8000000007405' &  '4831C0EB0748C7C0010000004821C07555488BAC24A000000048837D18007405' &  '4831C0EB0748C7C0010000004821C07522488BAC24A800000048837D18007405' &  '4831C0EB0748C7C0010000004821C07502EB0948C7C001000000EB034831C048' &  '21C07502EB0948C7C001000000EB034831C04821C07502EB0948C7C001000000' &  'EB034831C04821C0740B4831C04863C0E9D701000048C74424280000000048C7' &  '44243000000000488BAC24A00000004C637D0849FFCF4C3B7C24300F8C9C0100' &  '0048C74424380000000048C74424400000000048C744244800000000488BAC24' &  'A00000004C637D0449FFCF4C3B7C24480F8CDB000000488BAC24A00000004C8B' &  '7D184C037C24284983C7034C897C2450488B6C2450807D000074264C8B7C2440' &  '4C8B74243849F7DE4983C61F4C89F148C7C00100000048D3E04909C74C897C24' &  '4048FF4424384C8B7C24384983FF1F7E6F4C8B7C244049F7D74C897C244048C7' &  '442458180000004831C0483B4424587F3D488BAC24A80000004C8B7D184C037C' &  '24604C897C24504C8B7C2440488B4C245849D3FF4C89F850488B6C2458588845' &  '0048FF4424604883442458F871B948C74424380000000048C744244000000000' &  '48834424280448FF4424480F810BFFFFFF48837C24380074794C8B7C244049F7' &  'D74C8B74243849F7DE4983C6204C89F148C7C0FFFFFFFF48D3E04921C74C897C' &  '244048C7442458180000004831C0483B4424587F3D488BAC24A80000004C8B7D' &  '184C037C24604C897C24504C8B7C2440488B4C245849D3FF4C89F850488B6C24' &  '585888450048FF4424604883442458F871B948FF4424300F814AFEFFFF48C7C0' &  '010000004863C0EB034831C04883C470415E415F5DC3'))
Else
$pProc = __Init(Binary(  '0x555357BA0800000083EC04C70424000000004A75F3837C243800740431C0EB05' &  'B80100000021C07562837C243C00740431C0EB05B80100000021C0753F8B6C24' &  '38837D1400740431C0EB05B80100000021C075198B6C243C837D1400740431C0' &  'EB05B80100000021C07502EB07B801000000EB0231C021C07502EB07B8010000' &  '00EB0231C021C07502EB07B801000000EB0231C021C0740731C0E969010000C7' &  '042400000000C7442404000000008B6C24388B5D084B3B5C24040F8C3F010000' &  'C744240800000000C744240C00000000C7442410000000008B6C24388B5D044B' &  '3B5C24100F8CA90000008B6C24388B5D14031C2483C303895C24148B6C241480' &  '7D0000741C8B5C240C8B7C2408F7DF83C71F89F9B801000000D3E009C3895C24' &  '0CFF4424088B5C240883FB1F7E578B5C240CF7D3895C240CC744241818000000' &  '31C03B4424187F2D8B6C243C8B5D14035C241C895C24148B5C240C8B4C2418D3' &  'FB538B6C241858884500FF44241C83442418F871CBC744240800000000C74424' &  '0C0000000083042404FF4424100F8145FFFFFF837C240800745B8B5C240CF7D3' &  '8B7C2408F7DF83C72089F9B8FFFFFFFFD3E021C3895C240CC744241818000000' &  '31C03B4424187F2D8B6C243C8B5D14035C241C895C24148B5C240C8B4C2418D3' &  'FB538B6C241858884500FF44241C83442418F871CBFF4424040F81AFFEFFFFB8' &  '01000000EB0231C083C4205F5B5DC21000'))
EndIf
EndIf
Return $pProc
EndFunc
Func __XORProc()
Static $pProc = 0
If Not $pProc Then
If @AutoItX64 Then
$pProc = __Init(Binary(  '0x48894C240848895424104C894424184C894C24205541574831C050504883EC28' &  '48837C24600074054831C0EB0748C7C0010000004821C0751B48837C24680074' &  '054831C0EB0748C7C0010000004821C07502EB0948C7C001000000EB034831C0' &  '4821C074084831C04863C0EB7748C7442428000000004C637C24584983C7FC4C' &  '3B7C24287C4F4C8B7C24604C037C24284C897C2430488B6C2430807D00007405' &  '4831C0EB0748C7C0010000004821C0741C4C8B7C24684C037C24284983C7034C' &  '897C2430488B6C2430C64500FF48834424280471A148C7C0010000004863C0EB' &  '034831C04883C438415F5DC3'))
Else
$pProc = __Init(Binary(  '0x555331C05050837C241C00740431C0EB05B80100000021C07516837C24200074' &  '0431C0EB05B80100000021C07502EB07B801000000EB0231C021C0740431C0EB' &  '5AC70424000000008B5C241883C3FC3B1C247C3E8B5C241C031C24895C24048B' &  '6C2404807D0000740431C0EB05B80100000021C074168B5C2420031C2483C303' &  '895C24048B6C2404C64500FF8304240471B6B801000000EB0231C083C4085B5D' &  'C21000'))
EndIf
EndIf
Return $pProc
EndFunc
Func __Init($dData)
Local $iLength = BinaryLen($dData)
Local $aCall = DllCall('kernel32.dll', 'ptr', 'VirtualAlloc', 'ptr', 0, 'ulong_ptr', $iLength, 'dword', 0x00001000, 'dword', 0x00000040)
If @error Or Not $aCall[0] Then __FatalExit(1, 'Error allocating memory.')
Local $tData = DllStructCreate('byte[' & $iLength & "]", $aCall[0])
DllStructSetData($tData, 1, $dData)
Return $aCall[0]
EndFunc
Global Const $DI_MASK = 0x0001
Global Const $DI_IMAGE = 0x0002
Global Const $DI_NORMAL = 0x0003
Global Const $DI_COMPAT = 0x0004
Global Const $DI_DEFAULTSIZE = 0x0008
Global Const $DI_NOMIRROR = 0x0010
Global Const $DISPLAY_DEVICE_ATTACHED_TO_DESKTOP = 0x00000001
Global Const $DISPLAY_DEVICE_MULTI_DRIVER = 0x00000002
Global Const $DISPLAY_DEVICE_PRIMARY_DEVICE = 0x00000004
Global Const $DISPLAY_DEVICE_MIRRORING_DRIVER = 0x00000008
Global Const $DISPLAY_DEVICE_VGA_COMPATIBLE = 0x00000010
Global Const $DISPLAY_DEVICE_REMOVABLE = 0x00000020
Global Const $DISPLAY_DEVICE_DISCONNECT = 0x02000000
Global Const $DISPLAY_DEVICE_REMOTE = 0x04000000
Global Const $DISPLAY_DEVICE_MODESPRUNED = 0x08000000
Func _WinAPI_CreateCompatibleDC($hDC)
Local $aCall = DllCall("gdi32.dll", "handle", "CreateCompatibleDC", "handle", $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DeleteDC($hDC)
Local $aCall = DllCall("gdi32.dll", "bool", "DeleteDC", "handle", $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DrawEdge($hDC, $tRECT, $iEdgeType, $iFlags)
Local $aCall = DllCall("user32.dll", "bool", "DrawEdge", "handle", $hDC, "struct*", $tRECT, "uint", $iEdgeType,  "uint", $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DrawFrameControl($hDC, $tRECT, $iType, $iState)
Local $aCall = DllCall("user32.dll", "bool", "DrawFrameControl", "handle", $hDC, "struct*", $tRECT, "uint", $iType,  "uint", $iState)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DrawIcon($hDC, $iX, $iY, $hIcon)
Local $aCall = DllCall("user32.dll", "bool", "DrawIcon", "handle", $hDC, "int", $iX, "int", $iY, "handle", $hIcon)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DrawIconEx($hDC, $iX, $iY, $hIcon, $iWidth = 0, $iHeight = 0, $iStep = 0, $hBrush = 0, $iFlags = 3)
Local $iOptions
Switch $iFlags
Case 1
$iOptions = $DI_MASK
Case 2
$iOptions = $DI_IMAGE
Case 3
$iOptions = $DI_NORMAL
Case 4
$iOptions = $DI_COMPAT
Case 5
$iOptions = $DI_DEFAULTSIZE
Case Else
$iOptions = $DI_NOMIRROR
EndSwitch
Local $aCall = DllCall("user32.dll", "bool", "DrawIconEx", "handle", $hDC, "int", $iX, "int", $iY, "handle", $hIcon,  "int", $iWidth, "int", $iHeight, "uint", $iStep, "handle", $hBrush, "uint", $iOptions)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DrawText($hDC, $sText, ByRef $tRECT, $iFlags)
Local $aCall = DllCall("user32.dll", "int", "DrawTextW", "handle", $hDC, "wstr", $sText, "int", -1, "struct*", $tRECT,  "uint", $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_EnumDisplayDevices($sDevice, $iDevNum)
Local $tName = 0, $iFlags = 0, $aDevice[5]
If $sDevice <> "" Then
$tName = DllStructCreate("wchar Text[" & StringLen($sDevice) + 1 & "]")
DllStructSetData($tName, "Text", $sDevice)
EndIf
Local Const $tagDISPLAY_DEVICE = "dword Size;wchar Name[32];wchar String[128];dword Flags;wchar ID[128];wchar Key[128]"
Local $tDevice = DllStructCreate($tagDISPLAY_DEVICE)
Local $iDevice = DllStructGetSize($tDevice)
DllStructSetData($tDevice, "Size", $iDevice)
Local $aCall = DllCall("user32.dll", "bool", "EnumDisplayDevicesW", "struct*", $tName, "dword", $iDevNum, "struct*", $tDevice, "dword", 1)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $iN = DllStructGetData($tDevice, "Flags")
If BitAND($iN, $DISPLAY_DEVICE_ATTACHED_TO_DESKTOP) <> 0 Then $iFlags = BitOR($iFlags, 1)
If BitAND($iN, $DISPLAY_DEVICE_PRIMARY_DEVICE) <> 0 Then $iFlags = BitOR($iFlags, 2)
If BitAND($iN, $DISPLAY_DEVICE_MIRRORING_DRIVER) <> 0 Then $iFlags = BitOR($iFlags, 4)
If BitAND($iN, $DISPLAY_DEVICE_VGA_COMPATIBLE) <> 0 Then $iFlags = BitOR($iFlags, 8)
If BitAND($iN, $DISPLAY_DEVICE_REMOVABLE) <> 0 Then $iFlags = BitOR($iFlags, 16)
If BitAND($iN, $DISPLAY_DEVICE_MODESPRUNED) <> 0 Then $iFlags = BitOR($iFlags, 32)
$aDevice[0] = True
$aDevice[1] = DllStructGetData($tDevice, "Name")
$aDevice[2] = DllStructGetData($tDevice, "String")
$aDevice[3] = $iFlags
$aDevice[4] = DllStructGetData($tDevice, "ID")
Return $aDevice
EndFunc
Func _WinAPI_FillRect($hDC, $tRECT, $hBrush)
Local $aCall
If IsPtr($hBrush) Then
$aCall = DllCall("user32.dll", "int", "FillRect", "handle", $hDC, "struct*", $tRECT, "handle", $hBrush)
Else
$aCall = DllCall("user32.dll", "int", "FillRect", "handle", $hDC, "struct*", $tRECT, "dword_ptr", $hBrush)
EndIf
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_FrameRect($hDC, $tRECT, $hBrush)
Local $aCall = DllCall("user32.dll", "int", "FrameRect", "handle", $hDC, "struct*", $tRECT, "handle", $hBrush)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_GetBkMode($hDC)
Local $aCall = DllCall("gdi32.dll", "int", "GetBkMode", "handle", $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetDC($hWnd)
Local $aCall = DllCall("user32.dll", "handle", "GetDC", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetDCEx($hWnd, $hRgn, $iFlags)
Local $aCall = DllCall('user32.dll', 'handle', 'GetDCEx', 'hwnd', $hWnd, 'handle', $hRgn, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetDeviceCaps($hDC, $iIndex)
Local $aCall = DllCall("gdi32.dll", "int", "GetDeviceCaps", "handle", $hDC, "int", $iIndex)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetTextColor($hDC)
Local $aCall = DllCall('gdi32.dll', 'dword', 'GetTextColor', 'handle', $hDC)
If @error Or ($aCall[0] = 4294967295) Then Return SetError(@error, @extended, -1)
Return __RGB($aCall[0])
EndFunc
Func _WinAPI_GetWindowDC($hWnd)
Local $aCall = DllCall("user32.dll", "handle", "GetWindowDC", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_PrintWindow($hWnd, $hDC, $bClient = False)
Local $aCall = DllCall('user32.dll', 'bool', 'PrintWindow', 'hwnd', $hWnd, 'handle', $hDC, 'uint', $bClient)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ReleaseDC($hWnd, $hDC)
Local $aCall = DllCall("user32.dll", "int", "ReleaseDC", "hwnd", $hWnd, "handle", $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_RestoreDC($hDC, $iID)
Local $aCall = DllCall('gdi32.dll', 'bool', 'RestoreDC', 'handle', $hDC, 'int', $iID)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SaveDC($hDC)
Local $aCall = DllCall('gdi32.dll', 'int', 'SaveDC', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetBkColor($hDC, $iColor)
Local $aCall = DllCall("gdi32.dll", "INT", "SetBkColor", "handle", $hDC, "INT", $iColor)
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_SetBkMode($hDC, $iBkMode)
Local $aCall = DllCall("gdi32.dll", "int", "SetBkMode", "handle", $hDC, "int", $iBkMode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetTextColor($hDC, $iColor)
Local $aCall = DllCall("gdi32.dll", "INT", "SetTextColor", "handle", $hDC, "INT", $iColor)
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_TwipsPerPixelX()
Local $hDC, $iTwipsPerPixelX
$hDC = _WinAPI_GetDC(0)
Local Const $__WINAPICONSTANT_LOGPIXELSX = 88
$iTwipsPerPixelX = 1440 / _WinAPI_GetDeviceCaps($hDC, $__WINAPICONSTANT_LOGPIXELSX)
_WinAPI_ReleaseDC(0, $hDC)
Return $iTwipsPerPixelX
EndFunc
Func _WinAPI_TwipsPerPixelY()
Local $hDC, $iTwipsPerPixelY
$hDC = _WinAPI_GetDC(0)
Local Const $__WINAPICONSTANT_LOGPIXELSY = 90
$iTwipsPerPixelY = 1440 / _WinAPI_GetDeviceCaps($hDC, $__WINAPICONSTANT_LOGPIXELSY)
_WinAPI_ReleaseDC(0, $hDC)
Return $iTwipsPerPixelY
EndFunc
Global Const $IDC_UNKNOWN = 0
Global Const $IDC_APPSTARTING = 32650
Global Const $IDC_ARROW = 32512
Global Const $IDC_CROSS = 32515
Global Const $IDC_HAND = 32649
Global Const $IDC_HELP = 32651
Global Const $IDC_IBEAM = 32513
Global Const $IDC_NO = 32648
Global Const $IDC_SIZEALL = 32646
Global Const $IDC_SIZENESW = 32643
Global Const $IDC_SIZENS = 32645
Global Const $IDC_SIZENWSE = 32642
Global Const $IDC_SIZEWE = 32644
Global Const $IDC_UPARROW = 32516
Global Const $IDC_WAIT = 32514
Global Const $IDI_APPLICATION = 32512
Global Const $IDI_ASTERISK = 32516
Global Const $IDI_EXCLAMATION = 32515
Global Const $IDI_HAND = 32513
Global Const $IDI_QUESTION = 32514
Global Const $IDI_WINLOGO = 32517
Global Const $IDI_SHIELD = 32518
Global Const $IDI_ERROR = $IDI_HAND
Global Const $IDI_INFORMATION = $IDI_ASTERISK
Global Const $IDI_WARNING = $IDI_EXCLAMATION
Global Const $tagICONINFO = "bool Icon;dword XHotSpot;dword YHotSpot;handle hMask;handle hColor"
Func _WinAPI_AddIconTransparency($hIcon, $iPercent = 50, $bDelete = False)
Local $tBITMAP, $hDib = 0, $hResult = 0
Local $ahBitmap[2]
Local $tICONINFO = DllStructCreate($tagICONINFO)
Local $aCall = DllCall('user32.dll', 'bool', 'GetIconInfo', 'handle', $hIcon, 'struct*', $tICONINFO)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
For $i = 0 To 1
$ahBitmap[$i] = DllStructGetData($tICONINFO, $i + 4)
Next
Local $iError = 0
Do
$hDib = _WinAPI_CopyBitmap($ahBitmap[1])
If Not $hDib Then
$iError = 20
ExitLoop
EndIf
$tBITMAP = DllStructCreate($tagBITMAP)
If (Not _WinAPI_GetObject($hDib, DllStructGetSize($tBITMAP), $tBITMAP)) Or (DllStructGetData($tBITMAP, 'bmBitsPixel') <> 32) Then
$iError = 21
ExitLoop
EndIf
$aCall = DllCall('user32.dll', 'lresult', 'CallWindowProc', 'PTR', __TransparencyProc(), 'hwnd', 0,  'uint', $iPercent, 'wparam', DllStructGetPtr($tBITMAP), 'lparam', 0)
If @error Or Not $aCall[0] Then
$iError = @error + 30
ExitLoop
EndIf
If $aCall[0] = -1 Then
$hResult = _WinAPI_CreateEmptyIcon(DllStructGetData($tBITMAP, 'bmWidth'), DllStructGetData($tBITMAP, 'bmHeight'))
Else
$hResult = _WinAPI_CreateIconIndirect($hDib, $ahBitmap[0])
EndIf
If Not $hResult Then $iError = 22
Until 1
If $hDib Then
_WinAPI_DeleteObject($hDib)
EndIf
For $i = 0 To 1
If $ahBitmap[$i] Then
_WinAPI_DeleteObject($ahBitmap[$i])
EndIf
Next
If $iError Then Return SetError($iError, 0, 0)
If $bDelete Then
_WinAPI_DestroyIcon($hIcon)
EndIf
Return $hResult
EndFunc
Func _WinAPI_CopyIcon($hIcon)
Local $aCall = DllCall("user32.dll", "handle", "CopyIcon", "handle", $hIcon)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_Create32BitHICON($hIcon, $bDelete = False)
Local $ahBitmap[2], $hResult = 0
Local $aDIB[2][2] = [[0, 0], [0, 0]]
Local $tICONINFO = DllStructCreate($tagICONINFO)
Local $aCall = DllCall('user32.dll', 'bool', 'GetIconInfo', 'handle', $hIcon, 'struct*', $tICONINFO)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
For $i = 0 To 1
$ahBitmap[$i] = DllStructGetData($tICONINFO, $i + 4)
Next
If _WinAPI_IsAlphaBitmap($ahBitmap[1]) Then
$aDIB[0][0] = _WinAPI_CreateANDBitmap($ahBitmap[1])
If Not @error Then
$hResult = _WinAPI_CreateIconIndirect($ahBitmap[1], $aDIB[0][0])
EndIf
Else
Local $tSIZE = _WinAPI_GetBitmapDimension($ahBitmap[1])
Local $aSize[2]
For $i = 0 To 1
$aSize[$i] = DllStructGetData($tSIZE, $i + 1)
Next
Local $hSrcDC = _WinAPI_CreateCompatibleDC(0)
Local $hDstDC = _WinAPI_CreateCompatibleDC(0)
Local $hSrcSv, $hDstSv
For $i = 0 To 1
$aDIB[$i][0] = _WinAPI_CreateDIB($aSize[0], $aSize[1])
$aDIB[$i][1] = $__g_vExt
$hSrcSv = _WinAPI_SelectObject($hSrcDC, $ahBitmap[$i])
$hDstSv = _WinAPI_SelectObject($hDstDC, $aDIB[$i][0])
_WinAPI_BitBlt($hDstDC, 0, 0, $aSize[0], $aSize[1], $hSrcDC, 0, 0, 0x00C000CA)
_WinAPI_SelectObject($hSrcDC, $hSrcSv)
_WinAPI_SelectObject($hDstDC, $hDstSv)
Next
_WinAPI_DeleteDC($hSrcDC)
_WinAPI_DeleteDC($hDstDC)
$aCall = DllCall('user32.dll', 'lresult', 'CallWindowProc', 'ptr', __XORProc(), 'ptr', 0,  'uint', $aSize[0] * $aSize[1] * 4, 'wparam', $aDIB[0][1], 'lparam', $aDIB[1][1])
If Not @error And $aCall[0] Then
$hResult = _WinAPI_CreateIconIndirect($aDIB[1][0], $ahBitmap[0])
EndIf
EndIf
For $i = 0 To 1
_WinAPI_DeleteObject($ahBitmap[$i])
If $aDIB[$i][0] Then
_WinAPI_DeleteObject($aDIB[$i][0])
EndIf
Next
If Not $hResult Then Return SetError(11, 0, 0)
If $bDelete Then
_WinAPI_DestroyIcon($hIcon)
EndIf
Return $hResult
EndFunc
Func _WinAPI_CreateEmptyIcon($iWidth, $iHeight, $iBitsPerPel = 32)
Local $hXOR = _WinAPI_CreateDIB($iWidth, $iHeight, $iBitsPerPel)
Local $hAND = _WinAPI_CreateDIB($iWidth, $iHeight, 1)
Local $hDC = _WinAPI_CreateCompatibleDC(0)
Local $hSv = _WinAPI_SelectObject($hDC, $hAND)
Local $hBrush = _WinAPI_CreateSolidBrush(0xFFFFFF)
Local $tRECT = _WinAPI_CreateRect(0, 0, $iWidth, $iHeight)
_WinAPI_FillRect($hDC, $tRECT, $hBrush)
_WinAPI_DeleteObject($hBrush)
_WinAPI_SelectObject($hDC, $hSv)
_WinAPI_DeleteDC($hDC)
Local $hIcon = _WinAPI_CreateIconIndirect($hXOR, $hAND)
Local $iError = @error
If $hXOR Then
_WinAPI_DeleteObject($hXOR)
EndIf
If $hAND Then
_WinAPI_DeleteObject($hAND)
EndIf
If Not $hIcon Then Return SetError($iError + 10, 0, 0)
Return $hIcon
EndFunc
Func _WinAPI_CreateIcon($hInstance, $iWidth, $iHeight, $iPlanes, $iBitsPixel, $pANDBits, $pXORBits)
Local $aCall = DllCall('user32.dll', 'handle', 'CreateIcon', 'handle', $hInstance, 'int', $iWidth, 'int', $iHeight,  'byte', $iPlanes, 'byte', $iBitsPixel, 'struct*', $pANDBits, 'struct*', $pXORBits)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateIconFromResourceEx($pData, $iSize, $bIcon = True, $iXDesiredPixels = 0, $iYDesiredPixels = 0, $iFlags = 0)
Local $aCall = DllCall('user32.dll', 'handle', 'CreateIconFromResourceEx', 'ptr', $pData, 'dword', $iSize, 'bool', $bIcon,  'dword', 0x00030000, 'int', $iXDesiredPixels, 'int', $iYDesiredPixels, 'uint', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateIconIndirect($hBitmap, $hMask, $iXHotspot = 0, $iYHotspot = 0, $bIcon = True)
Local $tICONINFO = DllStructCreate($tagICONINFO)
DllStructSetData($tICONINFO, 1, $bIcon)
DllStructSetData($tICONINFO, 2, $iXHotspot)
DllStructSetData($tICONINFO, 3, $iYHotspot)
DllStructSetData($tICONINFO, 4, $hMask)
DllStructSetData($tICONINFO, 5, $hBitmap)
Local $aCall = DllCall('user32.dll', 'handle', 'CreateIconIndirect', 'struct*', $tICONINFO)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DestroyIcon($hIcon)
Local $aCall = DllCall("user32.dll", "bool", "DestroyIcon", "handle", $hIcon)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ExtractIcon($sIcon, $iIndex, $bSmall = False)
Local $pLarge, $pSmall, $tPtr = DllStructCreate('ptr')
If $bSmall Then
$pLarge = 0
$pSmall = DllStructGetPtr($tPtr)
Else
$pLarge = DllStructGetPtr($tPtr)
$pSmall = 0
EndIf
DllCall('shell32.dll', 'uint', 'ExtractIconExW', 'wstr', $sIcon, 'int', $iIndex, 'ptr', $pLarge, 'ptr', $pSmall, 'uint', 1)
If @error Then Return SetError(@error, @extended, 0)
Return DllStructGetData($tPtr, 1)
EndFunc
Func _WinAPI_ExtractIconEx($sFilePath, $iIndex, $paLarge, $paSmall, $iIcons)
Local $aCall = DllCall("shell32.dll", "uint", "ExtractIconExW", "wstr", $sFilePath, "int", $iIndex, "struct*", $paLarge,  "struct*", $paSmall, "uint", $iIcons)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_FileIconInit($bRestore = True)
Local $aCall = DllCall('shell32.dll', 'int', 660, 'int', $bRestore)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return 1
EndFunc
Func _WinAPI_GetIconDimension($hIcon)
Local $tICONINFO = DllStructCreate($tagICONINFO)
Local $aCall = DllCall('user32.dll', 'bool', 'GetIconInfo', 'handle', $hIcon, 'struct*', $tICONINFO)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $tSIZE = _WinAPI_GetBitmapDimension(DllStructGetData($tICONINFO, 5))
For $i = 4 To 5
_WinAPI_DeleteObject(DllStructGetData($tICONINFO, $i))
Next
If Not IsDllStruct($tSIZE) Then Return SetError(20, 0, 0)
Return $tSIZE
EndFunc
Func _WinAPI_GetIconInfo($hIcon)
Local $tInfo = DllStructCreate($tagICONINFO)
Local $aCall = DllCall("user32.dll", "bool", "GetIconInfo", "handle", $hIcon, "struct*", $tInfo)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aIcon[6]
$aIcon[0] = True
$aIcon[1] = DllStructGetData($tInfo, "Icon") <> 0
$aIcon[2] = DllStructGetData($tInfo, "XHotSpot")
$aIcon[3] = DllStructGetData($tInfo, "YHotSpot")
$aIcon[4] = DllStructGetData($tInfo, "hMask")
$aIcon[5] = DllStructGetData($tInfo, "hColor")
Return $aIcon
EndFunc
Func _WinAPI_GetIconInfoEx($hIcon)
Local $tIIEX = DllStructCreate('dword;int;dword;dword;ptr;ptr;ushort;wchar[260];wchar[260]')
DllStructSetData($tIIEX, 1, DllStructGetSize($tIIEX))
Local $aCall = DllCall('user32.dll', 'bool', 'GetIconInfoExW', 'handle', $hIcon, 'struct*', $tIIEX)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[8]
For $i = 0 To 7
$aRet[$i] = DllStructGetData($tIIEX, $i + 2)
Next
Return $aRet
EndFunc
Func _WinAPI_LoadIcon($hInstance, $sName)
Local $sTypeOfName = 'int'
If IsString($sName) Then
$sTypeOfName = 'wstr'
EndIf
Local $aCall = DllCall('user32.dll', 'handle', 'LoadIconW', 'handle', $hInstance, $sTypeOfName, $sName)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_LoadIconMetric($hInstance, $sName, $iMetric)
Local $sTypeOfName = 'int'
If IsString($sName) Then
$sTypeOfName = 'wstr'
EndIf
Local $aCall = DllCall('comctl32.dll', 'long', 'LoadIconMetric', 'handle', $hInstance, $sTypeOfName, $sName, 'int', $iMetric, 'handle*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[4]
EndFunc
Func _WinAPI_LoadIconWithScaleDown($hInstance, $sName, $iWidth, $iHeight)
Local $sTypeOfName = 'int'
If IsString($sName) Then
$sTypeOfName = 'wstr'
EndIf
Local $aCall = DllCall('comctl32.dll', 'long', 'LoadIconWithScaleDown', 'handle', $hInstance, $sTypeOfName, $sName,  'int', $iWidth, 'int', $iHeight, 'handle*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[5]
EndFunc
Func _WinAPI_LoadShell32Icon($iIconID)
Local $tIcons = DllStructCreate("ptr Data")
Local $iIcons = _WinAPI_ExtractIconEx("shell32.dll", $iIconID, 0, $tIcons, 1)
If @error Then Return SetError(@error, @extended, 0)
If $iIcons <= 0 Then Return SetError(10, 0, 0)
Return DllStructGetData($tIcons, "Data")
EndFunc
Func _WinAPI_LookupIconIdFromDirectoryEx($pData, $bIcon = True, $iXDesiredPixels = 0, $iYDesiredPixels = 0, $iFlags = 0)
Local $aCall = DllCall('user32.dll', 'int', 'LookupIconIdFromDirectoryEx', 'ptr', $pData, 'bool', $bIcon,  'int', $iXDesiredPixels, 'int', $iYDesiredPixels, 'uint', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_MirrorIcon($hIcon, $bDelete = False)
If Not $bDelete Then
$hIcon = _WinAPI_CopyIcon($hIcon)
EndIf
Local $aCall = DllCall('comctl32.dll', 'int', 414, 'ptr', 0, 'ptr*', $hIcon)
If @error Or Not $aCall[0] Then
Local $iError = @error + 10
If $hIcon And Not $bDelete Then
_WinAPI_DestroyIcon($hIcon)
EndIf
Return SetError($iError, 0, 0)
EndIf
Return $aCall[2]
EndFunc
Func __TransparencyProc()
Static $pProc = 0
If Not $pProc Then
If @AutoItX64 Then
$pProc = __Init(Binary(  '0x48894C240848895424104C894424184C894C24205541574831C0505050505050' &  '4883EC284883BC24800000000074054831C0EB0748C7C0010000004821C07522' &  '488BAC248000000048837D180074054831C0EB0748C7C0010000004821C07502' &  'EB0948C7C001000000EB034831C04821C0740B4831C04863C0E93C0100004C63' &  '7C24784983FF647E0F48C7C0010000004863C0E9220100004C637C24784D21FF' &  '7D08C74424780000000048C74424280100000048C74424300000000048C74424' &  '3800000000488BAC24800000004C637D04488BAC2480000000486345084C0FAF' &  'F849C1E7024983C7FC4C3B7C24380F8C88000000488BAC24800000004C8B7D18' &  '4C037C24384983C7034C897C2440488B6C2440480FB64500505888442448807C' &  '244800744B4C0FB67C244848634424784C0FAFF84C89F848C7C1640000004899' &  '48F7F94989C74C89F850488B6C244858884500488B6C2440807D0000740948C7' &  '4424280000000048C7442430010000004883442438040F8149FFFFFF48837C24' &  '3000741148837C242800740948C7C001000000EB034831C04821C0740E48C7C0' &  'FFFFFFFF4863C0EB11EB0C48C7C0010000004863C0EB034831C04883C458415F' &  '5DC3'))
Else
$pProc = __Init(Binary(  '0x555331C05050505050837C242800740431C0EB05B80100000021C075198B6C24' &  '28837D1400740431C0EB05B80100000021C07502EB07B801000000EB0231C021' &  'C0740731C0E9E50000008B5C242483FB647E0AB801000000E9D20000008B5C24' &  '2421DB7D08C744242400000000C7042401000000C744240400000000C7442408' &  '000000008B6C24288B5D048B6C24280FAF5D08C1E30283C3FC3B5C24087C648B' &  '6C24288B5D14035C240883C303895C240C8B6C240C0FB6450088442410807C24' &  '100074380FB65C24100FAF5C242489D8B96400000099F7F989C3538B6C241058' &  '8845008B6C240C807D00007407C7042400000000C74424040100000083442408' &  '047181837C240400740D833C24007407B801000000EB0231C021C07409B8FFFF' &  'FFFFEB0BEB07B801000000EB0231C083C4145B5DC21000'))
EndIf
EndIf
Return $pProc
EndFunc
Func _SendMessage($hWnd, $iMsg, $wParam = 0, $lParam = 0, $iReturn = 0, $wParamType = "wparam", $lParamType = "lparam", $sReturnType = "lresult")
Local $aCall = DllCall("user32.dll", $sReturnType, "SendMessageW", "hwnd", $hWnd, "uint", $iMsg, $wParamType, $wParam, $lParamType, $lParam)
If @error Then Return SetError(@error, @extended, "")
If $iReturn >= 0 And $iReturn <= 4 Then Return $aCall[$iReturn]
Return $aCall
EndFunc
Func _SendMessageA($hWnd, $iMsg, $wParam = 0, $lParam = 0, $iReturn = 0, $wParamType = "wparam", $lParamType = "lparam", $sReturnType = "lresult")
Local $aCall = DllCall("user32.dll", $sReturnType, "SendMessageA", "hwnd", $hWnd, "uint", $iMsg, $wParamType, $wParam, $lParamType, $lParam)
If @error Then Return SetError(@error, @extended, "")
If $iReturn >= 0 And $iReturn <= 4 Then Return $aCall[$iReturn]
Return $aCall
EndFunc
Global $__g_aInProcess_WinAPI[64][2] = [[0, 0]]
Global $__g_aWinList_WinAPI[64][2] = [[0, 0]]
Global Const $GW_HWNDFIRST = 0
Global Const $GW_HWNDLAST = 1
Global Const $GW_HWNDNEXT = 2
Global Const $GW_HWNDPREV = 3
Global Const $GW_OWNER = 4
Global Const $GW_CHILD = 5
Global Const $GW_ENABLEDPOPUP = 6
Global Const $GWL_WNDPROC = 0xFFFFFFFC
Global Const $GWL_HINSTANCE = 0xFFFFFFFA
Global Const $GWL_HWNDPARENT = 0xFFFFFFF8
Global Const $GWL_ID = 0xFFFFFFF4
Global Const $GWL_STYLE = 0xFFFFFFF0
Global Const $GWL_EXSTYLE = 0xFFFFFFEC
Global Const $GWL_USERDATA = 0xFFFFFFEB
Global Const $__WINAPICONSTANT_WM_SETFONT = 0x0030
Func _WinAPI_CreateWindowEx($iExStyle, $sClass, $sName, $iStyle, $iX, $iY, $iWidth, $iHeight, $hParent, $hMenu = 0, $hInstance = 0, $pParam = 0)
If $hInstance = 0 Then $hInstance = _WinAPI_GetModuleHandle("")
Local $aCall = DllCall("user32.dll", "hwnd", "CreateWindowExW", "dword", $iExStyle, "wstr", $sClass, "wstr", $sName,  "dword", $iStyle, "int", $iX, "int", $iY, "int", $iWidth, "int", $iHeight, "hwnd", $hParent, "handle", $hMenu,  "handle", $hInstance, "struct*", $pParam)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetClientRect($hWnd)
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall("user32.dll", "bool", "GetClientRect", "hwnd", $hWnd, "struct*", $tRECT)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tRECT
EndFunc
Func _WinAPI_GetDesktopWindow()
Local $aCall = DllCall("user32.dll", "hwnd", "GetDesktopWindow")
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DestroyWindow($hWnd)
Local $aCall = DllCall("user32.dll", "bool", "DestroyWindow", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_EnableWindow($hWnd, $bEnable = True)
Local $aCall = DllCall("user32.dll", "bool", "EnableWindow", "hwnd", $hWnd, "bool", $bEnable)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_EnumWindows($bVisible = True, $hWnd = Default)
__WinAPI_EnumWindowsInit()
If $hWnd = Default Then $hWnd = _WinAPI_GetDesktopWindow()
__WinAPI_EnumWindowsChild($hWnd, $bVisible)
Return $__g_aWinList_WinAPI
EndFunc
Func _WinAPI_EnumWindowsPopup()
__WinAPI_EnumWindowsInit()
Local $hWnd = _WinAPI_GetWindow(_WinAPI_GetDesktopWindow(), $GW_CHILD)
Local $sClass
While $hWnd <> 0
If _WinAPI_IsWindowVisible($hWnd) Then
$sClass = _WinAPI_GetClassName($hWnd)
If $sClass = "#32768" Then
__WinAPI_EnumWindowsAdd($hWnd)
ElseIf $sClass = "ToolbarWindow32" Then
__WinAPI_EnumWindowsAdd($hWnd)
ElseIf $sClass = "ToolTips_Class32" Then
__WinAPI_EnumWindowsAdd($hWnd)
ElseIf $sClass = "BaseBar" Then
__WinAPI_EnumWindowsChild($hWnd)
EndIf
EndIf
$hWnd = _WinAPI_GetWindow($hWnd, $GW_HWNDNEXT)
WEnd
Return $__g_aWinList_WinAPI
EndFunc
Func _WinAPI_EnumWindowsTop()
__WinAPI_EnumWindowsInit()
Local $hWnd = _WinAPI_GetWindow(_WinAPI_GetDesktopWindow(), $GW_CHILD)
While $hWnd <> 0
If _WinAPI_IsWindowVisible($hWnd) Then __WinAPI_EnumWindowsAdd($hWnd)
$hWnd = _WinAPI_GetWindow($hWnd, $GW_HWNDNEXT)
WEnd
Return $__g_aWinList_WinAPI
EndFunc
Func _WinAPI_GetClassName($hWnd)
If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)
Local $aCall = DllCall("user32.dll", "int", "GetClassNameW", "hwnd", $hWnd, "wstr", "", "int", 4096)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return SetExtended($aCall[0], $aCall[2])
EndFunc
Func _WinAPI_GetFocus()
Local $aCall = DllCall("user32.dll", "hwnd", "GetFocus")
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetParent($hWnd)
Local $aCall = DllCall("user32.dll", "hwnd", "GetParent", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetSysColor($iIndex)
Local $aCall = DllCall("user32.dll", "INT", "GetSysColor", "int", $iIndex)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetSystemMetrics($iIndex)
Local $aCall = DllCall("user32.dll", "int", "GetSystemMetrics", "int", $iIndex)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetWindow($hWnd, $iCmd)
Local $aCall = DllCall("user32.dll", "hwnd", "GetWindow", "hwnd", $hWnd, "uint", $iCmd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetWindowHeight($hWnd)
Local $tRECT = _WinAPI_GetWindowRect($hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return DllStructGetData($tRECT, "Bottom") - DllStructGetData($tRECT, "Top")
EndFunc
Func _WinAPI_GetWindowLong($hWnd, $iIndex)
Local $sFuncName = "GetWindowLongW"
If @AutoItX64 Then $sFuncName = "GetWindowLongPtrW"
Local $aCall = DllCall("user32.dll", "long_ptr", $sFuncName, "hwnd", $hWnd, "int", $iIndex)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetWindowRect($hWnd)
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall("user32.dll", "bool", "GetWindowRect", "hwnd", $hWnd, "struct*", $tRECT)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tRECT
EndFunc
Func _WinAPI_GetWindowText($hWnd)
Local $aCall = DllCall("user32.dll", "int", "GetWindowTextW", "hwnd", $hWnd, "wstr", "", "int", 4096)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, "")
Return SetExtended($aCall[0], $aCall[2])
EndFunc
Func _WinAPI_GetWindowThreadProcessId($hWnd, ByRef $iPID)
Local $aCall = DllCall("user32.dll", "dword", "GetWindowThreadProcessId", "hwnd", $hWnd, "dword*", 0)
If @error Then Return SetError(@error, @extended, 0)
$iPID = $aCall[2]
Return $aCall[0]
EndFunc
Func _WinAPI_GetWindowWidth($hWnd)
Local $tRECT = _WinAPI_GetWindowRect($hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return DllStructGetData($tRECT, "Right") - DllStructGetData($tRECT, "Left")
EndFunc
Func _WinAPI_InProcess($hWnd, ByRef $hLastWnd)
If $hWnd = $hLastWnd Then Return True
For $iI = $__g_aInProcess_WinAPI[0][0] To 1 Step -1
If $hWnd = $__g_aInProcess_WinAPI[$iI][0] Then
If $__g_aInProcess_WinAPI[$iI][1] Then
$hLastWnd = $hWnd
Return True
Else
Return False
EndIf
EndIf
Next
Local $iPID
_WinAPI_GetWindowThreadProcessId($hWnd, $iPID)
Local $iCount = $__g_aInProcess_WinAPI[0][0] + 1
If $iCount >= 64 Then $iCount = 1
$__g_aInProcess_WinAPI[0][0] = $iCount
$__g_aInProcess_WinAPI[$iCount][0] = $hWnd
$__g_aInProcess_WinAPI[$iCount][1] = ($iPID = @AutoItPID)
Return $__g_aInProcess_WinAPI[$iCount][1]
EndFunc
Func _WinAPI_InvalidateRect($hWnd, $tRECT = 0, $bErase = True)
If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)
Local $aCall = DllCall("user32.dll", "bool", "InvalidateRect", "hwnd", $hWnd, "struct*", $tRECT, "bool", $bErase)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsClassName($hWnd, $sClassName)
Local $sSeparator = Opt("GUIDataSeparatorChar")
Local $aClassName = StringSplit($sClassName, $sSeparator)
If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)
Local $sClassCheck = _WinAPI_GetClassName($hWnd)
For $x = 1 To UBound($aClassName) - 1
If StringUpper(StringMid($sClassCheck, 1, StringLen($aClassName[$x]))) = StringUpper($aClassName[$x]) Then Return True
Next
Return False
EndFunc
Func _WinAPI_IsWindow($hWnd)
Local $aCall = DllCall("user32.dll", "bool", "IsWindow", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_IsWindowVisible($hWnd)
Local $aCall = DllCall("user32.dll", "bool", "IsWindowVisible", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_MoveWindow($hWnd, $iX, $iY, $iWidth, $iHeight, $bRepaint = True)
Local $aCall = DllCall("user32.dll", "bool", "MoveWindow", "hwnd", $hWnd, "int", $iX, "int", $iY, "int", $iWidth,  "int", $iHeight, "bool", $bRepaint)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetFocus($hWnd)
Local $aCall = DllCall("user32.dll", "hwnd", "SetFocus", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetFont($hWnd, $hFont, $bRedraw = True)
_SendMessage($hWnd, $__WINAPICONSTANT_WM_SETFONT, $hFont, $bRedraw, 0, "hwnd")
EndFunc
Func _WinAPI_SetParent($hWndChild, $hWndParent)
Local $aCall = DllCall("user32.dll", "hwnd", "SetParent", "hwnd", $hWndChild, "hwnd", $hWndParent)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWindowPos($hWnd, $hAfter, $iX, $iY, $iCX, $iCY, $iFlags)
Local $aCall = DllCall("user32.dll", "bool", "SetWindowPos", "hwnd", $hWnd, "hwnd", $hAfter, "int", $iX, "int", $iY,  "int", $iCX, "int", $iCY, "uint", $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWindowText($hWnd, $sText)
Local $aCall = DllCall("user32.dll", "bool", "SetWindowTextW", "hwnd", $hWnd, "wstr", $sText)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShowWindow($hWnd, $iCmdShow = 5)
Local $aCall = DllCall("user32.dll", "bool", "ShowWindow", "hwnd", $hWnd, "int", $iCmdShow)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_UpdateWindow($hWnd)
Local $aCall = DllCall("user32.dll", "bool", "UpdateWindow", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func __WinAPI_EnumWindowsAdd($hWnd, $sClass = "")
If $sClass = "" Then $sClass = _WinAPI_GetClassName($hWnd)
$__g_aWinList_WinAPI[0][0] += 1
Local $iCount = $__g_aWinList_WinAPI[0][0]
If $iCount >= $__g_aWinList_WinAPI[0][1] Then
ReDim $__g_aWinList_WinAPI[$iCount + 64][2]
$__g_aWinList_WinAPI[0][1] += 64
EndIf
$__g_aWinList_WinAPI[$iCount][0] = $hWnd
$__g_aWinList_WinAPI[$iCount][1] = $sClass
EndFunc
Func __WinAPI_EnumWindowsChild($hWnd, $bVisible = True)
$hWnd = _WinAPI_GetWindow($hWnd, $GW_CHILD)
While $hWnd <> 0
If (Not $bVisible) Or _WinAPI_IsWindowVisible($hWnd) Then
__WinAPI_EnumWindowsAdd($hWnd)
__WinAPI_EnumWindowsChild($hWnd, $bVisible)
EndIf
$hWnd = _WinAPI_GetWindow($hWnd, $GW_HWNDNEXT)
WEnd
EndFunc
Func __WinAPI_EnumWindowsInit()
ReDim $__g_aWinList_WinAPI[64][2]
$__g_aWinList_WinAPI[0][0] = 0
$__g_aWinList_WinAPI[0][1] = 64
EndFunc
Global Const $FLASHW_CAPTION = 0x00000001
Global Const $FLASHW_TRAY = 0x00000002
Global Const $FLASHW_TIMER = 0x00000004
Global Const $FLASHW_TIMERNOFG = 0x0000000C
Global Const $tagUPDATELAYEREDWINDOWINFO = 'dword Size;hwnd hDstDC;long DstX;long DstY;long cX;long cY;hwnd hSrcDC;long SrcX;long SrcY;dword crKey;byte BlendOp;byte BlendFlags;byte Alpha;byte AlphaFormat;dword Flags;long DirtyLeft;long DirtyTop;long DirtyRight;long DirtyBottom'
Global Const $tagWINDOWINFO = 'dword Size;struct;long rWindow[4];endstruct;struct;long rClient[4];endstruct;dword Style;dword ExStyle;dword WindowStatus;uint cxWindowBorders;uint cyWindowBorders;word atomWindowType;word CreatorVersion'
Global Const $tagWNDCLASS = 'uint Style;ptr hWndProc;int ClsExtra;int WndExtra;ptr hInstance;ptr hIcon;ptr hCursor;ptr hBackground;ptr MenuName;ptr ClassName'
Global Const $tagWNDCLASSEX = 'uint Size;uint Style;ptr hWndProc;int ClsExtra;int WndExtra;ptr hInstance;ptr hIcon;ptr hCursor;ptr hBackground;ptr MenuName;ptr ClassName;ptr hIconSm'
Global Const $tagFLASHWINFO = "uint Size;hwnd hWnd;dword Flags;uint Count;dword TimeOut"
Func _WinAPI_AdjustWindowRectEx(ByRef $tRECT, $iStyle, $iExStyle = 0, $bMenu = False)
Local $aCall = DllCall('user32.dll', 'bool', 'AdjustWindowRectEx', 'struct*', $tRECT, 'dword', $iStyle, 'bool', $bMenu,  'dword', $iExStyle)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_AnimateWindow($hWnd, $iFlags, $iDuration = 1000)
Local $aCall = DllCall('user32.dll', 'bool', 'AnimateWindow', 'hwnd', $hWnd, 'dword', $iDuration, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_BeginDeferWindowPos($iAmount = 1)
Local $aCall = DllCall('user32.dll', 'handle', 'BeginDeferWindowPos', 'int', $iAmount)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_BringWindowToTop($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'BringWindowToTop', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_BroadcastSystemMessage($iMsg, $wParam = 0, $lParam = 0, $iFlags = 0, $iRecipients = 0)
Local $aCall = DllCall('user32.dll', 'long', 'BroadcastSystemMessageW', 'dword', $iFlags, 'dword*', $iRecipients,  'uint', $iMsg, 'wparam', $wParam, 'lparam', $lParam)
If @error Or ($aCall[0] = -1) Then Return SetError(@error, @extended, -1)
Return SetExtended($aCall[2], $aCall[0])
EndFunc
Func _WinAPI_CallWindowProc($pPrevWndFunc, $hWnd, $iMsg, $wParam, $lParam)
Local $aCall = DllCall("user32.dll", "lresult", "CallWindowProc", "ptr", $pPrevWndFunc, "hwnd", $hWnd, "uint", $iMsg,  "wparam", $wParam, "lparam", $lParam)
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_CallWindowProcW($pPrevWndProc, $hWnd, $iMsg, $wParam, $lParam)
Local $aCall = DllCall('user32.dll', 'lresult', 'CallWindowProcW', 'ptr', $pPrevWndProc, 'hwnd', $hWnd, 'uint', $iMsg,  'wparam', $wParam, 'lparam', $lParam)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CascadeWindows($aWnds, $tRECT = 0, $hParent = 0, $iFlags = 0, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aWnds, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)
Local $iCount = $iEnd - $iStart + 1
Local $tWnds = DllStructCreate('hwnd[' & $iCount & ']')
$iCount = 1
For $i = $iStart To $iEnd
DllStructSetData($tWnds, 1, $aWnds[$i], $iCount)
$iCount += 1
Next
Local $aCall = DllCall('user32.dll', 'word', 'CascadeWindows', 'hwnd', $hParent, 'uint', $iFlags, 'struct*', $tRECT,  'uint', $iCount - 1, 'struct*', $tWnds)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ChangeWindowMessageFilterEx($hWnd, $iMsg, $iAction)
Local $tCFS, $aCall
If $hWnd And (_WinAPI_GetVersion() > 6.0) Then
Local Const $tagCHANGEFILTERSTRUCT = 'dword cbSize; dword ExtStatus'
$tCFS = DllStructCreate($tagCHANGEFILTERSTRUCT)
DllStructSetData($tCFS, 1, DllStructGetSize($tCFS))
$aCall = DllCall('user32.dll', 'bool', 'ChangeWindowMessageFilterEx', 'hwnd', $hWnd, 'uint', $iMsg, 'dword', $iAction,  'struct*', $tCFS)
Else
$tCFS = 0
$aCall = DllCall('user32.dll', 'bool', 'ChangeWindowMessageFilter', 'uint', $iMsg, 'dword', $iAction)
EndIf
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return SetExtended(DllStructGetData($tCFS, 2), 1)
EndFunc
Func _WinAPI_ChildWindowFromPointEx($hWnd, $tPOINT, $iFlags = 0)
Local $aCall = DllCall('user32.dll', 'hwnd', 'ChildWindowFromPointEx', 'hwnd', $hWnd, 'struct', $tPOINT, 'uint', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CloseWindow($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'CloseWindow', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DeferWindowPos($hInfo, $hWnd, $hAfter, $iX, $iY, $iWidth, $iHeight, $iFlags)
Local $aCall = DllCall('user32.dll', 'handle', 'DeferWindowPos', 'handle', $hInfo, 'hwnd', $hWnd, 'hwnd', $hAfter,  'int', $iX, 'int', $iY, 'int', $iWidth, 'int', $iHeight, 'uint', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DefWindowProc($hWnd, $iMsg, $wParam, $lParam)
Local $aCall = DllCall("user32.dll", "lresult", "DefWindowProc", "hwnd", $hWnd, "uint", $iMsg, "wparam", $wParam,  "lparam", $lParam)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DefWindowProcW($hWnd, $iMsg, $wParam, $lParam)
Local $aCall = DllCall('user32.dll', 'lresult', 'DefWindowProcW', 'hwnd', $hWnd, 'uint', $iMsg, 'wparam', $wParam,  'lparam', $lParam)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DeregisterShellHookWindow($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'DeregisterShellHookWindow', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DragAcceptFiles($hWnd, $bAccept = True)
DllCall('shell32.dll', 'none', 'DragAcceptFiles', 'hwnd', $hWnd, 'bool', $bAccept)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_DragFinish($hDrop)
DllCall('shell32.dll', 'none', 'DragFinish', 'handle', $hDrop)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_DragQueryFileEx($hDrop, $iFlag = 0)
Local $aCall = DllCall('shell32.dll', 'uint', 'DragQueryFileW', 'handle', $hDrop, 'uint', -1, 'ptr', 0, 'uint', 0)
If @error Then Return SetError(@error, @extended, 0)
If Not $aCall[0] Then Return SetError(10, 0, 0)
Local $iCount = $aCall[0], $iValidRow = 0
Local $aRet[$iCount + 1]
For $i = 0 To $iCount - 1
$aCall = DllCall('shell32.dll', 'uint', 'DragQueryFileW', 'handle', $hDrop, 'uint', $i, 'wstr', '', 'uint', 4096)
If Not $aCall[0] Then Return SetError(11, 0, 0)
If $iFlag Then
Local $bDir = _WinAPI_PathIsDirectory($aCall[3])
If (($iFlag = 1) And $bDir) Or (($iFlag = 2) And Not $bDir) Then
ContinueLoop
EndIf
EndIf
$iValidRow += 1
$aRet[$iValidRow] = $aCall[3]
$aRet[0] += 1
Next
If Not $aRet[0] Then Return SetError(12, 0, 0)
__Inc($aRet, -1)
Return $aRet
EndFunc
Func _WinAPI_DragQueryPoint($hDrop)
Local $tPOINT = DllStructCreate($tagPOINT)
Local $aCall = DllCall('shell32.dll', 'bool', 'DragQueryPoint', 'handle', $hDrop, 'struct*', $tPOINT)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tPOINT
EndFunc
Func _WinAPI_EndDeferWindowPos($hInfo)
Local $aCall = DllCall('user32.dll', 'bool', 'EndDeferWindowPos', 'handle', $hInfo)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_EnumChildWindows($hWnd, $bVisible = True)
If Not _WinAPI_GetWindow($hWnd, 5) Then Return SetError(2, 0, 0)
Local $hEnumProc = DllCallbackRegister('__EnumWindowsProc', 'bool', 'hwnd;lparam')
Dim $__g_vEnum[101][2] = [[0]]
DllCall('user32.dll', 'bool', 'EnumChildWindows', 'hwnd', $hWnd, 'ptr', DllCallbackGetPtr($hEnumProc), 'lparam', $bVisible)
If @error Or Not $__g_vEnum[0][0] Then
$__g_vEnum = @error + 10
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_FindWindow($sClassName, $sWindowName)
Local $aCall = DllCall("user32.dll", "hwnd", "FindWindowW", "wstr", $sClassName, "wstr", $sWindowName)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_FlashWindow($hWnd, $bInvert = True)
Local $aCall = DllCall("user32.dll", "bool", "FlashWindow", "hwnd", $hWnd, "bool", $bInvert)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_FlashWindowEx($hWnd, $iFlags = 3, $iCount = 3, $iTimeout = 0)
Local $tFlash = DllStructCreate($tagFLASHWINFO)
Local $iFlash = DllStructGetSize($tFlash)
Local $iMode = 0
If BitAND($iFlags, 1) <> 0 Then $iMode = BitOR($iMode, $FLASHW_CAPTION)
If BitAND($iFlags, 2) <> 0 Then $iMode = BitOR($iMode, $FLASHW_TRAY)
If BitAND($iFlags, 4) <> 0 Then $iMode = BitOR($iMode, $FLASHW_TIMER)
If BitAND($iFlags, 8) <> 0 Then $iMode = BitOR($iMode, $FLASHW_TIMERNOFG)
DllStructSetData($tFlash, "Size", $iFlash)
DllStructSetData($tFlash, "hWnd", $hWnd)
DllStructSetData($tFlash, "Flags", $iMode)
DllStructSetData($tFlash, "Count", $iCount)
DllStructSetData($tFlash, "Timeout", $iTimeout)
Local $aCall = DllCall("user32.dll", "bool", "FlashWindowEx", "struct*", $tFlash)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_GetAncestor($hWnd, $iFlags = 1)
Local $aCall = DllCall("user32.dll", "hwnd", "GetAncestor", "hwnd", $hWnd, "uint", $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetClassInfoEx($sClass, $hInstance = 0)
Local $sTypeOfClass = 'wstr'
If Not IsString($sClass) Then $sTypeOfClass = 'ptr'
Local $tWNDCLASSEX = DllStructCreate($tagWNDCLASSEX)
Local $aCall = DllCall('user32.dll', 'bool', 'GetClassInfoExW', 'handle', $hInstance, $sTypeOfClass, $sClass,  'struct*', $tWNDCLASSEX)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tWNDCLASSEX
EndFunc
Func _WinAPI_GetClassLongEx($hWnd, $iIndex)
Local $aCall
If @AutoItX64 Then
$aCall = DllCall('user32.dll', 'ulong_ptr', 'GetClassLongPtrW', 'hwnd', $hWnd, 'int', $iIndex)
Else
$aCall = DllCall('user32.dll', 'dword', 'GetClassLongW', 'hwnd', $hWnd, 'int', $iIndex)
EndIf
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetClientHeight($hWnd)
Local $tRECT = _WinAPI_GetClientRect($hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return DllStructGetData($tRECT, "Bottom") - DllStructGetData($tRECT, "Top")
EndFunc
Func _WinAPI_GetClientWidth($hWnd)
Local $tRECT = _WinAPI_GetClientRect($hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return DllStructGetData($tRECT, "Right") - DllStructGetData($tRECT, "Left")
EndFunc
Func _WinAPI_GetDlgItem($hWnd, $iItemID)
Local $aCall = DllCall("user32.dll", "hwnd", "GetDlgItem", "hwnd", $hWnd, "int", $iItemID)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetForegroundWindow()
Local $aCall = DllCall("user32.dll", "hwnd", "GetForegroundWindow")
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetGUIThreadInfo($iThreadId)
Local Const $tagGUITHREADINFO = 'dword Size;dword Flags;hwnd hWndActive;hwnd hWndFocus;hwnd hWndCapture;hwnd hWndMenuOwner;hwnd hWndMoveSize;hwnd hWndCaret;struct rcCaret;long left;long top;long right;long bottom;endstruct'
Local $tGTI = DllStructCreate($tagGUITHREADINFO)
DllStructSetData($tGTI, 1, DllStructGetSize($tGTI))
Local $aCall = DllCall('user32.dll', 'bool', 'GetGUIThreadInfo', 'dword', $iThreadId, 'struct*', $tGTI)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[11]
For $i = 0 To 10
$aRet[$i] = DllStructGetData($tGTI, $i + 2)
Next
For $i = 9 To 10
$aRet[$i] -= $aRet[$i - 2]
Next
Return $aRet
EndFunc
Func _WinAPI_GetLastActivePopup($hWnd)
Local $aCall = DllCall('user32.dll', 'hwnd', 'GetLastActivePopup', 'hwnd', $hWnd)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
If $aCall[0] = $hWnd Then Return SetError(1, 0, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetLayeredWindowAttributes($hWnd, ByRef $iTransColor, ByRef $iTransGUI, $bColorRef = False)
$iTransColor = -1
$iTransGUI = -1
Local $aCall = DllCall("user32.dll", "bool", "GetLayeredWindowAttributes", "hwnd", $hWnd, "INT*", $iTransColor,  "byte*", $iTransGUI, "dword*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
If Not $bColorRef Then
$aCall[2] = Int(BinaryMid($aCall[2], 3, 1) & BinaryMid($aCall[2], 2, 1) & BinaryMid($aCall[2], 1, 1))
EndIf
$iTransColor = $aCall[2]
$iTransGUI = $aCall[3]
Return $aCall[4]
EndFunc
Func _WinAPI_GetMessageExtraInfo()
Local $aCall = DllCall('user32.dll', 'lparam', 'GetMessageExtraInfo')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetShellWindow()
Local $aCall = DllCall('user32.dll', 'hwnd', 'GetShellWindow')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetTopWindow($hWnd)
Local $aCall = DllCall('user32.dll', 'hwnd', 'GetTopWindow', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetWindowDisplayAffinity($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'GetWindowDisplayAffinity', 'hwnd', $hWnd, 'dword*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[2]
EndFunc
Func _WinAPI_GetWindowInfo($hWnd)
Local $tWINDOWINFO = DllStructCreate($tagWINDOWINFO)
DllStructSetData($tWINDOWINFO, 'Size', DllStructGetSize($tWINDOWINFO))
Local $aCall = DllCall('user32.dll', 'bool', 'GetWindowInfo', 'hwnd', $hWnd, 'struct*', $tWINDOWINFO)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tWINDOWINFO
EndFunc
Func _WinAPI_GetWindowPlacement($hWnd)
Local $tWindowPlacement = DllStructCreate($tagWINDOWPLACEMENT)
DllStructSetData($tWindowPlacement, "length", DllStructGetSize($tWindowPlacement))
Local $aCall = DllCall("user32.dll", "bool", "GetWindowPlacement", "hwnd", $hWnd, "struct*", $tWindowPlacement)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tWindowPlacement
EndFunc
Func _WinAPI_IsChild($hWnd, $hWndParent)
Local $aCall = DllCall('user32.dll', 'bool', 'IsChild', 'hwnd', $hWndParent, 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsHungAppWindow($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'IsHungAppWindow', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsIconic($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'IsIconic', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsWindowUnicode($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'IsWindowUnicode', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsZoomed($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'IsZoomed', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_KillTimer($hWnd, $iTimerID)
Local $aCall = DllCall('user32.dll', 'bool', 'KillTimer', 'hwnd', $hWnd, 'uint_ptr', $iTimerID)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_OpenIcon($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'OpenIcon', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_PostMessage($hWnd, $iMsg, $wParam, $lParam)
Local $aCall = DllCall("user32.dll", "bool", "PostMessage", "hwnd", $hWnd, "uint", $iMsg, "wparam", $wParam,  "lparam", $lParam)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_RegisterClass($tWNDCLASS)
Local $aCall = DllCall('user32.dll', 'word', 'RegisterClassW', 'struct*', $tWNDCLASS)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_RegisterClassEx($tWNDCLASSEX)
Local $aCall = DllCall('user32.dll', 'word', 'RegisterClassExW', 'struct*', $tWNDCLASSEX)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_RegisterShellHookWindow($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'RegisterShellHookWindow', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_RegisterWindowMessage($sMessage)
Local $aCall = DllCall("user32.dll", "uint", "RegisterWindowMessageW", "wstr", $sMessage)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SendMessageTimeout($hWnd, $iMsg, $wParam = 0, $lParam = 0, $iTimeout = 1000, $iFlags = 0)
Local $aCall = DllCall('user32.dll', 'lresult', 'SendMessageTimeoutW', 'hwnd', $hWnd, 'uint', $iMsg, 'wparam', $wParam,  'lparam', $lParam, 'uint', $iFlags, 'uint', $iTimeout, 'dword_ptr*', 0)
If @error Then Return SetError(@error, @extended, -1)
If Not $aCall[0] Then Return SetError(10, _WinAPI_GetLastError(), -1)
Return $aCall[7]
EndFunc
Func _WinAPI_SetClassLongEx($hWnd, $iIndex, $iNewLong)
Local $aCall
If @AutoItX64 Then
$aCall = DllCall('user32.dll', 'ulong_ptr', 'SetClassLongPtrW', 'hwnd', $hWnd, 'int', $iIndex, 'long_ptr', $iNewLong)
Else
$aCall = DllCall('user32.dll', 'dword', 'SetClassLongW', 'hwnd', $hWnd, 'int', $iIndex, 'long', $iNewLong)
EndIf
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetForegroundWindow($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'SetForegroundWindow', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetLayeredWindowAttributes($hWnd, $iTransColor, $iTransGUI = 255, $iFlags = 0x03, $bColorRef = False)
If $iFlags = Default Or $iFlags = "" Or $iFlags < 0 Then $iFlags = 0x03
If Not $bColorRef Then
$iTransColor = Int(BinaryMid($iTransColor, 3, 1) & BinaryMid($iTransColor, 2, 1) & BinaryMid($iTransColor, 1, 1))
EndIf
Local $aCall = DllCall("user32.dll", "bool", "SetLayeredWindowAttributes", "hwnd", $hWnd, "INT", $iTransColor,  "byte", $iTransGUI, "dword", $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetMessageExtraInfo($lParam)
Local $aCall = DllCall('user32.dll', 'lparam', 'SetMessageExtraInfo', 'lparam', $lParam)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetSysColors($vElements, $vColors)
Local $bIsEArray = IsArray($vElements), $bIsCArray = IsArray($vColors)
Local $iElementNum
If Not $bIsCArray And Not $bIsEArray Then
$iElementNum = 1
ElseIf $bIsCArray Or $bIsEArray Then
If Not $bIsCArray Or Not $bIsEArray Then Return SetError(-1, -1, False)
If UBound($vElements) <> UBound($vColors) Then Return SetError(-1, -1, False)
$iElementNum = UBound($vElements)
EndIf
Local $tElements = DllStructCreate("int Element[" & $iElementNum & "]")
Local $tColors = DllStructCreate("INT NewColor[" & $iElementNum & "]")
If Not $bIsEArray Then
DllStructSetData($tElements, "Element", $vElements, 1)
Else
For $x = 0 To $iElementNum - 1
DllStructSetData($tElements, "Element", $vElements[$x], $x + 1)
Next
EndIf
If Not $bIsCArray Then
DllStructSetData($tColors, "NewColor", $vColors, 1)
Else
For $x = 0 To $iElementNum - 1
DllStructSetData($tColors, "NewColor", $vColors[$x], $x + 1)
Next
EndIf
Local $aCall = DllCall("user32.dll", "bool", "SetSysColors", "int", $iElementNum, "struct*", $tElements, "struct*", $tColors)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetTimer($hWnd, $iTimerID, $iElapse, $pTimerFunc)
Local $aCall = DllCall('user32.dll', 'uint_ptr', 'SetTimer', 'hwnd', $hWnd, 'uint_ptr', $iTimerID, 'uint', $iElapse,  'ptr', $pTimerFunc)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWindowDisplayAffinity($hWnd, $iAffinity)
Local $aCall = DllCall('user32.dll', 'bool', 'SetWindowDisplayAffinity', 'hwnd', $hWnd, 'dword', $iAffinity)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWindowLong($hWnd, $iIndex, $iValue)
_WinAPI_SetLastError(0)
Local $sFuncName = "SetWindowLongW"
If @AutoItX64 Then $sFuncName = "SetWindowLongPtrW"
Local $aCall = DllCall("user32.dll", "long_ptr", $sFuncName, "hwnd", $hWnd, "int", $iIndex, "long_ptr", $iValue)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWindowPlacement($hWnd, $tWindowPlacement)
Local $aCall = DllCall("user32.dll", "bool", "SetWindowPlacement", "hwnd", $hWnd, "struct*", $tWindowPlacement)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShowOwnedPopups($hWnd, $bShow)
Local $aCall = DllCall('user32.dll', 'bool', 'ShowOwnedPopups', 'hwnd', $hWnd, 'bool', $bShow)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SwitchToThisWindow($hWnd, $bAltTab = False)
DllCall('user32.dll', 'none', 'SwitchToThisWindow', 'hwnd', $hWnd, 'bool', $bAltTab)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_TileWindows($aWnds, $tRECT = 0, $hParent = 0, $iFlags = 0, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aWnds, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)
Local $iCount = $iEnd - $iStart + 1
Local $tWnds = DllStructCreate('hwnd[' & $iCount & ']')
$iCount = 1
For $i = $iStart To $iEnd
DllStructSetData($tWnds, 1, $aWnds[$i], $iCount)
$iCount += 1
Next
Local $aCall = DllCall('user32.dll', 'word', 'TileWindows', 'hwnd', $hParent, 'uint', $iFlags, 'struct*', $tRECT,  'uint', $iCount - 1, 'struct*', $tWnds)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_UnregisterClass($sClass, $hInstance = 0)
Local $sTypeOfClass = 'wstr'
If Not IsString($sClass) Then $sTypeOfClass = 'ptr'
Local $aCall = DllCall('user32.dll', 'bool', 'UnregisterClassW', $sTypeOfClass, $sClass, 'handle', $hInstance)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_UpdateLayeredWindow($hWnd, $hDestDC, $tPTDest, $tSize, $hSrcDC, $tPTSrce, $iRGB, $tBlend, $iFlags)
Local $aCall = DllCall("user32.dll", "bool", "UpdateLayeredWindow", "hwnd", $hWnd, "handle", $hDestDC, "struct*", $tPTDest,  "struct*", $tSize, "handle", $hSrcDC, "struct*", $tPTSrce, "dword", $iRGB, "struct*", $tBlend, "dword", $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_UpdateLayeredWindowEx($hWnd, $iX, $iY, $hBitmap, $iOpacity = 255, $bDelete = False)
Local $aCall = DllCall('user32.dll', 'handle', 'GetDC', 'hwnd', $hWnd)
Local $hDC = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'CreateCompatibleDC', 'handle', $hDC)
Local $hDestDC = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hDestDC, 'handle', $hBitmap)
Local $hDestSv = $aCall[0]
Local $tPOINT
If ($iX = -1) And ($iY = -1) Then
$tPOINT = DllStructCreate('int;int')
Else
$tPOINT = DllStructCreate('int;int;int;int')
DllStructSetData($tPOINT, 3, $iX)
DllStructSetData($tPOINT, 4, $iY)
EndIf
DllStructSetData($tPOINT, 1, 0)
DllStructSetData($tPOINT, 2, 0)
Local $tBLENDFUNCTION = DllStructCreate($tagBLENDFUNCTION)
DllStructSetData($tBLENDFUNCTION, 1, 0)
DllStructSetData($tBLENDFUNCTION, 2, 0)
DllStructSetData($tBLENDFUNCTION, 3, $iOpacity)
DllStructSetData($tBLENDFUNCTION, 4, 1)
Local Const $tagBITMAP = 'struct;long bmType;long bmWidth;long bmHeight;long bmWidthBytes;ushort bmPlanes;ushort bmBitsPixel;ptr bmBits;endstruct'
Local $tObj = DllStructCreate($tagBITMAP)
DllCall('gdi32.dll', 'int', 'GetObject', 'handle', $hBitmap, 'int', DllStructGetSize($tObj), 'struct*', $tObj)
Local $tSize = DllStructCreate($tagSIZE, DllStructGetPtr($tObj, "bmWidth"))
$aCall = DllCall('user32.dll', 'bool', 'UpdateLayeredWindow', 'hwnd', $hWnd, 'handle', $hDC, 'ptr', DllStructGetPtr($tPOINT, 3),  'struct*', $tSize, 'handle', $hDestDC, 'struct*', $tPOINT, 'dword', 0, 'struct*', $tBLENDFUNCTION, 'dword', 0x02)
Local $iError = @error
DllCall('user32.dll', 'bool', 'ReleaseDC', 'hwnd', $hWnd, 'handle', $hDC)
DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hDestDC, 'handle', $hDestSv)
DllCall('gdi32.dll', 'bool', 'DeleteDC', 'handle', $hDestDC)
If $iError Then Return SetError($iError, 0, False)
If $bDelete Then
DllCall("gdi32.dll", "bool", "DeleteObject", "handle", $hBitmap)
EndIf
Return $aCall[0]
EndFunc
Func _WinAPI_UpdateLayeredWindowIndirect($hWnd, $tULWINFO)
Local $aCall = DllCall('user32.dll', 'bool', 'UpdateLayeredWindowIndirect', 'hwnd', $hWnd, 'struct*', $tULWINFO)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_WindowFromPoint(ByRef $tPOINT)
Local $aCall = DllCall("user32.dll", "hwnd", "WindowFromPoint", "struct", $tPOINT)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func __EnumDefaultProc($pData, $lParam)
#forceref $lParam
Local $iLength = _WinAPI_StrLen($pData)
__Inc($__g_vEnum)
If $iLength Then
$__g_vEnum[$__g_vEnum[0]] = DllStructGetData(DllStructCreate('wchar[' & ($iLength + 1) & ']', $pData), 1)
Else
$__g_vEnum[$__g_vEnum[0]] = ''
EndIf
Return 1
EndFunc
Global Const $tagOSVERSIONINFOEX = $tagOSVERSIONINFO & ';ushort ServicePackMajor;ushort ServicePackMinor;ushort SuiteMask;byte ProductType;byte Reserved'
Global Const $tagRAWINPUTDEVICE = 'struct;ushort UsagePage;ushort Usage;dword Flags;hwnd hTarget;endstruct'
Global Const $tagRAWINPUTHEADER = 'struct;dword Type;dword Size;handle hDevice;wparam wParam;endstruct'
Global Const $tagRAWMOUSE = 'ushort Flags;ushort Alignment;ushort ButtonFlags;ushort ButtonData;ulong RawButtons;long LastX;long LastY;ulong ExtraInformation;'
Global Const $tagRAWKEYBOARD = 'ushort MakeCode;ushort Flags;ushort Reserved;ushort VKey;uint Message;ulong ExtraInformation;'
Global Const $tagRAWHID = 'dword SizeHid;dword Count;'
Global Const $tagRAWINPUTMOUSE = $tagRAWINPUTHEADER & ';' & $tagRAWMOUSE
Global Const $tagRAWINPUTKEYBOARD = $tagRAWINPUTHEADER & ';' & $tagRAWKEYBOARD
Global Const $tagRAWINPUTHID = $tagRAWINPUTHEADER & ';' & $tagRAWHID
Global Const $tagRID_DEVICE_INFO_MOUSE = 'struct;dword Id;dword NumberOfButtons;dword SampleRate;int HasHorizontalWheel;endstruc'
Global Const $tagRID_DEVICE_INFO_KEYBOARD = 'struct;dword KbType;dword KbSubType;dword KeyboardMode;dword NumberOfFunctionKeys;dword NumberOfIndicators;dword NumberOfKeysTotal;endstruct'
Global Const $tagRID_DEVICE_INFO_HID = 'struct;dword VendorId;dword ProductId;dword VersionNumber;ushort UsagePage;ushort Usage;endstruc'
Global Const $tagRID_INFO_MOUSE = 'dword Size;dword Type;' & $tagRID_DEVICE_INFO_MOUSE & ';dword Unused[2];'
Global Const $tagRID_INFO_KEYBOARD = 'dword Size;dword Type;' & $tagRID_DEVICE_INFO_KEYBOARD
Global Const $tagRID_INFO_HID = 'dword Size;dword Type;' & $tagRID_DEVICE_INFO_HID & ';dword Unused[2]'
Global Const $tagUSEROBJECTFLAGS = 'int Inherit;int Reserved;dword Flags'
Func _WinAPI_ActivateKeyboardLayout($hLocale, $iFlag = 0)
Local $aCall = DllCall('user32.dll', 'handle', 'ActivateKeyboardLayout', 'handle', $hLocale, 'uint', $iFlag)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_AddClipboardFormatListener($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'AddClipboardFormatListener', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CallNextHookEx($hHook, $iCode, $wParam, $lParam)
Local $aCall = DllCall("user32.dll", "lresult", "CallNextHookEx", "handle", $hHook, "int", $iCode, "wparam", $wParam, "lparam", $lParam)
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_CloseDesktop($hDesktop)
Local $aCall = DllCall('user32.dll', 'bool', 'CloseDesktop', 'handle', $hDesktop)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CloseWindowStation($hStation)
Local $aCall = DllCall('user32.dll', 'bool', 'CloseWindowStation', 'handle', $hStation)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CompressBuffer($pUncompressedBuffer, $iUncompressedSize, $pCompressedBuffer, $iCompressedSize, $iFormatAndEngine = 0x0002)
Local $aCall, $pWorkSpace = 0, $iError = 0
Do
$aCall = DllCall('ntdll.dll', 'uint', 'RtlGetCompressionWorkSpaceSize', 'ushort', $iFormatAndEngine, 'ulong*', 0, 'ulong*', 0)
If @error Or $aCall[0] Then
$iError = @error + 20
ExitLoop
EndIf
$pWorkSpace = __HeapAlloc($aCall[2])
If @error Then
$iError = @error + 100
ExitLoop
EndIf
$aCall = DllCall('ntdll.dll', 'uint', 'RtlCompressBuffer', 'ushort', $iFormatAndEngine, 'struct*', $pUncompressedBuffer,  'ulong', $iUncompressedSize, 'struct*', $pCompressedBuffer, 'ulong', $iCompressedSize, 'ulong', 4096,  'ulong*', 0, 'ptr', $pWorkSpace)
If @error Or $aCall[0] Or Not $aCall[7] Then
$iError = @error + 30
ExitLoop
EndIf
Until 1
__HeapFree($pWorkSpace)
If $iError Then
If IsArray($aCall) Then
Return SetError(10, $aCall[0], 0)
Else
Return SetError($iError, 0, 0)
EndIf
EndIf
Return $aCall[7]
EndFunc
Func _WinAPI_ComputeCrc32($pMemory, $iLength)
If _WinAPI_IsBadReadPtr($pMemory, $iLength) Then Return SetError(1, @extended, 0)
Local $aCall = DllCall('ntdll.dll', 'dword', 'RtlComputeCrc32', 'dword', 0, 'struct*', $pMemory, 'int', $iLength)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateDesktop($sName, $iAccess = 0x0002, $iFlags = 0, $iHeap = 0, $tSecurity = 0)
Local $aCall
If $iHeap Then
$aCall = DllCall('user32.dll', 'handle', 'CreateDesktopExW', 'wstr', $sName, 'ptr', 0, 'ptr', 0, 'dword', $iFlags,  'dword', $iAccess, 'struct*', $tSecurity, 'ulong', $iHeap, 'ptr', 0)
Else
$aCall = DllCall('user32.dll', 'handle', 'CreateDesktopW', 'wstr', $sName, 'ptr', 0, 'ptr', 0, 'dword', $iFlags,  'dword', $iAccess, 'struct*', $tSecurity)
EndIf
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateWindowStation($sName = '', $iAccess = 0, $iFlags = 0, $tSecurity = 0)
Local $aCall = DllCall('user32.dll', 'handle', 'CreateWindowStationW', 'wstr', $sName, 'dword', $iFlags, 'dword', $iAccess,  'struct*', $tSecurity)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DecompressBuffer($pUncompressedBuffer, $iUncompressedSize, $pCompressedBuffer, $iCompressedSize, $iFormat = 0x0002)
Local $aCall = DllCall('ntdll.dll', 'long', 'RtlDecompressBuffer', 'ushort', $iFormat, 'struct*', $pUncompressedBuffer,  'ulong', $iUncompressedSize, 'struct*', $pCompressedBuffer, 'ulong', $iCompressedSize, 'ulong*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[6]
EndFunc
Func _WinAPI_DefRawInputProc($paRawInput, $iInput)
Local $aCall = DllCall('user32.dll', 'lresult', 'DefRawInputProc', 'ptr', $paRawInput, 'int', $iInput,  'uint', DllStructGetSize(DllStructCreate($tagRAWINPUTHEADER)))
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_EnumDesktops($hStation)
If StringCompare(_WinAPI_GetUserObjectInformation($hStation, 3), 'WindowStation') Then Return SetError(1, 0, 0)
Local $hEnumProc = DllCallbackRegister('__EnumDefaultProc', 'bool', 'ptr;lparam')
Dim $__g_vEnum[101] = [0]
Local $aCall = DllCall('user32.dll', 'bool', 'EnumDesktopsW', 'handle', $hStation, 'ptr', DllCallbackGetPtr($hEnumProc),  'lparam', 0)
If @error Or Not $aCall[0] Or Not $__g_vEnum[0] Then
$__g_vEnum = @error + 10
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_EnumDesktopWindows($hDesktop, $bVisible = True)
If StringCompare(_WinAPI_GetUserObjectInformation($hDesktop, 3), 'Desktop') Then Return SetError(1, 0, 0)
Local $hEnumProc = DllCallbackRegister('__EnumWindowsProc', 'bool', 'hwnd;lparam')
Dim $__g_vEnum[101][2] = [[0]]
Local $aCall = DllCall('user32.dll', 'bool', 'EnumDesktopWindows', 'handle', $hDesktop, 'ptr', DllCallbackGetPtr($hEnumProc),  'lparam', $bVisible)
If @error Or Not $aCall[0] Or Not $__g_vEnum[0][0] Then
$__g_vEnum = @error + 10
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_EnumPageFiles()
Local $aInfo = _WinAPI_GetSystemInfo()
Local $hEnumProc = DllCallbackRegister('__EnumPageFilesProc', 'bool', 'lparam;ptr;ptr')
Dim $__g_vEnum[101][4] = [[0]]
Local $aCall = DllCall(@SystemDir & '\psapi.dll', 'bool', 'EnumPageFilesW', 'ptr', DllCallbackGetPtr($hEnumProc), 'lparam', $aInfo[1])
If @error Or Not $aCall[0] Or Not $__g_vEnum[0][0] Then
$__g_vEnum = @error + 10
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_EnumRawInputDevices()
Local Const $tagRAWINPUTDEVICELIST = 'struct;handle hDevice;dword Type;endstruct'
Local $tRIDL, $iLength = DllStructGetSize(DllStructCreate($tagRAWINPUTDEVICELIST))
Local $aCall = DllCall('user32.dll', 'uint', 'GetRawInputDeviceList', 'ptr', 0, 'uint*', 0, 'uint', $iLength)
If @error Then Return SetError(@error + 10, @extended, 0)
If ($aCall[0] = 4294967295) Or (Not $aCall[2]) Then Return SetError(10, -1, 0)
Local $tData = DllStructCreate('byte[' & ($aCall[2] * $iLength) & ']')
Local $pData = DllStructGetPtr($tData)
If @error Then Return SetError(@error + 20, 0, 0)
$aCall = DllCall('user32.dll', 'uint', 'GetRawInputDeviceList', 'ptr', $pData, 'uint*', $aCall[2], 'uint', $iLength)
If ($aCall[0] = 4294967295) Or (Not $aCall[0]) Then Return SetError(1, -1, 0)
Local $aRet[$aCall[2] + 1][2] = [[$aCall[2]]]
For $i = 1 To $aCall[2]
$tRIDL = DllStructCreate('ptr;dword', $pData + $iLength * ($i - 1))
For $j = 0 To 1
$aRet[$i][$j] = DllStructGetData($tRIDL, $j + 1)
Next
Next
Return $aRet
EndFunc
Func _WinAPI_EnumWindowStations()
Local $hEnumProc = DllCallbackRegister('__EnumDefaultProc', 'bool', 'ptr;lparam')
Dim $__g_vEnum[101] = [0]
Local $aCall = DllCall('user32.dll', 'bool', 'EnumWindowStationsW', 'ptr', DllCallbackGetPtr($hEnumProc), 'lparam', 0)
If @error Or Not $aCall[0] Or Not $__g_vEnum[0] Then
$__g_vEnum = @error + 10
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_ExpandEnvironmentStrings($sString)
Local $aCall = DllCall("kernel32.dll", "dword", "ExpandEnvironmentStringsW", "wstr", $sString, "wstr", "", "dword", 4096)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, "")
Return $aCall[2]
EndFunc
Func _WinAPI_GetActiveWindow()
Local $aCall = DllCall('user32.dll', 'hwnd', 'GetActiveWindow')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetAsyncKeyState($iKey)
Local $aCall = DllCall("user32.dll", "short", "GetAsyncKeyState", "int", $iKey)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetCapture()
Local $aCall = DllCall("user32.dll", "hwnd", "GetCapture")
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetClipboardSequenceNumber()
Local $aCall = DllCall('user32.dll', 'dword', 'GetClipboardSequenceNumber')
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetCurrentHwProfile()
Local $tagHW_PROFILE_INFO = 'dword DockInfo;wchar szHwProfileGuid[39];wchar szHwProfileName[80]'
Local $tHWPI = DllStructCreate($tagHW_PROFILE_INFO)
Local $aCall = DllCall('advapi32.dll', 'bool', 'GetCurrentHwProfileW', 'struct*', $tHWPI)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[3]
For $i = 0 To 2
$aRet[$i] = DllStructGetData($tHWPI, $i + 1)
Next
Return $aRet
EndFunc
Func _WinAPI_GetDefaultPrinter()
Local $aCall = DllCall('winspool.drv', 'bool', 'GetDefaultPrinterW', 'wstr', '', 'dword*', 2048)
If @error Then Return SetError(@error, @extended, '')
If Not $aCall[0] Then Return SetError(10, _WinAPI_GetLastError(), '')
Return $aCall[1]
EndFunc
Func _WinAPI_GetDllDirectory()
Local $aCall = DllCall('kernel32.dll', 'dword', 'GetDllDirectoryW', 'dword', 4096, 'wstr', '')
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_GetEffectiveClientRect($hWnd, $aCtrl, $iStart = 0, $iEnd = -1)
If Not IsArray($aCtrl) Then
Local $iCtrl = $aCtrl
Dim $aCtrl[1] = [$iCtrl]
$iStart = 0
$iEnd = 0
EndIf
If __CheckErrorArrayBounds($aCtrl, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)
Local $iCount = $iEnd - $iStart + 1
Local $tCtrl = DllStructCreate('uint64[' & ($iCount + 2) & ']')
$iCount = 2
For $i = $iStart To $iEnd
If IsHWnd($aCtrl[$i]) Then
$aCtrl[$i] = _WinAPI_GetDlgCtrlID($aCtrl[$i])
EndIf
DllStructSetData($tCtrl, 1, _WinAPI_MakeQWord(1, $aCtrl[$i]), $iCount)
$iCount += 1
Next
Local $tRECT = DllStructCreate($tagRECT)
DllCall('comctl32.dll', 'none', 'GetEffectiveClientRect', 'hwnd', $hWnd, 'struct*', $tRECT, 'struct*', $tCtrl)
If @error Then Return SetError(@error, @extended, 0)
Return $tRECT
EndFunc
Func _WinAPI_GetHandleInformation($hObject)
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetHandleInformation', 'handle', $hObject, 'dword*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[2]
EndFunc
Func _WinAPI_GetIdleTime()
Local $tLASTINPUTINFO = DllStructCreate('uint;dword')
DllStructSetData($tLASTINPUTINFO, 1, DllStructGetSize($tLASTINPUTINFO))
Local $aCall = DllCall('user32.dll', 'bool', 'GetLastInputInfo', 'struct*', $tLASTINPUTINFO)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return _WinAPI_GetTickCount() - DllStructGetData($tLASTINPUTINFO, 2)
EndFunc
Func _WinAPI_GetKeyboardLayout($hWnd)
Local $aCall = DllCall('user32.dll', 'dword', 'GetWindowThreadProcessId', 'hwnd', $hWnd, 'ptr', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
$aCall = DllCall('user32.dll', 'handle', 'GetKeyboardLayout', 'dword', $aCall[0])
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetKeyboardLayoutList()
Local $aCall = DllCall('user32.dll', 'uint', 'GetKeyboardLayoutList', 'int', 0, 'ptr', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 20, @extended, 0)
Local $tData = DllStructCreate('handle[' & $aCall[0] & ']')
$aCall = DllCall('user32.dll', 'uint', 'GetKeyboardLayoutList', 'int', $aCall[0], 'struct*', $tData)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aList[$aCall[0] + 1] = [$aCall[0]]
For $i = 1 To $aList[0]
$aList[$i] = DllStructGetData($tData, 1, $i)
Next
Return $aList
EndFunc
Func _WinAPI_GetKeyboardState()
Local $tData = DllStructCreate('byte[256]')
Local $aCall = DllCall('user32.dll', 'bool', 'GetKeyboardState', 'struct*', $tData)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tData
EndFunc
Func _WinAPI_GetKeyboardType($iType)
Local $aCall = DllCall('user32.dll', 'int', 'GetKeyboardType', 'int', $iType)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetKeyNameText($lParam)
Local $aCall = DllCall('user32.dll', 'int', 'GetKeyNameTextW', 'long', $lParam, 'wstr', '', 'int', 128)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_GetKeyState($vKey)
Local $aCall = DllCall('user32.dll', 'short', 'GetKeyState', 'int', $vKey)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetModuleHandleEx($sModule, $iFlags = 0)
If StringStripWS($sModule, $STR_STRIPLEADING + $STR_STRIPTRAILING) = "" Then $sModule = Null
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetModuleHandleExW', 'dword', $iFlags, "wstr", $sModule, 'ptr*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[3]
EndFunc
Func _WinAPI_GetMUILanguage()
Local $aCall = DllCall('comctl32.dll', 'word', 'GetMUILanguage')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetPerformanceInfo()
Local $tPI = DllStructCreate('dword;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;dword;dword;dword')
Local $aCall = DllCall(@SystemDir & '\psapi.dll', 'bool', 'GetPerformanceInfo', 'struct*', $tPI, 'dword', DllStructGetSize($tPI))
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[13]
For $i = 0 To 12
$aRet[$i] = DllStructGetData($tPI, $i + 2)
Next
For $i = 0 To 8
$aRet[$i] *= $aRet[9]
Next
Return $aRet
EndFunc
Func _WinAPI_GetProcAddress($hModule, $vName)
Local $sType = "str"
If IsNumber($vName) Then $sType = "word"
Local $aCall = DllCall("kernel32.dll", "ptr", "GetProcAddress", "handle", $hModule, $sType, $vName)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetPhysicallyInstalledSystemMemory()
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetPhysicallyInstalledSystemMemory', 'uint64*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[1]
EndFunc
Func _WinAPI_GetProcessShutdownParameters()
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetProcessShutdownParameters', 'dword*', 0, 'dword*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return SetExtended(Number(Not $aCall[2]), $aCall[1])
EndFunc
Func _WinAPI_GetProcessWindowStation()
Local $aCall = DllCall('user32.dll', 'handle', 'GetProcessWindowStation')
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetPwrCapabilities()
If Not __DLL('powrprof.dll') Then Return SetError(103, 0, 0)
Local $tSPC = DllStructCreate('byte[18];byte[3];byte;byte[8];byte[2];ulong[6];ulong[5]')
Local $aCall = DllCall('powrprof.dll', 'boolean', 'GetPwrCapabilities', 'struct*', $tSPC)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[25]
For $i = 0 To 17
$aRet[$i] = DllStructGetData($tSPC, 1, $i + 1)
Next
$aRet[18] = DllStructGetData($tSPC, 3)
For $i = 19 To 20
$aRet[$i] = DllStructGetData($tSPC, 5, $i - 18)
Next
For $i = 21 To 24
$aRet[$i] = DllStructGetData($tSPC, 7, $i - 20)
Next
Return $aRet
EndFunc
Func _WinAPI_GetRawInputBuffer($pBuffer, $iLength)
Local $aCall = DllCall('user32.dll', 'uint', 'GetRawInputBuffer', 'struct*', $pBuffer, 'uint*', $iLength,  'uint', DllStructGetSize(DllStructCreate($tagRAWINPUTHEADER)))
If @error Then Return SetError(@error, @extended, 0)
If ($aCall[0] = 4294967295) Or (Not $aCall[1]) Then Return SetError(10, -1, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetRawInputBufferLength()
Local $aCall = DllCall('user32.dll', 'uint', 'GetRawInputBuffer', 'ptr', 0, 'uint*', 0,  'uint', DllStructGetSize(DllStructCreate($tagRAWINPUTHEADER)))
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] = 4294967295 Then Return SetError(10, -1, 0)
Return $aCall[2] * 8
EndFunc
Func _WinAPI_GetRawInputData($hRawInput, $pBuffer, $iLength, $iFlag)
Local $aCall = DllCall('user32.dll', 'uint', 'GetRawInputData', 'handle', $hRawInput, 'uint', $iFlag, 'struct*', $pBuffer,  'uint*', $iLength, 'uint', DllStructGetSize(DllStructCreate($tagRAWINPUTHEADER)))
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] = 4294967295 Then Return SetError(10, -1, 0)
Return ($aCall[3] ? $aCall[0] : $aCall[4])
EndFunc
Func _WinAPI_GetRawInputDeviceInfo($hDevice, $pBuffer, $iLength, $iFlag)
Local $aCall = DllCall('user32.dll', 'uint', 'GetRawInputDeviceInfoW', 'handle', $hDevice, 'uint', $iFlag, 'struct*', $pBuffer,  'uint*', $iLength)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] = 4294967295 Then Return SetError(10, -1, 0)
Return ($aCall[3] ? $aCall[0] : $aCall[4])
EndFunc
Func _WinAPI_GetRegisteredRawInputDevices($pBuffer, $iLength)
Local $iLengthRAW = DllStructGetSize(DllStructCreate($tagRAWINPUTDEVICE))
Local $aCall = DllCall('user32.dll', 'uint', 'GetRegisteredRawInputDevices', 'struct*', $pBuffer,  'uint*', Floor($iLength / $iLengthRAW), 'uint', $iLengthRAW)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] = 4294967295 Then
Local $iLastError = _WinAPI_GetLastError()
If $iLastError = 122 Then Return SetExtended($iLastError, $aCall[2] * $iLengthRAW)
Return SetError(10, $iLastError, 0)
EndIf
Return $aCall[0]
EndFunc
Func _WinAPI_GetStartupInfo()
Local $tSI = DllStructCreate($tagSTARTUPINFO)
DllCall('kernel32.dll', 'none', 'GetStartupInfoW', 'struct*', $tSI)
If @error Then Return SetError(@error, @extended, 0)
Return $tSI
EndFunc
Func _WinAPI_GetSystemDEPPolicy()
Local $aCall = DllCall('kernel32.dll', 'uint', 'GetSystemDEPPolicy')
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_GetSystemInfo()
Local $sProc
If _WinAPI_IsWow64Process() Then
$sProc = 'GetNativeSystemInfo'
Else
$sProc = 'GetSystemInfo'
EndIf
Local Const $tagSYSTEMINFO = 'struct;word ProcessorArchitecture;word Reserved; endstruct;dword PageSize;' &  'ptr MinimumApplicationAddress;ptr MaximumApplicationAddress;dword_ptr ActiveProcessorMask;dword NumberOfProcessors;' &  'dword ProcessorType;dword AllocationGranularity;word ProcessorLevel;word ProcessorRevision'
Local $tSystemInfo = DllStructCreate($tagSYSTEMINFO)
DllCall('kernel32.dll', 'none', $sProc, 'struct*', $tSystemInfo)
If @error Then Return SetError(@error, @extended, 0)
Local $aRet[10]
$aRet[0] = DllStructGetData($tSystemInfo, 1)
For $i = 1 To 9
$aRet[$i] = DllStructGetData($tSystemInfo, $i + 2)
Next
Return $aRet
EndFunc
Func _WinAPI_GetSystemPowerStatus()
Local $tagSYSTEM_POWER_STATUS = 'byte ACLineStatus;byte BatteryFlag;byte BatteryLifePercent;byte Reserved1;' &  'int BatteryLifeTime;int BatteryFullLifeTime'
Local $tSYSTEM_POWER_STATUS = DllStructCreate($tagSYSTEM_POWER_STATUS)
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetSystemPowerStatus', 'struct*', $tSYSTEM_POWER_STATUS)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[5]
$aRet[0] = DllStructGetData($tSYSTEM_POWER_STATUS, 1)
$aRet[1] = DllStructGetData($tSYSTEM_POWER_STATUS, 2)
$aRet[2] = DllStructGetData($tSYSTEM_POWER_STATUS, 3)
$aRet[3] = DllStructGetData($tSYSTEM_POWER_STATUS, 5)
$aRet[4] = DllStructGetData($tSYSTEM_POWER_STATUS, 6)
Return $aRet
EndFunc
Func _WinAPI_GetSystemTimes()
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetSystemTimes', 'uint64*', 0, 'uint64*', 0, 'uint64*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[3]
For $i = 0 To 2
$aRet[$i] = $aCall[$i + 1]
Next
Return $aRet
EndFunc
Func _WinAPI_GetSystemWow64Directory()
Local $aCall = DllCall('kernel32.dll', 'uint', 'GetSystemWow64DirectoryW', 'wstr', '', 'uint', 4096)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, _WinAPI_GetLastError(), '')
Return $aCall[1]
EndFunc
Func _WinAPI_GetTickCount()
Local $aCall = DllCall('kernel32.dll', 'dword', 'GetTickCount')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetTickCount64()
Local $aCall = DllCall('kernel32.dll', 'uint64', 'GetTickCount64')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetUserObjectInformation($hObject, $iIndex)
Local $aCall = DllCall('user32.dll', 'bool', 'GetUserObjectInformationW', 'handle', $hObject, 'int', $iIndex, 'ptr', 0,  'dword', 0, 'dword*', 0)
If @error Or Not $aCall[5] Then Return SetError(@error + 10, @extended, 0)
Local $tData
Switch $iIndex
Case 1
$tData = DllStructCreate($tagUSEROBJECTFLAGS)
Case 5, 6
$tData = DllStructCreate('uint')
Case 2, 3
$tData = DllStructCreate('wchar[' & $aCall[5] & ']')
Case 4
$tData = DllStructCreate('byte[' & $aCall[5] & ']')
Case Else
Return SetError(20, 0, 0)
EndSwitch
$aCall = DllCall('user32.dll', 'bool', 'GetUserObjectInformationW', 'handle', $hObject, 'int', $iIndex, 'struct*', $tData,  'dword', DllStructGetSize($tData), 'dword*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 30, @extended, 0)
Switch $iIndex
Case 1, 4
Return $tData
Case Else
Return DllStructGetData($tData, 1)
EndSwitch
EndFunc
Func _WinAPI_GetVersionEx()
Local $tOSVERSIONINFOEX = DllStructCreate($tagOSVERSIONINFOEX)
DllStructSetData($tOSVERSIONINFOEX, 'OSVersionInfoSize', DllStructGetSize($tOSVERSIONINFOEX))
Local $aCall = DllCall('kernel32.dll', 'bool', 'GetVersionExW', 'struct*', $tOSVERSIONINFOEX)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tOSVERSIONINFOEX
EndFunc
Func _WinAPI_GetWorkArea()
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('user32.dll', 'int', 'SystemParametersInfo', 'uint', 48, 'uint', 0, 'struct*', $tRECT, 'uint', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tRECT
EndFunc
Func _WinAPI_InitMUILanguage($iLanguage)
DllCall('comctl32.dll', 'none', 'InitMUILanguage', 'word', $iLanguage)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_IsLoadKBLayout($iLanguage)
Local $aLayout = _WinAPI_GetKeyboardLayoutList()
If @error Then Return SetError(@error, @extended, False)
For $i = 1 To $aLayout[0]
If $aLayout[$i] = $iLanguage Then Return True
Next
Return False
EndFunc
Func _WinAPI_IsProcessorFeaturePresent($iFeature)
Local $aCall = DllCall('kernel32.dll', 'bool', 'IsProcessorFeaturePresent', 'dword', $iFeature)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsWindowEnabled($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'IsWindowEnabled', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_Keybd_Event($vKey, $iFlags, $iScanCode = 0, $iExtraInfo = 0)
DllCall('user32.dll', 'none', 'keybd_event', 'byte', $vKey, 'byte', $iScanCode, 'dword', $iFlags, 'ulong_ptr', $iExtraInfo)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_LoadKeyboardLayout($iLanguage, $iFlag = 0)
Local $aCall = DllCall('user32.dll', 'handle', 'LoadKeyboardLayoutW', 'wstr', Hex($iLanguage, 8), 'uint', $iFlag)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_LockWorkStation()
Local $aCall = DllCall('user32.dll', 'bool', 'LockWorkStation')
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_MapVirtualKey($iCode, $iType, $hLocale = 0)
Local $aCall = DllCall('user32.dll', 'INT', 'MapVirtualKeyExW', 'uint', $iCode, 'uint', $iType, 'uint_ptr', $hLocale)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_Mouse_Event($iFlags, $iX = 0, $iY = 0, $iData = 0, $iExtraInfo = 0)
DllCall("user32.dll", "none", "mouse_event", "dword", $iFlags, "dword", $iX, "dword", $iY, "dword", $iData,  "ulong_ptr", $iExtraInfo)
If @error Then Return SetError(@error, @extended)
EndFunc
Func _WinAPI_OpenDesktop($sName, $iAccess = 0, $iFlags = 0, $bInherit = False)
Local $aCall = DllCall('user32.dll', 'handle', 'OpenDesktopW', 'wstr', $sName, 'dword', $iFlags, 'bool', $bInherit,  'dword', $iAccess)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_OpenInputDesktop($iAccess = 0, $iFlags = 0, $bInherit = False)
Local $aCall = DllCall('user32.dll', 'handle', 'OpenInputDesktop', 'dword', $iFlags, 'bool', $bInherit, 'dword', $iAccess)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_OpenWindowStation($sName, $iAccess = 0, $bInherit = False)
Local $aCall = DllCall('user32.dll', 'handle', 'OpenWindowStationW', 'wstr', $sName, 'bool', $bInherit, 'dword', $iAccess)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_QueryPerformanceCounter()
Local $aCall = DllCall('kernel32.dll', 'bool', 'QueryPerformanceCounter', 'int64*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[1]
EndFunc
Func _WinAPI_QueryPerformanceFrequency()
Local $aCall = DllCall('kernel32.dll', 'bool', 'QueryPerformanceFrequency', 'int64*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[1]
EndFunc
Func _WinAPI_RegisterHotKey($hWnd, $iID, $iModifiers, $vKey)
Local $aCall = DllCall('user32.dll', 'bool', 'RegisterHotKey', 'hwnd', $hWnd, 'int', $iID, 'uint', $iModifiers, 'uint', $vKey)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_RegisterPowerSettingNotification($hWnd, $sGUID)
Local $tGUID = DllStructCreate($tagGUID)
Local $aCall = DllCall('ole32.dll', 'long', 'CLSIDFromString', 'wstr', $sGUID, 'struct*', $tGUID)
If @error Or $aCall[0] Then Return SetError(@error + 20, @extended, 0)
$aCall = DllCall('user32.dll', 'handle', 'RegisterPowerSettingNotification', 'handle', $hWnd, 'struct*', $tGUID, 'dword', 0)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_RegisterRawInputDevices($paDevice, $iCount = 1)
Local $aCall = DllCall('user32.dll', 'bool', 'RegisterRawInputDevices', 'struct*', $paDevice, 'uint', $iCount,  'uint', DllStructGetSize(DllStructCreate($tagRAWINPUTDEVICE)))
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ReleaseCapture()
Local $aCall = DllCall("user32.dll", "bool", "ReleaseCapture")
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_RemoveClipboardFormatListener($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'RemoveClipboardFormatListener', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetActiveWindow($hWnd)
Local $aCall = DllCall('user32.dll', 'int', 'SetActiveWindow', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetCapture($hWnd)
Local $aCall = DllCall("user32.dll", "hwnd", "SetCapture", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetDefaultPrinter($sPrinter)
Local $aCall = DllCall("winspool.drv", "bool", "SetDefaultPrinterW", "wstr", $sPrinter)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetDllDirectory($sDirPath = Default)
If $sDirPath = Default Then $sDirPath = Null
Local $aCall = DllCall('kernel32.dll', 'bool', 'SetDllDirectoryW', 'wstr', $sDirPath)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetKeyboardLayout($hWnd, $iLanguage, $iFlags = 0)
If Not _WinAPI_IsWindow($hWnd) Then Return SetError(@error + 10, @extended, 0)
Local $hLocale = 0
If $iLanguage Then
$hLocale = _WinAPI_LoadKeyboardLayout($iLanguage)
If Not $hLocale Then Return SetError(10, 0, 0)
EndIf
Local Const $WM_INPUTLANGCHANGEREQUEST = 0x0050
DllCall('user32.dll', 'none', 'SendMessage', 'hwnd', $hWnd, 'uint', $WM_INPUTLANGCHANGEREQUEST, 'uint', $iFlags, 'uint_ptr', $hLocale)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_SetKeyboardState(ByRef $tState)
Local $aCall = DllCall('user32.dll', 'int', 'SetKeyboardState', 'struct*', $tState)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetProcessShutdownParameters($iLevel, $bDialog = False)
Local $aCall = DllCall('kernel32.dll', 'bool', 'SetProcessShutdownParameters', 'dword', $iLevel, 'dword', Not $bDialog)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetProcessWindowStation($hStation)
Local $aCall = DllCall('user32.dll', 'bool', 'SetProcessWindowStation', 'handle', $hStation)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetUserObjectInformation($hObject, $iIndex, ByRef $tData)
If $iIndex <> 1 Then Return SetError(10, 0, False)
Local $aCall = DllCall('user32.dll', 'bool', 'SetUserObjectInformationW', 'handle', $hObject, 'int', 1, 'struct*', $tData,  'dword', DllStructGetSize($tData))
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWindowsHookEx($iHook, $pProc, $hDll, $iThreadId = 0)
Local $aCall = DllCall("user32.dll", "handle", "SetWindowsHookEx", "int", $iHook, "ptr", $pProc, "handle", $hDll,  "dword", $iThreadId)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWinEventHook($iEventMin, $iEventMax, $pEventProc, $iPID = 0, $iThreadId = 0, $iFlags = 0)
Local $aCall = DllCall('user32.dll', 'handle', 'SetWinEventHook', 'uint', $iEventMin, 'uint', $iEventMax, 'ptr', 0,  'ptr', $pEventProc, 'dword', $iPID, 'dword', $iThreadId, 'uint', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ShutdownBlockReasonCreate($hWnd, $sText)
Local $aCall = DllCall('user32.dll', 'bool', 'ShutdownBlockReasonCreate', 'hwnd', $hWnd, 'wstr', $sText)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShutdownBlockReasonDestroy($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'ShutdownBlockReasonDestroy', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShutdownBlockReasonQuery($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'ShutdownBlockReasonQuery', 'hwnd', $hWnd, 'wstr', '', 'dword*', 4096)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_SwitchDesktop($hDesktop)
Local $aCall = DllCall('user32.dll', 'bool', 'SwitchDesktop', 'handle', $hDesktop)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SystemParametersInfo($iAction, $iParam = 0, $vParam = 0, $iWinIni = 0)
Local $aCall = DllCall("user32.dll", "bool", "SystemParametersInfoW", "uint", $iAction, "uint", $iParam, "struct*", $vParam,  "uint", $iWinIni)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_TrackMouseEvent($hWnd, $iFlags, $iTime = -1)
Local $tTME = DllStructCreate('dword;dword;hwnd;dword')
DllStructSetData($tTME, 1, DllStructGetSize($tTME))
DllStructSetData($tTME, 2, $iFlags)
DllStructSetData($tTME, 3, $hWnd)
DllStructSetData($tTME, 4, $iTime)
Local $aCall = DllCall('user32.dll', 'bool', 'TrackMouseEvent', 'struct*', $tTME)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_UnhookWindowsHookEx($hHook)
Local $aCall = DllCall("user32.dll", "bool", "UnhookWindowsHookEx", "handle", $hHook)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_UnhookWinEvent($hEventHook)
Local $aCall = DllCall('user32.dll', 'bool', 'UnhookWinEvent', 'handle', $hEventHook)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_UnloadKeyboardLayout($hLocale)
Local $aCall = DllCall('user32.dll', 'bool', 'UnloadKeyboardLayout', 'handle', $hLocale)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_UnregisterHotKey($hWnd, $iID)
Local $aCall = DllCall('user32.dll', 'bool', 'UnregisterHotKey', 'hwnd', $hWnd, 'int', $iID)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_UnregisterPowerSettingNotification($hNotify)
Local $aCall = DllCall('user32.dll', 'bool', 'UnregisterPowerSettingNotification', 'handle', $hNotify)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func __EnumPageFilesProc($iSize, $pInfo, $pFile)
Local $tEPFI = DllStructCreate('dword;dword;ulong_ptr;ulong_ptr;ulong_ptr', $pInfo)
__Inc($__g_vEnum)
$__g_vEnum[$__g_vEnum[0][0]][0] = DllStructGetData(DllStructCreate('wchar[' & (_WinAPI_StrLen($pFile) + 1) & ']', $pFile), 1)
For $i = 1 To 3
$__g_vEnum[$__g_vEnum[0][0]][$i] = DllStructGetData($tEPFI, $i + 2) * $iSize
Next
Return 1
EndFunc
Global Const $GUI_EVENT_SINGLE = 0
Global Const $GUI_EVENT_ARRAY = 1
Global Const $GUI_EVENT_NONE = 0
Global Const $GUI_EVENT_CLOSE = -3
Global Const $GUI_EVENT_MINIMIZE = -4
Global Const $GUI_EVENT_RESTORE = -5
Global Const $GUI_EVENT_MAXIMIZE = -6
Global Const $GUI_EVENT_PRIMARYDOWN = -7
Global Const $GUI_EVENT_PRIMARYUP = -8
Global Const $GUI_EVENT_SECONDARYDOWN = -9
Global Const $GUI_EVENT_SECONDARYUP = -10
Global Const $GUI_EVENT_MOUSEMOVE = -11
Global Const $GUI_EVENT_RESIZED = -12
Global Const $GUI_EVENT_DROPPED = -13
Global Const $GUI_RUNDEFMSG = 'GUI_RUNDEFMSG'
Global Const $GUI_AVISTOP = 0
Global Const $GUI_AVISTART = 1
Global Const $GUI_AVICLOSE = 2
Global Const $GUI_CHECKED = 1
Global Const $GUI_INDETERMINATE = 2
Global Const $GUI_UNCHECKED = 4
Global Const $GUI_DROPACCEPTED = 8
Global Const $GUI_NODROPACCEPTED = 4096
Global Const $GUI_ACCEPTFILES = $GUI_DROPACCEPTED
Global Const $GUI_SHOW = 16
Global Const $GUI_HIDE = 32
Global Const $GUI_ENABLE = 64
Global Const $GUI_DISABLE = 128
Global Const $GUI_FOCUS = 256
Global Const $GUI_NOFOCUS = 8192
Global Const $GUI_DEFBUTTON = 512
Global Const $GUI_EXPAND = 1024
Global Const $GUI_ONTOP = 2048
Global Const $GUI_FONTNORMAL = 0
Global Const $GUI_FONTITALIC = 2
Global Const $GUI_FONTUNDER = 4
Global Const $GUI_FONTSTRIKE = 8
Global Const $GUI_DOCKAUTO = 0x0001
Global Const $GUI_DOCKLEFT = 0x0002
Global Const $GUI_DOCKRIGHT = 0x0004
Global Const $GUI_DOCKHCENTER = 0x0008
Global Const $GUI_DOCKTOP = 0x0020
Global Const $GUI_DOCKBOTTOM = 0x0040
Global Const $GUI_DOCKVCENTER = 0x0080
Global Const $GUI_DOCKWIDTH = 0x0100
Global Const $GUI_DOCKHEIGHT = 0x0200
Global Const $GUI_DOCKSIZE = 0x0300
Global Const $GUI_DOCKMENUBAR = 0x0220
Global Const $GUI_DOCKSTATEBAR = 0x0240
Global Const $GUI_DOCKALL = 0x0322
Global Const $GUI_DOCKBORDERS = 0x0066
Global Const $GUI_GR_CLOSE = 1
Global Const $GUI_GR_LINE = 2
Global Const $GUI_GR_BEZIER = 4
Global Const $GUI_GR_MOVE = 6
Global Const $GUI_GR_COLOR = 8
Global Const $GUI_GR_RECT = 10
Global Const $GUI_GR_ELLIPSE = 12
Global Const $GUI_GR_PIE = 14
Global Const $GUI_GR_DOT = 16
Global Const $GUI_GR_PIXEL = 18
Global Const $GUI_GR_HINT = 20
Global Const $GUI_GR_REFRESH = 22
Global Const $GUI_GR_PENSIZE = 24
Global Const $GUI_GR_NOBKCOLOR = -2
Global Const $GUI_BKCOLOR_DEFAULT = -1
Global Const $GUI_BKCOLOR_TRANSPARENT = -2
Global Const $GUI_BKCOLOR_LV_ALTERNATE = 0xFE000000
Global Const $GUI_READ_DEFAULT = 0
Global Const $GUI_READ_EXTENDED = 1
Global Const $GUI_CURSOR_NOOVERRIDE = 0
Global Const $GUI_CURSOR_OVERRIDE = 1
Global Const $GUI_WS_EX_PARENTDRAG = 0x00100000
Global Const $WC_ANIMATE = 'SysAnimate32'
Global Const $WC_BUTTON = 'Button'
Global Const $WC_COMBOBOX = 'ComboBox'
Global Const $WC_COMBOBOXEX = 'ComboBoxEx32'
Global Const $WC_DATETIMEPICK = 'SysDateTimePick32'
Global Const $WC_EDIT = 'Edit'
Global Const $WC_HEADER = 'SysHeader32'
Global Const $WC_HOTKEY = 'msctls_hotkey32'
Global Const $WC_IPADDRESS = 'SysIPAddress32'
Global Const $WC_LINK = 'SysLink'
Global Const $WC_LISTBOX = 'ListBox'
Global Const $WC_LISTVIEW = 'SysListView32'
Global Const $WC_MONTHCAL = 'SysMonthCal32'
Global Const $WC_NATIVEFONTCTL = 'NativeFontCtl'
Global Const $WC_PAGESCROLLER = 'SysPager'
Global Const $WC_PROGRESS = 'msctls_progress32'
Global Const $WC_REBAR = 'ReBarWindow32'
Global Const $WC_SCROLLBAR = 'ScrollBar'
Global Const $WC_STATIC = 'Static'
Global Const $WC_STATUSBAR = 'msctls_statusbar32'
Global Const $WC_TABCONTROL = 'SysTabControl32'
Global Const $WC_TOOLBAR = 'ToolbarWindow32'
Global Const $WC_TOOLTIPS = 'tooltips_class32'
Global Const $WC_TRACKBAR = 'msctls_trackbar32'
Global Const $WC_TREEVIEW = 'SysTreeView32'
Global Const $WC_UPDOWN = 'msctls_updown32'
Global Const $WS_OVERLAPPED = 0
Global Const $WS_TILED = $WS_OVERLAPPED
Global Const $WS_MAXIMIZEBOX = 0x00010000
Global Const $WS_MINIMIZEBOX = 0x00020000
Global Const $WS_TABSTOP = 0x00010000
Global Const $WS_GROUP = 0x00020000
Global Const $WS_SIZEBOX = 0x00040000
Global Const $WS_THICKFRAME = $WS_SIZEBOX
Global Const $WS_SYSMENU = 0x00080000
Global Const $WS_HSCROLL = 0x00100000
Global Const $WS_VSCROLL = 0x00200000
Global Const $WS_DLGFRAME = 0x00400000
Global Const $WS_BORDER = 0x00800000
Global Const $WS_CAPTION = 0x00C00000
Global Const $WS_OVERLAPPEDWINDOW = BitOR($WS_CAPTION, $WS_MAXIMIZEBOX, $WS_MINIMIZEBOX, $WS_OVERLAPPED, $WS_SYSMENU, $WS_THICKFRAME)
Global Const $WS_TILEDWINDOW = $WS_OVERLAPPEDWINDOW
Global Const $WS_MAXIMIZE = 0x01000000
Global Const $WS_CLIPCHILDREN = 0x02000000
Global Const $WS_CLIPSIBLINGS = 0x04000000
Global Const $WS_DISABLED = 0x08000000
Global Const $WS_VISIBLE = 0x10000000
Global Const $WS_MINIMIZE = 0x20000000
Global Const $WS_ICONIC = $WS_MINIMIZE
Global Const $WS_CHILD = 0x40000000
Global Const $WS_CHILDWINDOW = $WS_CHILD
Global Const $WS_POPUP = 0x80000000
Global Const $WS_POPUPWINDOW = 0x80880000
Global Const $DS_3DLOOK = 0x0004
Global Const $DS_ABSALIGN = 0x0001
Global Const $DS_CENTER = 0x0800
Global Const $DS_CENTERMOUSE = 0x1000
Global Const $DS_CONTEXTHELP = 0x2000
Global Const $DS_CONTROL = 0x0400
Global Const $DS_FIXEDSYS = 0x0008
Global Const $DS_LOCALEDIT = 0x0020
Global Const $DS_MODALFRAME = 0x0080
Global Const $DS_NOFAILCREATE = 0x0010
Global Const $DS_NOIDLEMSG = 0x0100
Global Const $DS_SETFONT = 0x0040
Global Const $DS_SETFOREGROUND = 0x0200
Global Const $DS_SHELLFONT = BitOR($DS_FIXEDSYS, $DS_SETFONT)
Global Const $DS_SYSMODAL = 0x0002
Global Const $WS_EX_ACCEPTFILES = 0x00000010
Global Const $WS_EX_APPWINDOW = 0x00040000
Global Const $WS_EX_COMPOSITED = 0x02000000
Global Const $WS_EX_CONTROLPARENT = 0x10000
Global Const $WS_EX_CLIENTEDGE = 0x00000200
Global Const $WS_EX_CONTEXTHELP = 0x00000400
Global Const $WS_EX_DLGMODALFRAME = 0x00000001
Global Const $WS_EX_LAYERED = 0x00080000
Global Const $WS_EX_LAYOUTRTL = 0x00400000
Global Const $WS_EX_LEFT = 0x00000000
Global Const $WS_EX_LEFTSCROLLBAR = 0x00004000
Global Const $WS_EX_LTRREADING = 0x00000000
Global Const $WS_EX_MDICHILD = 0x00000040
Global Const $WS_EX_NOACTIVATE = 0x08000000
Global Const $WS_EX_NOINHERITLAYOUT = 0x00100000
Global Const $WS_EX_NOPARENTNOTIFY = 0x00000004
Global Const $WS_EX_NOREDIRECTIONBITMAP = 0x00200000
Global Const $WS_EX_RIGHT = 0x00001000
Global Const $WS_EX_RIGHTSCROLLBAR = 0x00000000
Global Const $WS_EX_RTLREADING = 0x2000
Global Const $WS_EX_STATICEDGE = 0x00020000
Global Const $WS_EX_TOOLWINDOW = 0x00000080
Global Const $WS_EX_TOPMOST = 0x00000008
Global Const $WS_EX_TRANSPARENT = 0x00000020
Global Const $WS_EX_WINDOWEDGE = 0x00000100
Global Const $WS_EX_OVERLAPPEDWINDOW = BitOR($WS_EX_CLIENTEDGE, $WS_EX_WINDOWEDGE)
Global Const $WS_EX_PALETTEWINDOW = BitOR($WS_EX_TOOLWINDOW, $WS_EX_TOPMOST, $WS_EX_WINDOWEDGE)
Global Const $WM_NULL = 0x0000
Global Const $WM_CREATE = 0x0001
Global Const $WM_DESTROY = 0x0002
Global Const $WM_MOVE = 0x0003
Global Const $WM_SIZEWAIT = 0x0004
Global Const $WM_SIZE = 0x0005
Global Const $WM_ACTIVATE = 0x0006
Global Const $WM_SETFOCUS = 0x0007
Global Const $WM_KILLFOCUS = 0x0008
Global Const $WM_SETVISIBLE = 0x0009
Global Const $WM_ENABLE = 0x000A
Global Const $WM_SETREDRAW = 0x000B
Global Const $WM_SETTEXT = 0x000C
Global Const $WM_GETTEXT = 0x000D
Global Const $WM_GETTEXTLENGTH = 0x000E
Global Const $WM_PAINT = 0x000F
Global Const $WM_CLOSE = 0x0010
Global Const $WM_QUERYENDSESSION = 0x0011
Global Const $WM_QUIT = 0x0012
Global Const $WM_ERASEBKGND = 0x0014
Global Const $WM_QUERYOPEN = 0x0013
Global Const $WM_SYSCOLORCHANGE = 0x0015
Global Const $WM_ENDSESSION = 0x0016
Global Const $WM_SYSTEMERROR = 0x0017
Global Const $WM_SHOWWINDOW = 0x0018
Global Const $WM_CTLCOLOR = 0x0019
Global Const $WM_SETTINGCHANGE = 0x001A
Global Const $WM_WININICHANGE = 0x001A
Global Const $WM_DEVMODECHANGE = 0x001B
Global Const $WM_ACTIVATEAPP = 0x001C
Global Const $WM_FONTCHANGE = 0x001D
Global Const $WM_TIMECHANGE = 0x001E
Global Const $WM_CANCELMODE = 0x001F
Global Const $WM_SETCURSOR = 0x0020
Global Const $WM_MOUSEACTIVATE = 0x0021
Global Const $WM_CHILDACTIVATE = 0x0022
Global Const $WM_QUEUESYNC = 0x0023
Global Const $WM_GETMINMAXINFO = 0x0024
Global Const $WM_LOGOFF = 0x0025
Global Const $WM_PAINTICON = 0x0026
Global Const $WM_ICONERASEBKGND = 0x0027
Global Const $WM_NEXTDLGCTL = 0x0028
Global Const $WM_ALTTABACTIVE = 0x0029
Global Const $WM_SPOOLERSTATUS = 0x002A
Global Const $WM_DRAWITEM = 0x002B
Global Const $WM_MEASUREITEM = 0x002C
Global Const $WM_DELETEITEM = 0x002D
Global Const $WM_VKEYTOITEM = 0x002E
Global Const $WM_CHARTOITEM = 0x002F
Global Const $WM_SETFONT = 0x0030
Global Const $WM_GETFONT = 0x0031
Global Const $WM_SETHOTKEY = 0x0032
Global Const $WM_GETHOTKEY = 0x0033
Global Const $WM_FILESYSCHANGE = 0x0034
Global Const $WM_ISACTIVEICON = 0x0035
Global Const $WM_QUERYPARKICON = 0x0036
Global Const $WM_QUERYDRAGICON = 0x0037
Global Const $WM_WINHELP = 0x0038
Global Const $WM_COMPAREITEM = 0x0039
Global Const $WM_FULLSCREEN = 0x003A
Global Const $WM_CLIENTSHUTDOWN = 0x003B
Global Const $WM_DDEMLEVENT = 0x003C
Global Const $WM_GETOBJECT = 0x003D
Global Const $WM_CALCSCROLL = 0x003F
Global Const $WM_TESTING = 0x0040
Global Const $WM_COMPACTING = 0x0041
Global Const $WM_OTHERWINDOWCREATED = 0x0042
Global Const $WM_OTHERWINDOWDESTROYED = 0x0043
Global Const $WM_COMMNOTIFY = 0x0044
Global Const $WM_MEDIASTATUSCHANGE = 0x0045
Global Const $WM_WINDOWPOSCHANGING = 0x0046
Global Const $WM_WINDOWPOSCHANGED = 0x0047
Global Const $WM_POWER = 0x0048
Global Const $WM_COPYGLOBALDATA = 0x0049
Global Const $WM_COPYDATA = 0x004A
Global Const $WM_CANCELJOURNAL = 0x004B
Global Const $WM_LOGONNOTIFY = 0x004C
Global Const $WM_KEYF1 = 0x004D
Global Const $WM_NOTIFY = 0x004E
Global Const $WM_ACCESS_WINDOW = 0x004F
Global Const $WM_INPUTLANGCHANGEREQUEST = 0x0050
Global Const $WM_INPUTLANGCHANGE = 0x0051
Global Const $WM_TCARD = 0x0052
Global Const $WM_HELP = 0x0053
Global Const $WM_USERCHANGED = 0x0054
Global Const $WM_NOTIFYFORMAT = 0x0055
Global Const $WM_QM_ACTIVATE = 0x0060
Global Const $WM_HOOK_DO_CALLBACK = 0x0061
Global Const $WM_SYSCOPYDATA = 0x0062
Global Const $WM_FINALDESTROY = 0x0070
Global Const $WM_MEASUREITEM_CLIENTDATA = 0x0071
Global Const $WM_CONTEXTMENU = 0x007B
Global Const $WM_STYLECHANGING = 0x007C
Global Const $WM_STYLECHANGED = 0x007D
Global Const $WM_DISPLAYCHANGE = 0x007E
Global Const $WM_GETICON = 0x007F
Global Const $WM_SETICON = 0x0080
Global Const $WM_NCCREATE = 0x0081
Global Const $WM_NCDESTROY = 0x0082
Global Const $WM_NCCALCSIZE = 0x0083
Global Const $WM_NCHITTEST = 0x0084
Global Const $WM_NCPAINT = 0x0085
Global Const $WM_NCACTIVATE = 0x0086
Global Const $WM_GETDLGCODE = 0x0087
Global Const $WM_SYNCPAINT = 0x0088
Global Const $WM_SYNCTASK = 0x0089
Global Const $WM_KLUDGEMINRECT = 0x008B
Global Const $WM_LPKDRAWSWITCHWND = 0x008C
Global Const $WM_UAHDESTROYWINDOW = 0x0090
Global Const $WM_UAHDRAWMENU = 0x0091
Global Const $WM_UAHDRAWMENUITEM = 0x0092
Global Const $WM_UAHINITMENU = 0x0093
Global Const $WM_UAHMEASUREMENUITEM = 0x0094
Global Const $WM_UAHNCPAINTMENUPOPUP = 0x0095
Global Const $WM_NCMOUSEMOVE = 0x00A0
Global Const $WM_NCLBUTTONDOWN = 0x00A1
Global Const $WM_NCLBUTTONUP = 0x00A2
Global Const $WM_NCLBUTTONDBLCLK = 0x00A3
Global Const $WM_NCRBUTTONDOWN = 0x00A4
Global Const $WM_NCRBUTTONUP = 0x00A5
Global Const $WM_NCRBUTTONDBLCLK = 0x00A6
Global Const $WM_NCMBUTTONDOWN = 0x00A7
Global Const $WM_NCMBUTTONUP = 0x00A8
Global Const $WM_NCMBUTTONDBLCLK = 0x00A9
Global Const $WM_NCXBUTTONDOWN = 0x00AB
Global Const $WM_NCXBUTTONUP = 0x00AC
Global Const $WM_NCXBUTTONDBLCLK = 0x00AD
Global Const $WM_NCUAHDRAWCAPTION = 0x00AE
Global Const $WM_NCUAHDRAWFRAME = 0x00AF
Global Const $WM_INPUT_DEVICE_CHANGE = 0x00FE
Global Const $WM_INPUT = 0x00FF
Global Const $WM_KEYDOWN = 0x0100
Global Const $WM_KEYFIRST = 0x0100
Global Const $WM_KEYUP = 0x0101
Global Const $WM_CHAR = 0x0102
Global Const $WM_DEADCHAR = 0x0103
Global Const $WM_SYSKEYDOWN = 0x0104
Global Const $WM_SYSKEYUP = 0x0105
Global Const $WM_SYSCHAR = 0x0106
Global Const $WM_SYSDEADCHAR = 0x0107
Global Const $WM_YOMICHAR = 0x0108
Global Const $WM_KEYLAST = 0x0109
Global Const $WM_UNICHAR = 0x0109
Global Const $WM_CONVERTREQUEST = 0x010A
Global Const $WM_CONVERTRESULT = 0x010B
Global Const $WM_IM_INFO = 0x010C
Global Const $WM_IME_STARTCOMPOSITION = 0x010D
Global Const $WM_IME_ENDCOMPOSITION = 0x010E
Global Const $WM_IME_COMPOSITION = 0x010F
Global Const $WM_IME_KEYLAST = 0x010F
Global Const $WM_INITDIALOG = 0x0110
Global Const $WM_COMMAND = 0x0111
Global Const $WM_SYSCOMMAND = 0x0112
Global Const $WM_TIMER = 0x0113
Global Const $WM_HSCROLL = 0x0114
Global Const $WM_VSCROLL = 0x0115
Global Const $WM_INITMENU = 0x0116
Global Const $WM_INITMENUPOPUP = 0x0117
Global Const $WM_SYSTIMER = 0x0118
Global Const $WM_GESTURE = 0x0119
Global Const $WM_GESTURENOTIFY = 0x011A
Global Const $WM_GESTUREINPUT = 0x011B
Global Const $WM_GESTURENOTIFIED = 0x011C
Global Const $WM_MENUSELECT = 0x011F
Global Const $WM_MENUCHAR = 0x0120
Global Const $WM_ENTERIDLE = 0x0121
Global Const $WM_MENURBUTTONUP = 0x0122
Global Const $WM_MENUDRAG = 0x0123
Global Const $WM_MENUGETOBJECT = 0x0124
Global Const $WM_UNINITMENUPOPUP = 0x0125
Global Const $WM_MENUCOMMAND = 0x0126
Global Const $WM_CHANGEUISTATE = 0x0127
Global Const $WM_UPDATEUISTATE = 0x0128
Global Const $WM_QUERYUISTATE = 0x0129
Global Const $WM_LBTRACKPOINT = 0x0131
Global Const $WM_CTLCOLORMSGBOX = 0x0132
Global Const $WM_CTLCOLOREDIT = 0x0133
Global Const $WM_CTLCOLORLISTBOX = 0x0134
Global Const $WM_CTLCOLORBTN = 0x0135
Global Const $WM_CTLCOLORDLG = 0x0136
Global Const $WM_CTLCOLORSCROLLBAR = 0x0137
Global Const $WM_CTLCOLORSTATIC = 0x0138
Global Const $MN_GETHMENU = 0x01E1
Global Const $WM_PARENTNOTIFY = 0x0210
Global Const $WM_ENTERMENULOOP = 0x0211
Global Const $WM_EXITMENULOOP = 0x0212
Global Const $WM_NEXTMENU = 0x0213
Global Const $WM_SIZING = 0x0214
Global Const $WM_CAPTURECHANGED = 0x0215
Global Const $WM_MOVING = 0x0216
Global Const $WM_POWERBROADCAST = 0x0218
Global Const $WM_DEVICECHANGE = 0x0219
Global Const $WM_MDICREATE = 0x0220
Global Const $WM_MDIDESTROY = 0x0221
Global Const $WM_MDIACTIVATE = 0x0222
Global Const $WM_MDIRESTORE = 0x0223
Global Const $WM_MDINEXT = 0x0224
Global Const $WM_MDIMAXIMIZE = 0x0225
Global Const $WM_MDITILE = 0x0226
Global Const $WM_MDICASCADE = 0x0227
Global Const $WM_MDIICONARRANGE = 0x0228
Global Const $WM_MDIGETACTIVE = 0x0229
Global Const $WM_DROPOBJECT = 0x022A
Global Const $WM_QUERYDROPOBJECT = 0x022B
Global Const $WM_BEGINDRAG = 0x022C
Global Const $WM_DRAGLOOP = 0x022D
Global Const $WM_DRAGSELECT = 0x022E
Global Const $WM_DRAGMOVE = 0x022F
Global Const $WM_MDISETMENU = 0x0230
Global Const $WM_ENTERSIZEMOVE = 0x0231
Global Const $WM_EXITSIZEMOVE = 0x0232
Global Const $WM_DROPFILES = 0x0233
Global Const $WM_MDIREFRESHMENU = 0x0234
Global Const $WM_TOUCH = 0x0240
Global Const $WM_IME_SETCONTEXT = 0x0281
Global Const $WM_IME_NOTIFY = 0x0282
Global Const $WM_IME_CONTROL = 0x0283
Global Const $WM_IME_COMPOSITIONFULL = 0x0284
Global Const $WM_IME_SELECT = 0x0285
Global Const $WM_IME_CHAR = 0x0286
Global Const $WM_IME_SYSTEM = 0x0287
Global Const $WM_IME_REQUEST = 0x0288
Global Const $WM_IME_KEYDOWN = 0x0290
Global Const $WM_IME_KEYUP = 0x0291
Global Const $WM_NCMOUSEHOVER = 0x02A0
Global Const $WM_MOUSEHOVER = 0x02A1
Global Const $WM_NCMOUSELEAVE = 0x02A2
Global Const $WM_MOUSELEAVE = 0x02A3
Global Const $WM_WTSSESSION_CHANGE = 0x02B1
Global Const $WM_TABLET_FIRST = 0x02C0
Global Const $WM_TABLET_LAST = 0x02DF
Global Const $WM_CUT = 0x0300
Global Const $WM_COPY = 0x0301
Global Const $WM_PASTE = 0x0302
Global Const $WM_CLEAR = 0x0303
Global Const $WM_UNDO = 0x0304
Global Const $WM_PALETTEISCHANGING = 0x0310
Global Const $WM_HOTKEY = 0x0312
Global Const $WM_PALETTECHANGED = 0x0311
Global Const $WM_SYSMENU = 0x0313
Global Const $WM_HOOKMSG = 0x0314
Global Const $WM_EXITPROCESS = 0x0315
Global Const $WM_WAKETHREAD = 0x0316
Global Const $WM_PRINT = 0x0317
Global Const $WM_PRINTCLIENT = 0x0318
Global Const $WM_APPCOMMAND = 0x0319
Global Const $WM_QUERYNEWPALETTE = 0x030F
Global Const $WM_THEMECHANGED = 0x031A
Global Const $WM_UAHINIT = 0x031B
Global Const $WM_DESKTOPNOTIFY = 0x031C
Global Const $WM_CLIPBOARDUPDATE = 0x031D
Global Const $WM_DWMCOMPOSITIONCHANGED = 0x031E
Global Const $WM_DWMNCRENDERINGCHANGED = 0x031F
Global Const $WM_DWMCOLORIZATIONCOLORCHANGED = 0x0320
Global Const $WM_DWMWINDOWMAXIMIZEDCHANGE = 0x0321
Global Const $WM_DWMEXILEFRAME = 0x0322
Global Const $WM_DWMSENDICONICTHUMBNAIL = 0x0323
Global Const $WM_MAGNIFICATION_STARTED = 0x0324
Global Const $WM_MAGNIFICATION_ENDED = 0x0325
Global Const $WM_DWMSENDICONICLIVEPREVIEWBITMAP = 0x0326
Global Const $WM_DWMTHUMBNAILSIZECHANGED = 0x0327
Global Const $WM_MAGNIFICATION_OUTPUT = 0x0328
Global Const $WM_MEASURECONTROL = 0x0330
Global Const $WM_GETACTIONTEXT = 0x0331
Global Const $WM_FORWARDKEYDOWN = 0x0333
Global Const $WM_FORWARDKEYUP = 0x0334
Global Const $WM_GETTITLEBARINFOEX = 0x033F
Global Const $WM_NOTIFYWOW = 0x0340
Global Const $WM_HANDHELDFIRST = 0x0358
Global Const $WM_HANDHELDLAST = 0x035F
Global Const $WM_AFXFIRST = 0x0360
Global Const $WM_AFXLAST = 0x037F
Global Const $WM_PENWINFIRST = 0x0380
Global Const $WM_PENWINLAST = 0x038F
Global Const $WM_DDE_INITIATE = 0x03E0
Global Const $WM_DDE_TERMINATE = 0x03E1
Global Const $WM_DDE_ADVISE = 0x03E2
Global Const $WM_DDE_UNADVISE = 0x03E3
Global Const $WM_DDE_ACK = 0x03E4
Global Const $WM_DDE_DATA = 0x03E5
Global Const $WM_DDE_REQUEST = 0x03E6
Global Const $WM_DDE_POKE = 0x03E7
Global Const $WM_DDE_EXECUTE = 0x03E8
Global Const $WM_DBNOTIFICATION = 0x03FD
Global Const $WM_NETCONNECT = 0x03FE
Global Const $WM_HIBERNATE = 0x03FF
Global Const $WM_USER = 0x0400
Global Const $WM_APP = 0x8000
Global Const $NM_FIRST = 0
Global Const $NM_OUTOFMEMORY = $NM_FIRST - 1
Global Const $NM_CLICK = $NM_FIRST - 2
Global Const $NM_DBLCLK = $NM_FIRST - 3
Global Const $NM_RETURN = $NM_FIRST - 4
Global Const $NM_RCLICK = $NM_FIRST - 5
Global Const $NM_RDBLCLK = $NM_FIRST - 6
Global Const $NM_SETFOCUS = $NM_FIRST - 7
Global Const $NM_KILLFOCUS = $NM_FIRST - 8
Global Const $NM_CUSTOMDRAW = $NM_FIRST - 12
Global Const $NM_HOVER = $NM_FIRST - 13
Global Const $NM_NCHITTEST = $NM_FIRST - 14
Global Const $NM_KEYDOWN = $NM_FIRST - 15
Global Const $NM_RELEASEDCAPTURE = $NM_FIRST - 16
Global Const $NM_SETCURSOR = $NM_FIRST - 17
Global Const $NM_CHAR = $NM_FIRST - 18
Global Const $NM_TOOLTIPSCREATED = $NM_FIRST - 19
Global Const $NM_LDOWN = $NM_FIRST - 20
Global Const $NM_RDOWN = $NM_FIRST - 21
Global Const $NM_THEMECHANGED = $NM_FIRST - 22
Global Const $WM_MOUSEFIRST = 0x0200
Global Const $WM_MOUSEMOVE = 0x0200
Global Const $WM_LBUTTONDOWN = 0x0201
Global Const $WM_LBUTTONUP = 0x0202
Global Const $WM_LBUTTONDBLCLK = 0x0203
Global Const $WM_RBUTTONDOWN = 0x0204
Global Const $WM_RBUTTONUP = 0x0205
Global Const $WM_RBUTTONDBLCLK = 0x0206
Global Const $WM_MBUTTONDOWN = 0x0207
Global Const $WM_MBUTTONUP = 0x0208
Global Const $WM_MBUTTONDBLCLK = 0x0209
Global Const $WM_MOUSEWHEEL = 0x020A
Global Const $WM_XBUTTONDOWN = 0x020B
Global Const $WM_XBUTTONUP = 0x020C
Global Const $WM_XBUTTONDBLCLK = 0x020D
Global Const $WM_MOUSEHWHEEL = 0x020E
Global Const $PS_SOLID = 0
Global Const $PS_DASH = 1
Global Const $PS_DOT = 2
Global Const $PS_DASHDOT = 3
Global Const $PS_DASHDOTDOT = 4
Global Const $PS_NULL = 5
Global Const $PS_INSIDEFRAME = 6
Global Const $PS_USERSTYLE = 7
Global Const $PS_ALTERNATE = 8
Global Const $PS_ENDCAP_ROUND = 0x00000000
Global Const $PS_ENDCAP_SQUARE = 0x00000100
Global Const $PS_ENDCAP_FLAT = 0x00000200
Global Const $PS_JOIN_BEVEL = 0x00001000
Global Const $PS_JOIN_MITER = 0x00002000
Global Const $PS_JOIN_ROUND = 0x00000000
Global Const $PS_GEOMETRIC = 0x00010000
Global Const $PS_COSMETIC = 0x00000000
Global Const $LWA_ALPHA = 0x2
Global Const $LWA_COLORKEY = 0x1
Global Const $RGN_AND = 1
Global Const $RGN_OR = 2
Global Const $RGN_XOR = 3
Global Const $RGN_DIFF = 4
Global Const $RGN_COPY = 5
Global Const $ERRORREGION = 0
Global Const $NULLREGION = 1
Global Const $SIMPLEREGION = 2
Global Const $COMPLEXREGION = 3
Global Const $TRANSPARENT = 1
Global Const $OPAQUE = 2
Global Const $CCM_FIRST = 0x2000
Global Const $CCM_GETUNICODEFORMAT = ($CCM_FIRST + 6)
Global Const $CCM_SETUNICODEFORMAT = ($CCM_FIRST + 5)
Global Const $CCM_SETBKCOLOR = $CCM_FIRST + 1
Global Const $CCM_SETCOLORSCHEME = $CCM_FIRST + 2
Global Const $CCM_GETCOLORSCHEME = $CCM_FIRST + 3
Global Const $CCM_GETDROPTARGET = $CCM_FIRST + 4
Global Const $CCM_SETWINDOWTHEME = $CCM_FIRST + 11
Global Const $GA_PARENT = 1
Global Const $GA_ROOT = 2
Global Const $GA_ROOTOWNER = 3
Global Const $SM_CXSCREEN = 0
Global Const $SM_CYSCREEN = 1
Global Const $SM_CXVSCROLL = 2
Global Const $SM_CYHSCROLL = 3
Global Const $SM_CYCAPTION = 4
Global Const $SM_CXBORDER = 5
Global Const $SM_CYBORDER = 6
Global Const $SM_CXFIXEDFRAME = 7
Global Const $SM_CXDLGFRAME = $SM_CXFIXEDFRAME
Global Const $SM_CYFIXEDFRAME = 8
Global Const $SM_CYDLGFRAME = $SM_CYFIXEDFRAME
Global Const $SM_CYVTHUMB = 9
Global Const $SM_CXHTHUMB = 10
Global Const $SM_CXICON = 11
Global Const $SM_CYICON = 12
Global Const $SM_CXCURSOR = 13
Global Const $SM_CYCURSOR = 14
Global Const $SM_CYMENU = 15
Global Const $SM_CXFULLSCREEN = 16
Global Const $SM_CYFULLSCREEN = 17
Global Const $SM_CYKANJIWINDOW = 18
Global Const $SM_MOUSEPRESENT = 19
Global Const $SM_CYVSCROLL = 20
Global Const $SM_CXHSCROLL = 21
Global Const $SM_DEBUG = 22
Global Const $SM_SWAPBUTTON = 23
Global Const $SM_RESERVED1 = 24
Global Const $SM_RESERVED2 = 25
Global Const $SM_RESERVED3 = 26
Global Const $SM_RESERVED4 = 27
Global Const $SM_CXMIN = 28
Global Const $SM_CYMIN = 29
Global Const $SM_CXSIZE = 30
Global Const $SM_CYSIZE = 31
Global Const $SM_CXSIZEFRAME = 32
Global Const $SM_CXFRAME = $SM_CXSIZEFRAME
Global Const $SM_CYSIZEFRAME = 33
Global Const $SM_CYFRAME = $SM_CYSIZEFRAME
Global Const $SM_CXMINTRACK = 34
Global Const $SM_CYMINTRACK = 35
Global Const $SM_CXDOUBLECLK = 36
Global Const $SM_CYDOUBLECLK = 37
Global Const $SM_CXICONSPACING = 38
Global Const $SM_CYICONSPACING = 39
Global Const $SM_MENUDROPALIGNMENT = 40
Global Const $SM_PENWINDOWS = 41
Global Const $SM_DBCSENABLED = 42
Global Const $SM_CMOUSEBUTTONS = 43
Global Const $SM_SECURE = 44
Global Const $SM_CXEDGE = 45
Global Const $SM_CYEDGE = 46
Global Const $SM_CXMINSPACING = 47
Global Const $SM_CYMINSPACING = 48
Global Const $SM_CXSMICON = 49
Global Const $SM_CYSMICON = 50
Global Const $SM_CYSMCAPTION = 51
Global Const $SM_CXSMSIZE = 52
Global Const $SM_CYSMSIZE = 53
Global Const $SM_CXMENUSIZE = 54
Global Const $SM_CYMENUSIZE = 55
Global Const $SM_ARRANGE = 56
Global Const $SM_CXMINIMIZED = 57
Global Const $SM_CYMINIMIZED = 58
Global Const $SM_CXMAXTRACK = 59
Global Const $SM_CYMAXTRACK = 60
Global Const $SM_CXMAXIMIZED = 61
Global Const $SM_CYMAXIMIZED = 62
Global Const $SM_NETWORK = 63
Global Const $SM_CLEANBOOT = 67
Global Const $SM_CXDRAG = 68
Global Const $SM_CYDRAG = 69
Global Const $SM_SHOWSOUNDS = 70
Global Const $SM_CXMENUCHECK = 71
Global Const $SM_CYMENUCHECK = 72
Global Const $SM_SLOWMACHINE = 73
Global Const $SM_MIDEASTENABLED = 74
Global Const $SM_MOUSEWHEELPRESENT = 75
Global Const $SM_XVIRTUALSCREEN = 76
Global Const $SM_YVIRTUALSCREEN = 77
Global Const $SM_CXVIRTUALSCREEN = 78
Global Const $SM_CYVIRTUALSCREEN = 79
Global Const $SM_CMONITORS = 80
Global Const $SM_SAMEDISPLAYFORMAT = 81
Global Const $SM_IMMENABLED = 82
Global Const $SM_CXFOCUSBORDER = 83
Global Const $SM_CYFOCUSBORDER = 84
Global Const $SM_TABLETPC = 86
Global Const $SM_MEDIACENTER = 87
Global Const $SM_STARTER = 88
Global Const $SM_SERVERR2 = 89
Global Const $SM_CMETRICS = 90
Global Const $SM_REMOTESESSION = 0x1000
Global Const $SM_SHUTTINGDOWN = 0x2000
Global Const $SM_REMOTECONTROL = 0x2001
Global Const $SM_CARETBLINKINGENABLED = 0x2002
Global Const $BLACKNESS = 0x00000042
Global Const $CAPTUREBLT = 0X40000000
Global Const $DSTINVERT = 0x00550009
Global Const $MERGECOPY = 0x00C000CA
Global Const $MERGEPAINT = 0x00BB0226
Global Const $NOMIRRORBITMAP = 0X80000000
Global Const $NOTSRCCOPY = 0x00330008
Global Const $NOTSRCERASE = 0x001100A6
Global Const $PATCOPY = 0x00F00021
Global Const $PATINVERT = 0x005A0049
Global Const $PATPAINT = 0x00FB0A09
Global Const $SRCAND = 0x008800C6
Global Const $SRCCOPY = 0x00CC0020
Global Const $SRCERASE = 0x00440328
Global Const $SRCINVERT = 0x00660046
Global Const $SRCPAINT = 0x00EE0086
Global Const $WHITENESS = 0x00FF0062
Global Const $DT_BOTTOM = 0x8
Global Const $DT_CALCRECT = 0x400
Global Const $DT_CENTER = 0x1
Global Const $DT_EDITCONTROL = 0x2000
Global Const $DT_END_ELLIPSIS = 0x8000
Global Const $DT_EXPANDTABS = 0x40
Global Const $DT_EXTERNALLEADING = 0x200
Global Const $DT_HIDEPREFIX = 0x100000
Global Const $DT_INTERNAL = 0x1000
Global Const $DT_LEFT = 0x0
Global Const $DT_MODIFYSTRING = 0x10000
Global Const $DT_NOCLIP = 0x100
Global Const $DT_NOFULLWIDTHCHARBREAK = 0x80000
Global Const $DT_NOPREFIX = 0x800
Global Const $DT_PATH_ELLIPSIS = 0x4000
Global Const $DT_PREFIXONLY = 0x200000
Global Const $DT_RIGHT = 0x2
Global Const $DT_RTLREADING = 0x20000
Global Const $DT_SINGLELINE = 0x20
Global Const $DT_TABSTOP = 0x80
Global Const $DT_TOP = 0x0
Global Const $DT_VCENTER = 0x4
Global Const $DT_WORDBREAK = 0x10
Global Const $DT_WORD_ELLIPSIS = 0x40000
Global Const $RDW_ERASE = 0x0004
Global Const $RDW_FRAME = 0x0400
Global Const $RDW_INTERNALPAINT = 0x0002
Global Const $RDW_INVALIDATE = 0x0001
Global Const $RDW_NOERASE = 0x0020
Global Const $RDW_NOFRAME = 0x0800
Global Const $RDW_NOINTERNALPAINT = 0x0010
Global Const $RDW_VALIDATE = 0x0008
Global Const $RDW_ERASENOW = 0x0200
Global Const $RDW_UPDATENOW = 0x0100
Global Const $RDW_ALLCHILDREN = 0x0080
Global Const $RDW_NOCHILDREN = 0x0040
Global Const $WM_RENDERFORMAT = 0x0305
Global Const $WM_RENDERALLFORMATS = 0x0306
Global Const $WM_DESTROYCLIPBOARD = 0x0307
Global Const $WM_DRAWCLIPBOARD = 0x0308
Global Const $WM_PAINTCLIPBOARD = 0x0309
Global Const $WM_VSCROLLCLIPBOARD = 0x030A
Global Const $WM_SIZECLIPBOARD = 0x030B
Global Const $WM_ASKCBFORMATNAME = 0x030C
Global Const $WM_CHANGECBCHAIN = 0x030D
Global Const $WM_HSCROLLCLIPBOARD = 0x030E
Global Const $HTERROR = -2
Global Const $HTTRANSPARENT = -1
Global Const $HTNOWHERE = 0
Global Const $HTCLIENT = 1
Global Const $HTCAPTION = 2
Global Const $HTSYSMENU = 3
Global Const $HTGROWBOX = 4
Global Const $HTSIZE = $HTGROWBOX
Global Const $HTMENU = 5
Global Const $HTHSCROLL = 6
Global Const $HTVSCROLL = 7
Global Const $HTMINBUTTON = 8
Global Const $HTMAXBUTTON = 9
Global Const $HTLEFT = 10
Global Const $HTRIGHT = 11
Global Const $HTTOP = 12
Global Const $HTTOPLEFT = 13
Global Const $HTTOPRIGHT = 14
Global Const $HTBOTTOM = 15
Global Const $HTBOTTOMLEFT = 16
Global Const $HTBOTTOMRIGHT = 17
Global Const $HTBORDER = 18
Global Const $HTREDUCE = $HTMINBUTTON
Global Const $HTZOOM = $HTMAXBUTTON
Global Const $HTSIZEFIRST = $HTLEFT
Global Const $HTSIZELAST = $HTBOTTOMRIGHT
Global Const $HTOBJECT = 19
Global Const $HTCLOSE = 20
Global Const $HTHELP = 21
Global Const $COLOR_SCROLLBAR = 0
Global Const $COLOR_BACKGROUND = 1
Global Const $COLOR_ACTIVECAPTION = 2
Global Const $COLOR_INACTIVECAPTION = 3
Global Const $COLOR_MENU = 4
Global Const $COLOR_WINDOW = 5
Global Const $COLOR_WINDOWFRAME = 6
Global Const $COLOR_MENUTEXT = 7
Global Const $COLOR_WINDOWTEXT = 8
Global Const $COLOR_CAPTIONTEXT = 9
Global Const $COLOR_ACTIVEBORDER = 10
Global Const $COLOR_INACTIVEBORDER = 11
Global Const $COLOR_APPWORKSPACE = 12
Global Const $COLOR_HIGHLIGHT = 13
Global Const $COLOR_HIGHLIGHTTEXT = 14
Global Const $COLOR_BTNFACE = 15
Global Const $COLOR_BTNSHADOW = 16
Global Const $COLOR_GRAYTEXT = 17
Global Const $COLOR_BTNTEXT = 18
Global Const $COLOR_INACTIVECAPTIONTEXT = 19
Global Const $COLOR_BTNHIGHLIGHT = 20
Global Const $COLOR_3DDKSHADOW = 21
Global Const $COLOR_3DLIGHT = 22
Global Const $COLOR_INFOTEXT = 23
Global Const $COLOR_INFOBK = 24
Global Const $COLOR_HOTLIGHT = 26
Global Const $COLOR_GRADIENTACTIVECAPTION = 27
Global Const $COLOR_GRADIENTINACTIVECAPTION = 28
Global Const $COLOR_MENUHILIGHT = 29
Global Const $COLOR_MENUBAR = 30
Global Const $COLOR_DESKTOP = 1
Global Const $COLOR_3DFACE = 15
Global Const $COLOR_3DSHADOW = 16
Global Const $COLOR_3DHIGHLIGHT = 20
Global Const $COLOR_3DHILIGHT = 20
Global Const $COLOR_BTNHILIGHT = 20
Global Const $HINST_COMMCTRL = -1
Global Const $IDB_STD_SMALL_COLOR = 0
Global Const $IDB_STD_LARGE_COLOR = 1
Global Const $IDB_VIEW_SMALL_COLOR = 4
Global Const $IDB_VIEW_LARGE_COLOR = 5
Global Const $IDB_HIST_SMALL_COLOR = 8
Global Const $IDB_HIST_LARGE_COLOR = 9
Global Const $STARTF_FORCEOFFFEEDBACK = 0x80
Global Const $STARTF_FORCEONFEEDBACK = 0x40
Global Const $STARTF_PREVENTPINNING = 0x00002000
Global Const $STARTF_RUNFULLSCREEN = 0x20
Global Const $STARTF_TITLEISAPPID = 0x00001000
Global Const $STARTF_TITLEISLINKNAME = 0x00000800
Global Const $STARTF_USECOUNTCHARS = 0x8
Global Const $STARTF_USEFILLATTRIBUTE = 0x10
Global Const $STARTF_USEHOTKEY = 0x200
Global Const $STARTF_USEPOSITION = 0x4
Global Const $STARTF_USESHOWWINDOW = 0x1
Global Const $STARTF_USESIZE = 0x2
Global Const $STARTF_USESTDHANDLES = 0x100
Global Const $CDDS_PREPAINT = 0x00000001
Global Const $CDDS_POSTPAINT = 0x00000002
Global Const $CDDS_PREERASE = 0x00000003
Global Const $CDDS_POSTERASE = 0x00000004
Global Const $CDDS_ITEM = 0x00010000
Global Const $CDDS_ITEMPREPAINT = 0x00010001
Global Const $CDDS_ITEMPOSTPAINT = 0x00010002
Global Const $CDDS_ITEMPREERASE = 0x00010003
Global Const $CDDS_ITEMPOSTERASE = 0x00010004
Global Const $CDDS_SUBITEM = 0x00020000
Global Const $CDIS_SELECTED = 0x0001
Global Const $CDIS_GRAYED = 0x0002
Global Const $CDIS_DISABLED = 0x0004
Global Const $CDIS_CHECKED = 0x0008
Global Const $CDIS_FOCUS = 0x0010
Global Const $CDIS_DEFAULT = 0x0020
Global Const $CDIS_HOT = 0x0040
Global Const $CDIS_MARKED = 0x0080
Global Const $CDIS_INDETERMINATE = 0x0100
Global Const $CDIS_SHOWKEYBOARDCUES = 0x0200
Global Const $CDIS_NEARHOT = 0x0400
Global Const $CDIS_OTHERSIDEHOT = 0x0800
Global Const $CDIS_DROPHILITED = 0x1000
Global Const $CDRF_DODEFAULT = 0x00000000
Global Const $CDRF_NEWFONT = 0x00000002
Global Const $CDRF_SKIPDEFAULT = 0x00000004
Global Const $CDRF_NOTIFYPOSTPAINT = 0x00000010
Global Const $CDRF_NOTIFYITEMDRAW = 0x00000020
Global Const $CDRF_NOTIFYSUBITEMDRAW = 0x00000020
Global Const $CDRF_NOTIFYPOSTERASE = 0x00000040
Global Const $CDRF_DOERASE = 0x00000008
Global Const $CDRF_SKIPPOSTPAINT = 0x00000100
Global Const $GUI_SS_DEFAULT_GUI = BitOR($WS_MINIMIZEBOX, $WS_CAPTION, $WS_POPUP, $WS_SYSMENU)
Global Const $GDIP_DASHCAPFLAT = 0
Global Const $GDIP_DASHCAPROUND = 2
Global Const $GDIP_DASHCAPTRIANGLE = 3
Global Const $GDIP_DASHSTYLESOLID = 0
Global Const $GDIP_DASHSTYLEDASH = 1
Global Const $GDIP_DASHSTYLEDOT = 2
Global Const $GDIP_DASHSTYLEDASHDOT = 3
Global Const $GDIP_DASHSTYLEDASHDOTDOT = 4
Global Const $GDIP_DASHSTYLECUSTOM = 5
Global Const $GDIP_EPGCHROMINANCETABLE = '{F2E455DC-09B3-4316-8260-676ADA32481C}'
Global Const $GDIP_EPGCOLORDEPTH = '{66087055-AD66-4C7C-9A18-38A2310B8337}'
Global Const $GDIP_EPGCOMPRESSION = '{E09D739D-CCD4-44EE-8EBA-3FBF8BE4FC58}'
Global Const $GDIP_EPGLUMINANCETABLE = '{EDB33BCE-0266-4A77-B904-27216099E717}'
Global Const $GDIP_EPGQUALITY = '{1D5BE4B5-FA4A-452D-9CDD-5DB35105E7EB}'
Global Const $GDIP_EPGRENDERMETHOD = '{6D42C53A-229A-4825-8BB7-5C99E2B9A8B8}'
Global Const $GDIP_EPGSAVEFLAG = '{292266FC-AC40-47BF-8CFC-A85B89A655DE}'
Global Const $GDIP_EPGSCANMETHOD = '{3A4E2661-3109-4E56-8536-42C156E7DCFA}'
Global Const $GDIP_EPGTRANSFORMATION = '{8D0EB2D1-A58E-4EA8-AA14-108074B7B6F9}'
Global Const $GDIP_EPGVERSION = '{24D18C76-814A-41A4-BF53-1C219CCCF797}'
Global Const $GDIP_EPTBYTE = 1
Global Const $GDIP_EPTASCII = 2
Global Const $GDIP_EPTSHORT = 3
Global Const $GDIP_EPTLONG = 4
Global Const $GDIP_EPTRATIONAL = 5
Global Const $GDIP_EPTLONGRANGE = 6
Global Const $GDIP_EPTUNDEFINED = 7
Global Const $GDIP_EPTRATIONALRANGE = 8
Global Const $GDIP_ERROK = 0
Global Const $GDIP_ERRGENERICERROR = 1
Global Const $GDIP_ERRINVALIDPARAMETER = 2
Global Const $GDIP_ERROUTOFMEMORY = 3
Global Const $GDIP_ERROBJECTBUSY = 4
Global Const $GDIP_ERRINSUFFICIENTBUFFER = 5
Global Const $GDIP_ERRNOTIMPLEMENTED = 6
Global Const $GDIP_ERRWIN32ERROR = 7
Global Const $GDIP_ERRWRONGSTATE = 8
Global Const $GDIP_ERRABORTED = 9
Global Const $GDIP_ERRFILENOTFOUND = 10
Global Const $GDIP_ERRVALUEOVERFLOW = 11
Global Const $GDIP_ERRACCESSDENIED = 12
Global Const $GDIP_ERRUNKNOWNIMAGEFORMAT = 13
Global Const $GDIP_ERRFONTFAMILYNOTFOUND = 14
Global Const $GDIP_ERRFONTSTYLENOTFOUND = 15
Global Const $GDIP_ERRNOTTRUETYPEFONT = 16
Global Const $GDIP_ERRUNSUPPORTEDGDIVERSION = 17
Global Const $GDIP_ERRGDIPLUSNOTINITIALIZED = 18
Global Const $GDIP_ERRPROPERTYNOTFOUND = 19
Global Const $GDIP_ERRPROPERTYNOTSUPPORTED = 20
Global Const $GDIP_EVTCOMPRESSIONLZW = 2
Global Const $GDIP_EVTCOMPRESSIONCCITT3 = 3
Global Const $GDIP_EVTCOMPRESSIONCCITT4 = 4
Global Const $GDIP_EVTCOMPRESSIONRLE = 5
Global Const $GDIP_EVTCOMPRESSIONNONE = 6
Global Const $GDIP_EVTTRANSFORMROTATE90 = 13
Global Const $GDIP_EVTTRANSFORMROTATE180 = 14
Global Const $GDIP_EVTTRANSFORMROTATE270 = 15
Global Const $GDIP_EVTTRANSFORMFLIPHORIZONTAL = 16
Global Const $GDIP_EVTTRANSFORMFLIPVERTICAL = 17
Global Const $GDIP_EVTMULTIFRAME = 18
Global Const $GDIP_EVTLASTFRAME = 19
Global Const $GDIP_EVTFLUSH = 20
Global Const $GDIP_EVTFRAMEDIMENSIONPAGE = 23
Global Const $GDIP_ICFENCODER = 0x00000001
Global Const $GDIP_ICFDECODER = 0x00000002
Global Const $GDIP_ICFSUPPORTBITMAP = 0x00000004
Global Const $GDIP_ICFSUPPORTVECTOR = 0x00000008
Global Const $GDIP_ICFSEEKABLEENCODE = 0x00000010
Global Const $GDIP_ICFBLOCKINGDECODE = 0x00000020
Global Const $GDIP_ICFBUILTIN = 0x00010000
Global Const $GDIP_ICFSYSTEM = 0x00020000
Global Const $GDIP_ICFUSER = 0x00040000
Global Const $GDIP_ILMREAD = 0x0001
Global Const $GDIP_ILMWRITE = 0x0002
Global Const $GDIP_ILMUSERINPUTBUF = 0x0004
Global Const $GDIP_LINECAPFLAT = 0x00
Global Const $GDIP_LINECAPSQUARE = 0x01
Global Const $GDIP_LINECAPROUND = 0x02
Global Const $GDIP_LINECAPTRIANGLE = 0x03
Global Const $GDIP_LINECAPNOANCHOR = 0x10
Global Const $GDIP_LINECAPSQUAREANCHOR = 0x11
Global Const $GDIP_LINECAPROUNDANCHOR = 0x12
Global Const $GDIP_LINECAPDIAMONDANCHOR = 0x13
Global Const $GDIP_LINECAPARROWANCHOR = 0x14
Global Const $GDIP_LINECAPCUSTOM = 0xFF
Global Const $GDIP_PXF01INDEXED = 0x00030101
Global Const $GDIP_PXF04INDEXED = 0x00030402
Global Const $GDIP_PXF08INDEXED = 0x00030803
Global Const $GDIP_PXF16GRAYSCALE = 0x00101004
Global Const $GDIP_PXF16RGB555 = 0x00021005
Global Const $GDIP_PXF16RGB565 = 0x00021006
Global Const $GDIP_PXF16ARGB1555 = 0x00061007
Global Const $GDIP_PXF24RGB = 0x00021808
Global Const $GDIP_PXF32RGB = 0x00022009
Global Const $GDIP_PXF32ARGB = 0x0026200A
Global Const $GDIP_PXF32PARGB = 0x000E200B
Global Const $GDIP_PXF48RGB = 0x0010300C
Global Const $GDIP_PXF64ARGB = 0x0034400D
Global Const $GDIP_PXF64PARGB = 0x001A400E
Global Const $GDIP_IMAGEFORMAT_UNDEFINED = "{B96B3CA9-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_MEMORYBMP = "{B96B3CAA-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_BMP = "{B96B3CAB-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_EMF = "{B96B3CAC-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_WMF = "{B96B3CAD-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_JPEG = "{B96B3CAE-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_PNG = "{B96B3CAF-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_GIF = "{B96B3CB0-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_TIFF = "{B96B3CB1-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_EXIF = "{B96B3CB2-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_ICON = "{B96B3CB5-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGETYPE_UNKNOWN = 0
Global Const $GDIP_IMAGETYPE_BITMAP = 1
Global Const $GDIP_IMAGETYPE_METAFILE = 2
Global Const $GDIP_IMAGEFLAGS_NONE = 0x0
Global Const $GDIP_IMAGEFLAGS_SCALABLE = 0x0001
Global Const $GDIP_IMAGEFLAGS_HASALPHA = 0x0002
Global Const $GDIP_IMAGEFLAGS_HASTRANSLUCENT = 0x0004
Global Const $GDIP_IMAGEFLAGS_PARTIALLYSCALABLE = 0x0008
Global Const $GDIP_IMAGEFLAGS_COLORSPACE_RGB = 0x0010
Global Const $GDIP_IMAGEFLAGS_COLORSPACE_CMYK = 0x0020
Global Const $GDIP_IMAGEFLAGS_COLORSPACE_GRAY = 0x0040
Global Const $GDIP_IMAGEFLAGS_COLORSPACE_YCBCR = 0x0080
Global Const $GDIP_IMAGEFLAGS_COLORSPACE_YCCK = 0x0100
Global Const $GDIP_IMAGEFLAGS_HASREALDPI = 0x1000
Global Const $GDIP_IMAGEFLAGS_HASREALPIXELSIZE = 0x2000
Global Const $GDIP_IMAGEFLAGS_READONLY = 0x00010000
Global Const $GDIP_IMAGEFLAGS_CACHING = 0x00020000
Global Const $GDIP_SMOOTHINGMODE_INVALID = -1
Global Const $GDIP_SMOOTHINGMODE_DEFAULT = 0
Global Const $GDIP_SMOOTHINGMODE_HIGHSPEED = 1
Global Const $GDIP_SMOOTHINGMODE_HIGHQUALITY = 2
Global Const $GDIP_SMOOTHINGMODE_NONE = 3
Global Const $GDIP_SMOOTHINGMODE_ANTIALIAS8X4 = 4
Global Const $GDIP_SMOOTHINGMODE_ANTIALIAS = $GDIP_SMOOTHINGMODE_ANTIALIAS8X4
Global Const $GDIP_SMOOTHINGMODE_ANTIALIAS8X8 = 5
Global Const $GDIP_RLUM = 0.3086
Global Const $GDIP_GLUM = 0.6094
Global Const $GDIP_BLUM = 0.0820
Global Const $GDIP_INTERPOLATIONMODE_INVALID = -1
Global Const $GDIP_INTERPOLATIONMODE_DEFAULT = 0
Global Const $GDIP_INTERPOLATIONMODE_LOWQUALITY = 1
Global Const $GDIP_INTERPOLATIONMODE_HIGHQUALITY = 2
Global Const $GDIP_INTERPOLATIONMODE_BILINEAR = 3
Global Const $GDIP_INTERPOLATIONMODE_BICUBIC = 4
Global Const $GDIP_INTERPOLATIONMODE_NEARESTNEIGHBOR = 5
Global Const $GDIP_INTERPOLATIONMODE_HIGHQUALITYBILINEAR = 6
Global Const $GDIP_INTERPOLATIONMODE_HIGHQUALITYBICUBIC = 7
Global Const $GDIP_PIXELOFFSETMODE_INVALID = -1
Global Const $GDIP_PIXELOFFSETMODE_DEFAULT = 0
Global Const $GDIP_PIXELOFFSETMODE_HIGHSPEED = 1
Global Const $GDIP_PIXELOFFSETMODE_HIGHQUALITY = 2
Global Const $GDIP_PIXELOFFSETMODE_NONE = 3
Global Const $GDIP_PIXELOFFSETMODE_HALF = 4
Global Const $GDIP_PENSETLINEJOIN_MITER = 0
Global Const $GDIP_PENSETLINEJOIN_BEVEL = 1
Global Const $GDIP_PENSETLINEJOIN_ROUND = 2
Global Const $GDIP_PENSETLINEJOIN_MITERCLIPPED = 3
Global Const $GDIP_FillModeAlternate = 0
Global Const $GDIP_FillModeWinding = 1
Global Const $GDIP_QUALITYMODEINVALID = -1
Global Const $GDIP_QUALITYMODEDEFAULT = 0
Global Const $GDIP_QUALITYMODELOW = 1
Global Const $GDIP_QUALITYMODEHIGH = 2
Global Const $GDIP_COMPOSITINGMODESOURCEOVER = 0
Global Const $GDIP_COMPOSITINGMODESOURCECOPY = 1
Global Const $GDIP_COMPOSITINGQUALITY_DEFAULT = 0
Global Const $GDIP_COMPOSITINGQUALITY_HIGHSPEED = 1
Global Const $GDIP_COMPOSITINGQUALITY_HIGHQUALITY = 2
Global Const $GDIP_COMPOSITINGQUALITY_GAMMACORRECTED = 3
Global Const $GDIP_COMPOSITINGQUALITY_ASSUMELINEAR = 4
Global Const $GDIP_HATCHSTYLE_HORIZONTAL = 0
Global Const $GDIP_HATCHSTYLE_VERTICAL = 1
Global Const $GDIP_HATCHSTYLE_FORWARDDIAGONAL = 2
Global Const $GDIP_HATCHSTYLE_BACKWARDDIAGONAL = 3
Global Const $GDIP_HATCHSTYLE_CROSS = 4
Global Const $GDIP_HATCHSTYLE_DIAGONALCROSS = 5
Global Const $GDIP_HATCHSTYLE_05PERCENT = 6
Global Const $GDIP_HATCHSTYLE_10PERCENT = 7
Global Const $GDIP_HATCHSTYLE_20PERCENT = 8
Global Const $GDIP_HATCHSTYLE_25PERCENT = 9
Global Const $GDIP_HATCHSTYLE_30PERCENT = 10
Global Const $GDIP_HATCHSTYLE_40PERCENT = 11
Global Const $GDIP_HATCHSTYLE_50PERCENT = 12
Global Const $GDIP_HATCHSTYLE_60PERCENT = 13
Global Const $GDIP_HATCHSTYLE_70PERCENT = 14
Global Const $GDIP_HATCHSTYLE_75PERCENT = 15
Global Const $GDIP_HATCHSTYLE_80PERCENT = 16
Global Const $GDIP_HATCHSTYLE_90PERCENT = 17
Global Const $GDIP_HATCHSTYLE_LIGHTDOWNWARDDIAGONAL = 18
Global Const $GDIP_HATCHSTYLE_LIGHTUPWARDDIAGONAL = 19
Global Const $GDIP_HATCHSTYLE_DARKDOWNWARDDIAGONAL = 20
Global Const $GDIP_HATCHSTYLE_DARKUPWARDDIAGONAL = 21
Global Const $GDIP_HATCHSTYLE_WIDEDOWNWARDDIAGONAL = 22
Global Const $GDIP_HATCHSTYLE_WIDEUPWARDDIAGONAL = 23
Global Const $GDIP_HATCHSTYLE_LIGHTVERTICAL = 24
Global Const $GDIP_HATCHSTYLE_LIGHTHORIZONTAL = 25
Global Const $GDIP_HATCHSTYLE_NARROWVERTICAL = 26
Global Const $GDIP_HATCHSTYLE_NARROWHORIZONTAL = 27
Global Const $GDIP_HATCHSTYLE_DARKVERTICAL = 28
Global Const $GDIP_HATCHSTYLE_DARKHORIZONTAL = 29
Global Const $GDIP_HATCHSTYLE_DASHEDDOWNWARDDIAGONAL = 30
Global Const $GDIP_HATCHSTYLE_DASHEDUPWARDDIAGONAL = 31
Global Const $GDIP_HATCHSTYLE_DASHEDHORIZONTAL = 32
Global Const $GDIP_HATCHSTYLE_DASHEDVERTICAL = 33
Global Const $GDIP_HATCHSTYLE_SMALLCONFETTI = 34
Global Const $GDIP_HATCHSTYLE_LARGECONFETTI = 35
Global Const $GDIP_HATCHSTYLE_ZIGZAG = 36
Global Const $GDIP_HATCHSTYLE_WAVE = 37
Global Const $GDIP_HATCHSTYLE_DIAGONALBRICK = 38
Global Const $GDIP_HATCHSTYLE_HORIZONTALBRICK = 39
Global Const $GDIP_HATCHSTYLE_WEAVE = 40
Global Const $GDIP_HATCHSTYLE_PLAID = 41
Global Const $GDIP_HATCHSTYLE_DIVOT = 42
Global Const $GDIP_HATCHSTYLE_DOTTEDGRID = 43
Global Const $GDIP_HATCHSTYLE_DOTTEDDIAMOND = 44
Global Const $GDIP_HATCHSTYLE_SHINGLE = 45
Global Const $GDIP_HATCHSTYLE_TRELLIS = 46
Global Const $GDIP_HATCHSTYLE_SPHERE = 47
Global Const $GDIP_HATCHSTYLE_SMALLGRID = 48
Global Const $GDIP_HATCHSTYLE_SMALLCHECKERBOARD = 49
Global Const $GDIP_HATCHSTYLE_LARGECHECKERBOARD = 50
Global Const $GDIP_HATCHSTYLE_OUTLINEDDIAMOND = 51
Global Const $GDIP_HATCHSTYLE_SOLIDDIAMOND = 52
Global Const $GDIP_HATCHSTYLE_TOTAL = 53
Global Const $GDIP_HATCHSTYLE_LARGEGRID = $GDIP_HATCHSTYLE_CROSS
Global Const $GDIP_HATCHSTYLE_MIN = $GDIP_HATCHSTYLE_HORIZONTAL
Global Const $GDIP_HATCHSTYLE_MAX = $GDIP_HATCHSTYLE_TOTAL - 1
Global Const $GDIP_BlurEffectGuid = '{633C80A4-1843-482b-9EF2-BE2834C5FDD4}'
Global Const $GDIP_SharpenEffectGuid = '{63CBF3EE-C526-402c-8F71-62C540BF5142}'
Global Const $GDIP_ColorMatrixEffectGuid = '{718F2615-7933-40e3-A511-5F68FE14DD74}'
Global Const $GDIP_ColorLUTEffectGuid = '{A7CE72A9-0F7F-40d7-B3CC-D0C02D5C3212}'
Global Const $GDIP_BrightnessContrastEffectGuid = '{D3A1DBE1-8EC4-4c17-9F4C-EA97AD1C343D}'
Global Const $GDIP_HueSaturationLightnessEffectGuid = '{8B2DD6C3-EB07-4d87-A5F0-7108E26A9C5F}'
Global Const $GDIP_LevelsEffectGuid = '{99C354EC-2A31-4f3a-8C34-17A803B33A25}'
Global Const $GDIP_TintEffectGuid = '{1077AF00-2848-4441-9489-44AD4C2D7A2C}'
Global Const $GDIP_ColorBalanceEffectGuid = '{537E597D-251E-48da-9664-29CA496B70F8}'
Global Const $GDIP_RedEyeCorrectionEffectGuid = '{74D29D05-69A4-4266-9549-3CC52836B632}'
Global Const $GDIP_ColorCurveEffectGuid = '{DD6A0022-58E4-4a67-9D9B-D48EB881A53D}'
Global Const $GDIP_AdjustExposure = 0
Global Const $GDIP_AdjustDensity = 1
Global Const $GDIP_AdjustContrast = 2
Global Const $GDIP_AdjustHighlight = 3
Global Const $GDIP_AdjustShadow = 4
Global Const $GDIP_AdjustMidtone = 5
Global Const $GDIP_AdjustWhiteSaturation = 6
Global Const $GDIP_AdjustBlackSaturation = 7
Global Const $GDIP_CurveChannelAll = 0
Global Const $GDIP_CurveChannelRed = 1
Global Const $GDIP_CurveChannelGreen = 2
Global Const $GDIP_CurveChannelBlue = 3
Global Const $GDIP_PaletteTypeCustom = 0
Global Const $GDIP_PaletteTypeOptimal = 1
Global Const $GDIP_PaletteTypeFixedBW = 2
Global Const $GDIP_PaletteTypeFixedHalftone8 = 3
Global Const $GDIP_PaletteTypeFixedHalftone27 = 4
Global Const $GDIP_PaletteTypeFixedHalftone64 = 5
Global Const $GDIP_PaletteTypeFixedHalftone125 = 6
Global Const $GDIP_PaletteTypeFixedHalftone216 = 7
Global Const $GDIP_PaletteTypeFixedHalftone252 = 8
Global Const $GDIP_PaletteTypeFixedHalftone256 = 9
Global Const $GDIP_PaletteFlagsHasAlpha = 0x0001
Global Const $GDIP_PaletteFlagsGrayScale = 0x0002
Global Const $GDIP_PaletteFlagsHalftone = 0x0004
Global Const $GDIP_DitherTypeNone = 0
Global Const $GDIP_DitherTypeSolid = 1
Global Const $GDIP_DitherTypeOrdered4x4 = 2
Global Const $GDIP_DitherTypeOrdered8x8 = 3
Global Const $GDIP_DitherTypeOrdered16x16 = 4
Global Const $GDIP_DitherTypeOrdered91x91 = 5
Global Const $GDIP_DitherTypeSpiral4x4 = 6
Global Const $GDIP_DitherTypeSpiral8x8 = 7
Global Const $GDIP_DitherTypeDualSpiral4x4 = 8
Global Const $GDIP_DitherTypeDualSpiral8x8 = 9
Global Const $GDIP_DitherTypeErrorDiffusion = 10
Global Const $GDIP_DitherTypeMax = 10
Global Const $GDIP_HistogramFormatARGB = 0
Global Const $GDIP_HistogramFormatPARGB = 1
Global Const $GDIP_HistogramFormatRGB = 2
Global Const $GDIP_HistogramFormatGray = 3
Global Const $GDIP_HistogramFormatB = 4
Global Const $GDIP_HistogramFormatG = 5
Global Const $GDIP_HistogramFormatR = 6
Global Const $GDIP_HistogramFormatA = 7
Global Const $GDIP_TEXTRENDERINGHINTSYSTEMDEFAULT = 0
Global Const $GDIP_TEXTRENDERINGHINTSINGLEBITPERPIXELGRIDFIT = 1
Global Const $GDIP_TEXTRENDERINGHINTSINGLEBITPERPIXEL = 2
Global Const $GDIP_TEXTRENDERINGHINTANTIALIASGRIDFIT = 3
Global Const $GDIP_TEXTRENDERINGHINTANTIALIAS = 4
Global Const $GDIP_TEXTRENDERINGHINTCLEARTYPEGRIDFIT = 5
Global Const $GDIP_RotateNoneFlipNone = 0
Global Const $GDIP_Rotate90FlipNone = 1
Global Const $GDIP_Rotate180FlipNone = 2
Global Const $GDIP_Rotate270FlipNone = 3
Global Const $GDIP_RotateNoneFlipX = 4
Global Const $GDIP_Rotate90FlipX = 5
Global Const $GDIP_Rotate180FlipX = 6
Global Const $GDIP_Rotate270FlipX = 7
Global Const $GDIP_RotateNoneFlipY = $GDIP_Rotate180FlipX
Global Const $GDIP_Rotate90FlipY = $GDIP_Rotate270FlipX
Global Const $GDIP_Rotate180FlipY = $GDIP_RotateNoneFlipX
Global Const $GDIP_Rotate270FlipY = $GDIP_Rotate90FlipX
Global Const $GDIP_RotateNoneFlipXY = $GDIP_Rotate180FlipNone
Global Const $GDIP_Rotate90FlipXY = $GDIP_Rotate270FlipNone
Global Const $GDIP_Rotate270FlipXY = $GDIP_Rotate90FlipNone
Global Const $GDIP_FRAMEDIMENSION_TIME = "{6AEDBD6D-3FB5-418A-83A6-7F45229DC872}"
Global Const $GDIP_FRAMEDIMENSION_RESOLUTION = "{84236F7B-3BD3-428F-8DAB-4EA1439CA315}"
Global Const $GDIP_FRAMEDIMENSION_PAGE = "{7462DC86-6180-4C7E-8E3F-EE7333A7A483}"
Global Const $GDIP_COLORADJUSTTYPE_DEFAULT = 0
Global Const $GDIP_COLORADJUSTTYPE_BITMAP = 1
Global Const $GDIP_COLORADJUSTTYPE_BRUSH = 2
Global Const $GDIP_COLORADJUSTTYPE_PEN = 3
Global Const $GDIP_COLORADJUSTTYPE_TEXT = 4
Global Const $GDIP_COLORADJUSTTYPE_COUNT = 5
Global Const $GDIP_COLORADJUSTTYPE_ANY = 6
Global Enum $GDIP_WrapModeTile, $GDIP_WrapModeTileFlipX, $GDIP_WrapModeTileFlipY, $GDIP_WrapModeTileFlipXY, $GDIP_WrapModeClamp
Global Const $COINIT_APARTMENTTHREADED = 0x02
Global Const $COINIT_DISABLE_OLE1DDE = 0x04
Global Const $COINIT_MULTITHREADED = 0x00
Global Const $COINIT_SPEED_OVER_MEMORY = 0x08
Global Const $__tagWinAPICom_GUID = "struct;ulong Data1;ushort Data2;ushort Data3;byte Data4[8];endstruct"
Func _WinAPI_CLSIDFromProgID($sProgID)
Local $tGUID = DllStructCreate($__tagWinAPICom_GUID)
Local $aCall = DllCall('ole32.dll', 'long', 'CLSIDFromProgID', 'wstr', $sProgID, 'struct*', $tGUID)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
$aCall = DllCall('ole32.dll', 'int', 'StringFromGUID2', 'struct*', $tGUID, 'wstr', '', 'int', 39)
If @error Or Not $aCall[0] Then Return SetError(@error + 20, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_CoInitialize($iFlags = 0)
Local $aCall = DllCall('ole32.dll', 'long', 'CoInitializeEx', 'ptr', 0, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_CoTaskMemAlloc($iSize)
Local $aCall = DllCall('ole32.dll', 'ptr', 'CoTaskMemAlloc', 'uint_ptr', $iSize)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CoTaskMemFree($pMemory)
DllCall('ole32.dll', 'none', 'CoTaskMemFree', 'ptr', $pMemory)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_CoTaskMemRealloc($pMemory, $iSize)
Local $aCall = DllCall('ole32.dll', 'ptr', 'CoTaskMemRealloc', 'ptr', $pMemory, 'ulong_ptr', $iSize)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CoUninitialize()
DllCall('ole32.dll', 'none', 'CoUninitialize')
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_CreateGUID()
Local $tGUID = DllStructCreate($__tagWinAPICom_GUID)
Local $aCall = DllCall('ole32.dll', 'long', 'CoCreateGuid', 'struct*', $tGUID)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
$aCall = DllCall('ole32.dll', 'int', 'StringFromGUID2', 'struct*', $tGUID, 'wstr', '', 'int', 65536)
If @error Or Not $aCall[0] Then Return SetError(@error + 20, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_CreateStreamOnHGlobal($hGlobal = 0, $bDeleteOnRelease = True)
Local $aCall = DllCall('ole32.dll', 'long', 'CreateStreamOnHGlobal', 'handle', $hGlobal, 'bool', $bDeleteOnRelease, 'ptr*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _WinAPI_GetHGlobalFromStream($pStream)
Local $aCall = DllCall('ole32.dll', 'uint', 'GetHGlobalFromStream', 'ptr', $pStream, 'ptr*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _WinAPI_ProgIDFromCLSID($sCLSID)
Local $tGUID = DllStructCreate($__tagWinAPICom_GUID)
Local $aCall = DllCall('ole32.dll', 'uint', 'CLSIDFromString', 'wstr', $sCLSID, 'struct*', $tGUID)
If @error Or $aCall[0] Then Return SetError(@error + 20, @extended, '')
$aCall = DllCall('ole32.dll', 'uint', 'ProgIDFromCLSID', 'struct*', $tGUID, 'ptr*', 0)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Local $sID = _WinAPI_GetString($aCall[2])
_WinAPI_CoTaskMemFree($aCall[2])
Return $sID
EndFunc
Func _WinAPI_ReleaseStream($pStream)
Local $aCall = DllCall('oleaut32.dll', 'long', 'DispCallFunc', 'ptr', $pStream, 'ulong_ptr', 8 * (1 + @AutoItX64), 'uint', 4,  'ushort', 23, 'uint', 0, 'ptr', 0, 'ptr', 0, 'str', '')
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Global Const $FR_PRIVATE = 0x10
Global Const $FR_NOT_ENUM = 0x20
Global Const $COMPRESSION_BITMAP_PNG = 0
Global Const $COMPRESSION_BITMAP_JPEG = 1
Global Const $BS_DIBPATTERN = 5
Global Const $BS_DIBPATTERN8X8 = 8
Global Const $BS_DIBPATTERNPT = 6
Global Const $BS_HATCHED = 2
Global Const $BS_HOLLOW = 1
Global Const $BS_NULL = 1
Global Const $BS_PATTERN = 3
Global Const $BS_PATTERN8X8 = 7
Global Const $BS_SOLID = 0
Global Const $HS_BDIAGONAL = 3
Global Const $HS_CROSS = 4
Global Const $HS_DIAGCROSS = 5
Global Const $HS_FDIAGONAL = 2
Global Const $HS_HORIZONTAL = 0
Global Const $HS_VERTICAL = 1
Global Const $DIB_PAL_COLORS = 1
Global Const $DIB_RGB_COLORS = 0
Global Const $CA_NEGATIVE = 0x01
Global Const $CA_LOG_FILTER = 0x02
Global Const $ILLUMINANT_DEVICE_DEFAULT = 0
Global Const $ILLUMINANT_A = 1
Global Const $ILLUMINANT_B = 2
Global Const $ILLUMINANT_C = 3
Global Const $ILLUMINANT_D50 = 4
Global Const $ILLUMINANT_D55 = 5
Global Const $ILLUMINANT_D65 = 6
Global Const $ILLUMINANT_D75 = 7
Global Const $ILLUMINANT_F2 = 8
Global Const $ILLUMINANT_TUNGSTEN = $ILLUMINANT_A
Global Const $ILLUMINANT_DAYLIGHT = $ILLUMINANT_C
Global Const $ILLUMINANT_FLUORESCENT = $ILLUMINANT_F2
Global Const $ILLUMINANT_NTSC = $ILLUMINANT_C
Global Const $BI_RGB = 0
Global Const $BI_RLE8 = 1
Global Const $BI_RLE4 = 2
Global Const $BI_BITFIELDS = 3
Global Const $BI_JPEG = 4
Global Const $BI_PNG = 5
Global Const $ALTERNATE = 1
Global Const $WINDING = 2
Global Const $DWMWA_NCRENDERING_ENABLED = 1
Global Const $DWMWA_NCRENDERING_POLICY = 2
Global Const $DWMWA_TRANSITIONS_FORCEDISABLED = 3
Global Const $DWMWA_ALLOW_NCPAINT = 4
Global Const $DWMWA_CAPTION_BUTTON_BOUNDS = 5
Global Const $DWMWA_NONCLIENT_RTL_LAYOUT = 6
Global Const $DWMWA_FORCE_ICONIC_REPRESENTATION = 7
Global Const $DWMWA_FLIP3D_POLICY = 8
Global Const $DWMWA_EXTENDED_FRAME_BOUNDS = 9
Global Const $DWMWA_HAS_ICONIC_BITMAP = 10
Global Const $DWMWA_DISALLOW_PEEK = 11
Global Const $DWMWA_EXCLUDED_FROM_PEEK = 12
Global Const $DWMNCRP_USEWINDOWSTYLE = 0
Global Const $DWMNCRP_DISABLED = 1
Global Const $DWMNCRP_ENABLED = 2
Global Const $DWMFLIP3D_DEFAULT = 0
Global Const $DWMFLIP3D_EXCLUDEBELOW = 1
Global Const $DWMFLIP3D_EXCLUDEABOVE = 2
Global Const $DM_BITSPERPEL = 0x00040000
Global Const $DM_COLLATE = 0x0008000
Global Const $DM_COLOR = 0x00000800
Global Const $DM_COPIES = 0x00000100
Global Const $DM_DEFAULTSOURCE = 0x00000200
Global Const $DM_DISPLAYFIXEDOUTPUT = 0x20000000
Global Const $DM_DISPLAYFLAGS = 0x00200000
Global Const $DM_DISPLAYFREQUENCY = 0x00400000
Global Const $DM_DISPLAYORIENTATION = 0x00000080
Global Const $DM_DITHERTYPE = 0x04000000
Global Const $DM_DUPLEX = 0x0001000
Global Const $DM_FORMNAME = 0x00010000
Global Const $DM_ICMINTENT = 0x01000000
Global Const $DM_ICMMETHOD = 0x00800000
Global Const $DM_LOGPIXELS = 0x00020000
Global Const $DM_MEDIATYPE = 0x02000000
Global Const $DM_NUP = 0x00000040
Global Const $DM_ORIENTATION = 0x00000001
Global Const $DM_PANNINGHEIGHT = 0x10000000
Global Const $DM_PANNINGWIDTH = 0x08000000
Global Const $DM_PAPERLENGTH = 0x00000004
Global Const $DM_PAPERSIZE = 0x00000002
Global Const $DM_PAPERWIDTH = 0x00000008
Global Const $DM_PELSHEIGHT = 0x00100000
Global Const $DM_PELSWIDTH = 0x00080000
Global Const $DM_POSITION = 0x00000020
Global Const $DM_PRINTQUALITY = 0x00000400
Global Const $DM_SCALE = 0x00000010
Global Const $DM_TTOPTION = 0x0004000
Global Const $DM_YRESOLUTION = 0x0002000
Global Const $DMPAPER_LETTER = 1
Global Const $DMPAPER_LETTERSMALL = 2
Global Const $DMPAPER_TABLOID = 3
Global Const $DMPAPER_LEDGER = 4
Global Const $DMPAPER_LEGAL = 5
Global Const $DMPAPER_STATEMENT = 6
Global Const $DMPAPER_EXECUTIVE = 7
Global Const $DMPAPER_A3 = 8
Global Const $DMPAPER_A4 = 9
Global Const $DMPAPER_A4SMALL = 10
Global Const $DMPAPER_A5 = 11
Global Const $DMPAPER_B4 = 12
Global Const $DMPAPER_B5 = 13
Global Const $DMPAPER_FOLIO = 14
Global Const $DMPAPER_QUARTO = 15
Global Const $DMPAPER_10X14 = 16
Global Const $DMPAPER_11X17 = 17
Global Const $DMPAPER_NOTE = 18
Global Const $DMPAPER_ENV_9 = 19
Global Const $DMPAPER_ENV_10 = 20
Global Const $DMPAPER_ENV_11 = 21
Global Const $DMPAPER_ENV_12 = 22
Global Const $DMPAPER_ENV_14 = 23
Global Const $DMPAPER_CSHEET = 24
Global Const $DMPAPER_DSHEET = 25
Global Const $DMPAPER_ESHEET = 26
Global Const $DMPAPER_ENV_DL = 27
Global Const $DMPAPER_ENV_C5 = 28
Global Const $DMPAPER_ENV_C3 = 29
Global Const $DMPAPER_ENV_C4 = 30
Global Const $DMPAPER_ENV_C6 = 31
Global Const $DMPAPER_ENV_C65 = 32
Global Const $DMPAPER_ENV_B4 = 33
Global Const $DMPAPER_ENV_B5 = 34
Global Const $DMPAPER_ENV_B6 = 35
Global Const $DMPAPER_ENV_ITALY = 36
Global Const $DMPAPER_ENV_MONARCH = 37
Global Const $DMPAPER_ENV_PERSONAL = 38
Global Const $DMPAPER_FANFOLD_US = 39
Global Const $DMPAPER_FANFOLD_STD_GERMAN = 40
Global Const $DMPAPER_FANFOLD_LGL_GERMAN = 41
Global Const $DMPAPER_ISO_B4 = 42
Global Const $DMPAPER_JAPANESE_POSTCARD = 43
Global Const $DMPAPER_9X11 = 44
Global Const $DMPAPER_10X11 = 45
Global Const $DMPAPER_15X11 = 46
Global Const $DMPAPER_ENV_INVITE = 47
Global Const $DMPAPER_RESERVED_48 = 48
Global Const $DMPAPER_RESERVED_49 = 49
Global Const $DMPAPER_LETTER_EXTRA = 50
Global Const $DMPAPER_LEGAL_EXTRA = 51
Global Const $DMPAPER_TABLOID_EXTRA = 52
Global Const $DMPAPER_A4_EXTRA = 53
Global Const $DMPAPER_LETTER_TRANSVERSE = 54
Global Const $DMPAPER_A4_TRANSVERSE = 55
Global Const $DMPAPER_LETTER_EXTRA_TRANSVERSE = 56
Global Const $DMPAPER_A_PLUS = 57
Global Const $DMPAPER_B_PLUS = 58
Global Const $DMPAPER_LETTER_PLUS = 59
Global Const $DMPAPER_A4_PLUS = 60
Global Const $DMPAPER_A5_TRANSVERSE = 61
Global Const $DMPAPER_B5_TRANSVERSE = 62
Global Const $DMPAPER_A3_EXTRA = 63
Global Const $DMPAPER_A5_EXTRA = 64
Global Const $DMPAPER_B5_EXTRA = 65
Global Const $DMPAPER_A2 = 66
Global Const $DMPAPER_A3_TRANSVERSE = 67
Global Const $DMPAPER_A3_EXTRA_TRANSVERSE = 68
Global Const $DMPAPER_DBL_JAPANESE_POSTCARD = 69
Global Const $DMPAPER_A6 = 70
Global Const $DMPAPER_JENV_KAKU2 = 71
Global Const $DMPAPER_JENV_KAKU3 = 72
Global Const $DMPAPER_JENV_CHOU3 = 73
Global Const $DMPAPER_JENV_CHOU4 = 74
Global Const $DMPAPER_LETTER_ROTATED = 75
Global Const $DMPAPER_A3_ROTATED = 76
Global Const $DMPAPER_A4_ROTATED = 77
Global Const $DMPAPER_A5_ROTATED = 78
Global Const $DMPAPER_B4_JIS_ROTATED = 79
Global Const $DMPAPER_B5_JIS_ROTATED = 80
Global Const $DMPAPER_JAPANESE_POSTCARD_ROTATED = 81
Global Const $DMPAPER_DBL_JAPANESE_POSTCARD_ROTATED = 82
Global Const $DMPAPER_A6_ROTATED = 83
Global Const $DMPAPER_JENV_KAKU2_ROTATED = 84
Global Const $DMPAPER_JENV_KAKU3_ROTATED = 85
Global Const $DMPAPER_JENV_CHOU3_ROTATED = 86
Global Const $DMPAPER_JENV_CHOU4_ROTATED = 87
Global Const $DMPAPER_B6_JIS = 88
Global Const $DMPAPER_B6_JIS_ROTATED = 89
Global Const $DMPAPER_12X11 = 90
Global Const $DMPAPER_JENV_YOU4 = 91
Global Const $DMPAPER_JENV_YOU4_ROTATED = 92
Global Const $DMPAPER_P16K = 93
Global Const $DMPAPER_P32K = 94
Global Const $DMPAPER_P32KBIG = 95
Global Const $DMPAPER_PENV_1 = 96
Global Const $DMPAPER_PENV_2 = 97
Global Const $DMPAPER_PENV_3 = 98
Global Const $DMPAPER_PENV_4 = 99
Global Const $DMPAPER_PENV_5 = 100
Global Const $DMPAPER_PENV_6 = 101
Global Const $DMPAPER_PENV_7 = 102
Global Const $DMPAPER_PENV_8 = 103
Global Const $DMPAPER_PENV_9 = 104
Global Const $DMPAPER_PENV_10 = 105
Global Const $DMPAPER_P16K_ROTATED = 106
Global Const $DMPAPER_P32K_ROTATED = 107
Global Const $DMPAPER_P32KBIG_ROTATED = 108
Global Const $DMPAPER_PENV_1_ROTATED = 109
Global Const $DMPAPER_PENV_2_ROTATED = 110
Global Const $DMPAPER_PENV_3_ROTATED = 111
Global Const $DMPAPER_PENV_4_ROTATED = 112
Global Const $DMPAPER_PENV_5_ROTATED = 113
Global Const $DMPAPER_PENV_6_ROTATED = 114
Global Const $DMPAPER_PENV_7_ROTATED = 115
Global Const $DMPAPER_PENV_8_ROTATED = 116
Global Const $DMPAPER_PENV_9_ROTATED = 117
Global Const $DMPAPER_PENV_10_ROTATED = 118
Global Const $DMPAPER_USER = 256
Global Const $DMBIN_UPPER = 1
Global Const $DMBIN_LOWER = 2
Global Const $DMBIN_MIDDLE = 3
Global Const $DMBIN_MANUAL = 4
Global Const $DMBIN_ENVELOPE = 5
Global Const $DMBIN_ENVMANUAL = 6
Global Const $DMBIN_AUTO = 7
Global Const $DMBIN_TRACTOR = 8
Global Const $DMBIN_SMALLFMT = 9
Global Const $DMBIN_LARGEFMT = 10
Global Const $DMBIN_LARGECAPACITY = 11
Global Const $DMBIN_CASSETTE = 14
Global Const $DMBIN_FORMSOURCE = 15
Global Const $DMBIN_USER = 256
Global Const $DMRES_DRAFT = -1
Global Const $DMRES_LOW = -2
Global Const $DMRES_MEDIUM = -3
Global Const $DMRES_HIGH = -4
Global Const $DMDO_DEFAULT = 0
Global Const $DMDO_90 = 1
Global Const $DMDO_180 = 2
Global Const $DMDO_270 = 3
Global Const $DMDFO_DEFAULT = 0
Global Const $DMDFO_STRETCH = 1
Global Const $DMDFO_CENTER = 2
Global Const $DMCOLOR_MONOCHROME = 1
Global Const $DMCOLOR_COLOR = 2
Global Const $DMDUP_SIMPLEX = 1
Global Const $DMDUP_VERTICAL = 2
Global Const $DMDUP_HORIZONTAL = 3
Global Const $DMTT_BITMAP = 1
Global Const $DMTT_DOWNLOAD = 2
Global Const $DMTT_SUBDEV = 3
Global Const $DMTT_DOWNLOAD_OUTLINE = 4
Global Const $DMCOLLATE_FALSE = 0
Global Const $DMCOLLATE_TRUE = 1
Global Const $DM_GRAYSCALE = 1
Global Const $DM_INTERLACED = 2
Global Const $DMNUP_SYSTEM = 1
Global Const $DMNUP_ONEUP = 2
Global Const $DMICMMETHOD_NONE = 1
Global Const $DMICMMETHOD_SYSTEM = 2
Global Const $DMICMMETHOD_DRIVER = 3
Global Const $DMICMMETHOD_DEVICE = 4
Global Const $DMICMMETHOD_USER = 256
Global Const $DMICM_SATURATE = 1
Global Const $DMICM_CONTRAST = 2
Global Const $DMICM_COLORIMETRIC = 3
Global Const $DMICM_ABS_COLORIMETRIC = 4
Global Const $DMICM_USER = 256
Global Const $DMMEDIA_STANDARD = 1
Global Const $DMMEDIA_TRANSPARENCY = 2
Global Const $DMMEDIA_GLOSSY = 3
Global Const $DMMEDIA_USER = 256
Global Const $DMDITHER_NONE = 1
Global Const $DMDITHER_COARSE = 2
Global Const $DMDITHER_FINE = 3
Global Const $DMDITHER_LINEART = 4
Global Const $DMDITHER_ERRORDIFFUSION = 5
Global Const $DMDITHER_RESERVED6 = 6
Global Const $DMDITHER_RESERVED7 = 7
Global Const $DMDITHER_RESERVED8 = 8
Global Const $DMDITHER_RESERVED9 = 9
Global Const $DMDITHER_GRAYSCALE = 10
Global Const $DMDITHER_USER = 256
Global Const $ENUM_CURRENT_SETTINGS = -1
Global Const $ENUM_REGISTRY_SETTINGS = -2
Global Const $DEVICE_FONTTYPE = 0x2
Global Const $RASTER_FONTTYPE = 0x1
Global Const $TRUETYPE_FONTTYPE = 0x4
Global Const $NTM_BOLD = 0x00000020
Global Const $NTM_DSIG = 0x00200000
Global Const $NTM_ITALIC = 0x00000001
Global Const $NTM_MULTIPLEMASTER = 0x00080000
Global Const $NTM_NONNEGATIVE_AC = 0x00010000
Global Const $NTM_PS_OPENTYPE = 0x00020000
Global Const $NTM_REGULAR = 0x00000040
Global Const $NTM_TT_OPENTYPE = 0x00040000
Global Const $NTM_TYPE1 = 0x00100000
Global Const $FLOODFILLBORDER = 0
Global Const $FLOODFILLSURFACE = 1
Global Const $AD_COUNTERCLOCKWISE = 1
Global Const $AD_CLOCKWISE = 2
Global Const $DCB_ACCUMULATE = 0x02
Global Const $DCB_DISABLE = 0x08
Global Const $DCB_ENABLE = 0x04
Global Const $DCB_RESET = 0x01
Global Const $DCB_SET = BitOR($DCB_RESET, $DCB_ACCUMULATE)
Global Const $DCX_WINDOW = 0x00000001
Global Const $DCX_CACHE = 0x00000002
Global Const $DCX_PARENTCLIP = 0x00000020
Global Const $DCX_CLIPSIBLINGS = 0x00000010
Global Const $DCX_CLIPCHILDREN = 0x00000008
Global Const $DCX_NORESETATTRS = 0x00000004
Global Const $DCX_LOCKWINDOWUPDATE = 0x00000400
Global Const $DCX_EXCLUDERGN = 0x00000040
Global Const $DCX_INTERSECTRGN = 0x00000080
Global Const $DCX_INTERSECTUPDATE = 0x00000200
Global Const $DCX_VALIDATE = 0x00200000
Global Const $GGO_BEZIER = 3
Global Const $GGO_BITMAP = 1
Global Const $GGO_GLYPH_INDEX = 0x0080
Global Const $GGO_GRAY2_BITMAP = 4
Global Const $GGO_GRAY4_BITMAP = 5
Global Const $GGO_GRAY8_BITMAP = 6
Global Const $GGO_METRICS = 0
Global Const $GGO_NATIVE = 2
Global Const $GGO_UNHINTED = 0x0100
Global Const $GM_COMPATIBLE = 1
Global Const $GM_ADVANCED = 2
Global Const $MM_ANISOTROPIC = 8
Global Const $MM_HIENGLISH = 5
Global Const $MM_HIMETRIC = 3
Global Const $MM_ISOTROPIC = 7
Global Const $MM_LOENGLISH = 4
Global Const $MM_LOMETRIC = 2
Global Const $MM_TEXT = 1
Global Const $MM_TWIPS = 6
Global Const $R2_BLACK = 1
Global Const $R2_COPYPEN = 13
Global Const $R2_LAST = 16
Global Const $R2_MASKNOTPEN = 3
Global Const $R2_MASKPEN = 9
Global Const $R2_MASKPENNOT = 5
Global Const $R2_MERGENOTPEN = 12
Global Const $R2_MERGEPEN = 15
Global Const $R2_MERGEPENNOT = 14
Global Const $R2_NOP = 11
Global Const $R2_NOT = 6
Global Const $R2_NOTCOPYPEN = 4
Global Const $R2_NOTMASKPEN = 8
Global Const $R2_NOTMERGEPEN = 2
Global Const $R2_NOTXORPEN = 10
Global Const $R2_WHITE = 16
Global Const $R2_XORPEN = 7
Global Const $BLACKONWHITE = 1
Global Const $COLORONCOLOR = 3
Global Const $HALFTONE = 4
Global Const $WHITEONBLACK = 2
Global Const $STRETCH_ANDSCANS = $BLACKONWHITE
Global Const $STRETCH_DELETESCANS = $COLORONCOLOR
Global Const $STRETCH_HALFTONE = $HALFTONE
Global Const $STRETCH_ORSCANS = $WHITEONBLACK
Global Const $TA_BASELINE = 0x0018
Global Const $TA_BOTTOM = 0x0008
Global Const $TA_TOP = 0x0000
Global Const $TA_CENTER = 0x0006
Global Const $TA_LEFT = 0x0000
Global Const $TA_RIGHT = 0x0002
Global Const $TA_NOUPDATECP = 0x0000
Global Const $TA_RTLREADING = 0x0100
Global Const $TA_UPDATECP = 0x0001
Global Const $VTA_BASELINE = $TA_BASELINE
Global Const $VTA_BOTTOM = $TA_RIGHT
Global Const $VTA_TOP = $TA_LEFT
Global Const $VTA_CENTER = $TA_CENTER
Global Const $VTA_LEFT = $TA_BOTTOM
Global Const $VTA_RIGHT = $TA_TOP
Global Const $UDF_BGR = 1
Global Const $UDF_RGB = 0
Global Const $MWT_IDENTITY = 0x01
Global Const $MWT_LEFTMULTIPLY = 0x02
Global Const $MWT_RIGHTMULTIPLY = 0x03
Global Const $MWT_SET = 0x04
Global Const $MONITOR_DEFAULTTONEAREST = 2
Global Const $MONITOR_DEFAULTTONULL = 0
Global Const $MONITOR_DEFAULTTOPRIMARY = 1
Global Const $PT_BEZIERTO = 4
Global Const $PT_LINETO = 2
Global Const $PT_MOVETO = 6
Global Const $PT_CLOSEFIGURE = 1
Global Const $tagBITMAPV4HEADER = 'struct;dword bV4Size;long bV4Width;long bV4Height;ushort bV4Planes;ushort bV4BitCount;dword bV4Compression;dword bV4SizeImage;long bV4XPelsPerMeter;long bV4YPelsPerMeter;dword bV4ClrUsed;dword bV4ClrImportant;dword bV4RedMask;dword bV4GreenMask;dword bV4BlueMask;dword bV4AlphaMask;dword bV4CSType;int bV4Endpoints[9];dword bV4GammaRed;dword bV4GammaGreen;dword bV4GammaBlue;endstruct'
Global Const $tagCOLORADJUSTMENT = 'ushort Size;ushort Flags;ushort IlluminantIndex;ushort RedGamma;ushort GreenGamma;ushort BlueGamma;ushort ReferenceBlack;ushort ReferenceWhite;short Contrast;short Brightness;short Colorfulness;short RedGreenTint'
Global Const $tagDEVMODE = 'wchar DeviceName[32];ushort SpecVersion;ushort DriverVersion;ushort Size;ushort DriverExtra;dword Fields;short Orientation;short PaperSize;short PaperLength;short PaperWidth;short Scale;short Copies;short DefaultSource;short PrintQuality;short Color;short Duplex;short YResolution;short TTOption;short Collate;wchar FormName[32];ushort Unused1;dword Unused2[3];dword Nup;dword Unused3;dword ICMMethod;dword ICMIntent;dword MediaType;dword DitherType;dword Reserved1;dword Reserved2;dword PanningWidth;dword PanningHeight'
Global Const $tagDEVMODE_DISPLAY = 'wchar DeviceName[32];ushort SpecVersion;ushort DriverVersion;ushort Size;ushort DriverExtra;dword Fields;' & $tagPOINT & ';dword DisplayOrientation;dword DisplayFixedOutput;short Unused1[5];wchar Unused2[32];ushort LogPixels;dword BitsPerPel;dword PelsWidth;dword PelsHeight;dword DisplayFlags;dword DisplayFrequency'
Global Const $tagDWM_COLORIZATION_PARAMETERS = 'dword Color;dword AfterGlow;uint ColorBalance;uint AfterGlowBalance;uint BlurBalance;uint GlassReflectionIntensity; uint OpaqueBlend'
Global Const $tagENHMETAHEADER = 'struct;dword Type;dword Size;long rcBounds[4];long rcFrame[4];dword Signature;dword Version;dword Bytes;dword Records;ushort Handles;ushort Reserved;dword Description;dword OffDescription;dword PalEntries;long Device[2];long Millimeters[2];dword PixelFormat;dword OffPixelFormat;dword OpenGL;long Micrometers[2];endstruct'
Global Const $tagEXTLOGPEN = 'dword PenStyle;dword Width;uint BrushStyle;dword Color;ulong_ptr Hatch;dword NumEntries'
Global Const $tagFONTSIGNATURE = 'dword fsUsb[4];dword fsCsb[2]'
Global Const $tagGLYPHMETRICS = 'uint BlackBoxX;uint BlackBoxY;' & $tagPOINT & ';short CellIncX;short CellIncY'
Global Const $tagLOGBRUSH = 'uint Style;dword Color;ulong_ptr Hatch'
Global Const $tagLOGPEN = 'uint Style;dword Width;dword Color'
Global Const $tagMAT2 = 'short eM11[2];short eM12[2];short eM21[2];short eM22[2]'
Global Const $tagNEWTEXTMETRIC = $tagTEXTMETRIC & ';dword ntmFlags;uint ntmSizeEM;uint ntmCellHeight;uint ntmAvgWidth'
Global Const $tagNEWTEXTMETRICEX = $tagNEWTEXTMETRIC & ';' & $tagFONTSIGNATURE
Global Const $tagPANOSE = 'struct;byte bFamilyType;byte bSerifStyle;byte bWeight;byte bProportion;byte bContrast;byte bStrokeVariation;byte bArmStyle;byte bLetterform;byte bMidline;byte bXHeight;endstruct'
Global Const $tagOUTLINETEXTMETRIC = 'struct;uint otmSize;' & $tagTEXTMETRIC & ';byte otmFiller;' & $tagPANOSE & ';byte bugFiller[3];uint otmSelection;uint otmType;int otmCharSlopeRise;int otmCharSlopeRun;int otmItalicAngle;uint otmEMSquare;int otmAscent;int otmDescent;uint otmLineGap;uint otmCapEmHeight;uint otmXHeight;long otmFontBox[4];int otmMacAscent;int otmMacDescent;uint otmMacLineGap;uint otmMinimumPPEM;long otmSubscriptSize[2];long otmSubscriptOffset[2];long otmSuperscriptSize[2];long otmSuperscriptOffse[2];uint otmStrikeoutSize;int otmStrikeoutPosition;int otmUnderscoreSize;int otmUnderscorePosition;uint_ptr otmFamilyName;uint_ptr otmFaceName;uint_ptr otmStyleName;uint_ptr otmFullName;endstruct'
Global Const $tagPAINTSTRUCT = 'hwnd hDC;int fErase;dword rPaint[4];int fRestore;int fIncUpdate;byte rgbReserved[32]'
Global Const $tagRGNDATAHEADER = 'struct;dword Size;dword Type;dword Count;dword RgnSize;' & $tagRECT & ';endstruct'
Global Const $tagXFORM = 'float eM11;float eM12;float eM21;float eM22;float eDx;float eDy'
Func _WinAPI_AbortPath($hDC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'AbortPath', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_AddFontMemResourceEx($pData, $iSize)
Local $aCall = DllCall('gdi32.dll', 'handle', 'AddFontMemResourceEx', 'ptr', $pData, 'dword', $iSize, 'ptr', 0, 'dword*', 0)
If @error Then Return SetError(@error, @extended, 0)
Return SetExtended($aCall[4], $aCall[0])
EndFunc
Func _WinAPI_AddFontResourceEx($sFont, $iFlag = 0, $bNotify = False)
Local $aCall = DllCall('gdi32.dll', 'int', 'AddFontResourceExW', 'wstr', $sFont, 'dword', $iFlag, 'ptr', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
If $bNotify Then
Local Const $WM_FONTCHANGE = 0x001D
Local Const $HWND_BROADCAST = 0xFFFF
DllCall('user32.dll', 'lresult', 'SendMessage', 'hwnd', $HWND_BROADCAST, 'uint', $WM_FONTCHANGE, 'wparam', 0,  'lparam', 0)
EndIf
Return $aCall[0]
EndFunc
Func _WinAPI_AddIconOverlay($hIcon, $hOverlay)
Local $aCall, $hResult = 0, $iError = 0
Local $ahDev[2] = [0, 0]
Local $tSIZE = _WinAPI_GetIconDimension($hIcon)
Local $hIL = DllCall('comctl32.dll', 'handle', 'ImageList_Create', 'int', DllStructGetData($tSIZE, 1),  'int', DllStructGetData($tSIZE, 2), 'uint', 0x0021, 'int', 2, 'int', 2)
If @error Or Not $hIL[0] Then Return SetError(@error + 10, @extended, 0)
Do
$ahDev[0] = _WinAPI_Create32BitHICON($hIcon)
If @error Then
$iError = @error + 100
ExitLoop
EndIf
$aCall = DllCall('comctl32.dll', 'int', 'ImageList_ReplaceIcon', 'handle', $hIL[0], 'int', -1, 'handle', $ahDev[0])
If @error Or ($aCall[0] = -1) Then
$iError = @error + 200
ExitLoop
EndIf
$ahDev[1] = _WinAPI_Create32BitHICON($hOverlay)
If @error Then
$iError = @error + 300
ExitLoop
EndIf
$aCall = DllCall('comctl32.dll', 'int', 'ImageList_ReplaceIcon', 'handle', $hIL[0], 'int', -1, 'handle', $ahDev[1])
If @error Or ($aCall[0] = -1) Then
$iError = @error + 400
ExitLoop
EndIf
$aCall = DllCall('comctl32.dll', 'bool', 'ImageList_SetOverlayImage', 'handle', $hIL[0], 'int', 1, 'int', 1)
If @error Or Not $aCall[0] Then
$iError = @error + 500
ExitLoop
EndIf
$aCall = DllCall('comctl32.dll', 'handle', 'ImageList_GetIcon', 'handle', $hIL[0], 'int', 0, 'uint', 0x00000100)
If @error Or Not $aCall[0] Then
$iError = @error + 600
ExitLoop
EndIf
$hResult = $aCall[0]
Until 1
DllCall('comctl32.dll', 'bool', 'ImageList_Destroy', 'handle', $hIL[0])
For $i = 0 To 1
If $ahDev[$i] Then
_WinAPI_DestroyIcon($ahDev[$i])
EndIf
Next
If Not $hResult Then Return SetError($iError, 0, 0)
Return $hResult
EndFunc
Func _WinAPI_AdjustBitmap($hBitmap, $iWidth, $iHeight, $iMode = 3, $tAdjustment = 0)
Local $tObj = DllStructCreate($tagBITMAP)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetObject', 'handle', $hBitmap, 'int', DllStructGetSize($tObj), 'struct*', $tObj)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
If $iWidth = -1 Then
$iWidth = DllStructGetData($tObj, 'bmWidth')
EndIf
If $iHeight = -1 Then
$iHeight = DllStructGetData($tObj, 'bmHeight')
EndIf
$aCall = DllCall('user32.dll', 'handle', 'GetDC', 'hwnd', 0)
Local $hDC = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'CreateCompatibleDC', 'handle', $hDC)
Local $hDestDC = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'CreateCompatibleBitmap', 'handle', $hDC, 'int', $iWidth, 'int', $iHeight)
Local $hBmp = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hDestDC, 'handle', $hBmp)
Local $hDestSv = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'CreateCompatibleDC', 'handle', $hDC)
Local $hSrcDC = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hSrcDC, 'handle', $hBitmap)
Local $hSrcSv = $aCall[0]
If _WinAPI_SetStretchBltMode($hDestDC, $iMode) Then
Switch $iMode
Case 4
If IsDllStruct($tAdjustment) Then
If Not _WinAPI_SetColorAdjustment($hDestDC, $tAdjustment) Then
EndIf
EndIf
Case Else
EndSwitch
EndIf
$aCall = _WinAPI_StretchBlt($hDestDC, 0, 0, $iWidth, $iHeight, $hSrcDC, 0, 0, DllStructGetData($tObj, 'bmWidth'), DllStructGetData($tObj, 'bmHeight'), 0x00CC0020)
DllCall('user32.dll', 'int', 'ReleaseDC', 'hwnd', 0, 'handle', $hDC)
DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hDestDC, 'handle', $hDestSv)
DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hSrcDC, 'handle', $hSrcSv)
DllCall('gdi32.dll', 'bool', 'DeleteDC', 'handle', $hDestDC)
DllCall('gdi32.dll', 'bool', 'DeleteDC', 'handle', $hSrcDC)
If Not $aCall Then Return SetError(10, 0, 0)
Return $hBmp
EndFunc
Func _WinAPI_AlphaBlend($hDestDC, $iXDest, $iYDest, $iWidthDest, $iHeightDest, $hSrcDC, $iXSrc, $iYSrc, $iWidthSrc, $iHeightSrc, $iAlpha, $bAlpha = False)
Local $iBlend = BitOR(BitShift(Not ($bAlpha = False), -24), BitShift(BitAND($iAlpha, 0xFF), -16))
Local $aCall = DllCall('gdi32.dll', 'bool', 'GdiAlphaBlend', 'handle', $hDestDC, 'int', $iXDest, 'int', $iYDest,  'int', $iWidthDest, 'int', $iHeightDest, 'handle', $hSrcDC, 'int', $iXSrc, 'int', $iYSrc,  'int', $iWidthSrc, 'int', $iHeightSrc, 'dword', $iBlend)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_AngleArc($hDC, $iX, $iY, $iRadius, $nStartAngle, $nSweepAngle)
Local $aCall = DllCall('gdi32.dll', 'bool', 'AngleArc', 'handle', $hDC, 'int', $iX, 'int', $iY, 'dword', $iRadius,  'float', $nStartAngle, 'float', $nSweepAngle)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_Arc($hDC, $tRECT, $iXStartArc, $iYStartArc, $iXEndArc, $iYEndArc)
Local $aCall = DllCall('gdi32.dll', 'bool', 'Arc', 'handle', $hDC, 'int', DllStructGetData($tRECT, 1),  'int', DllStructGetData($tRECT, 2), 'int', DllStructGetData($tRECT, 3), 'int', DllStructGetData($tRECT, 4),  'int', $iXStartArc, 'int', $iYStartArc, 'int', $iXEndArc, 'int', $iYEndArc)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ArcTo($hDC, $tRECT, $iXRadial1, $iYRadial1, $iXRadial2, $iYRadial2)
Local $aCall = DllCall('gdi32.dll', 'bool', 'ArcTo', 'handle', $hDC, 'int', DllStructGetData($tRECT, 1),  'int', DllStructGetData($tRECT, 2), 'int', DllStructGetData($tRECT, 3), 'int', DllStructGetData($tRECT, 4),  'int', $iXRadial1, 'int', $iYRadial1, 'int', $iXRadial2, 'int', $iYRadial2)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_BeginPaint($hWnd, ByRef $tPAINTSTRUCT)
$tPAINTSTRUCT = DllStructCreate($tagPAINTSTRUCT)
Local $aCall = DllCall('user32.dll', 'handle', 'BeginPaint', 'hwnd', $hWnd, 'struct*', $tPAINTSTRUCT)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_BeginPath($hDC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'BeginPath', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CloseEnhMetaFile($hDC)
Local $aCall = DllCall('gdi32.dll', 'handle', 'CloseEnhMetaFile', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CloseFigure($hDC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'CloseFigure', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ColorAdjustLuma($iRGB, $iPercent, $bScale = True)
If $iRGB = -1 Then Return SetError(10, 0, -1)
If $bScale Then
$iPercent = Floor($iPercent * 10)
EndIf
Local $aCall = DllCall('shlwapi.dll', 'dword', 'ColorAdjustLuma', 'dword', __RGB($iRGB), 'int', $iPercent, 'bool', $bScale)
If @error Then Return SetError(@error, @extended, -1)
Return __RGB($aCall[0])
EndFunc
Func _WinAPI_ColorHLSToRGB($iHue, $iLuminance, $iSaturation)
If Not $iSaturation Then $iHue = 160
Local $aCall = DllCall('shlwapi.dll', 'dword', 'ColorHLSToRGB', 'word', $iHue, 'word', $iLuminance, 'word', $iSaturation)
If @error Then Return SetError(@error, @extended, -1)
Return __RGB($aCall[0])
EndFunc
Func _WinAPI_ColorRGBToHLS($iRGB, ByRef $iHue, ByRef $iLuminance, ByRef $iSaturation)
Local $aCall = DllCall('shlwapi.dll', 'none', 'ColorRGBToHLS', 'dword', __RGB($iRGB), 'word*', 0, 'word*', 0, 'word*', 0)
If @error Then Return SetError(@error, @extended, 0)
$iHue = $aCall[2]
$iLuminance = $aCall[3]
$iSaturation = $aCall[4]
Return 1
EndFunc
Func _WinAPI_CombineTransform($tXFORM1, $tXFORM2)
Local $tXFORM = DllStructCreate($tagXFORM)
Local $aCall = DllCall('gdi32.dll', 'bool', 'CombineTransform', 'struct*', $tXFORM, 'struct*', $tXFORM1, 'struct*', $tXFORM2)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tXFORM
EndFunc
Func _WinAPI_CompressBitmapBits($hBitmap, ByRef $pBuffer, $iCompression = 0, $iQuality = 100)
If Not __DLL('gdiplus.dll') Then Return SetError(103, 0, 0)
Local $aSize[2], $iCount, $iFormat, $iLength, $sMime, $aCall, $hDC, $hSv, $hMem, $tBits, $tData, $pData, $iError = 1
Local $hSource = 0, $hImage = 0, $hToken = 0, $pStream = 0, $tParam = 0
Local $tDIB = DllStructCreate($tagDIBSECTION)
Do
Switch $iCompression
Case 0
$sMime = 'image/png'
Case 1
$sMime = 'image/jpeg'
Case Else
$iError = 10
ExitLoop
EndSwitch
While $hBitmap
If Not _WinAPI_GetObject($hBitmap, DllStructGetSize($tDIB), $tDIB) Then
$iError = 11
ExitLoop 2
EndIf
If (DllStructGetData($tDIB, 'bmBitsPixel') = 32) And (Not DllStructGetData($tDIB, 'biCompression')) Then
$iError = 12
ExitLoop
EndIf
If $hSource Then
$iError = 13
ExitLoop 2
EndIf
$hSource = _WinAPI_CreateDIB(DllStructGetData($tDIB, 'bmWidth'), DllStructGetData($tDIB, 'bmHeight'))
If Not $hSource Then
$iError = @error + 100
ExitLoop 2
EndIf
$hDC = _WinAPI_CreateCompatibleDC(0)
$hSv = _WinAPI_SelectObject($hDC, $hSource)
If _WinAPI_DrawBitmap($hDC, 0, 0, $hBitmap) Then
$hBitmap = $hSource
Else
$iError = @error + 200
$hBitmap = 0
EndIf
_WinAPI_SelectObject($hDC, $hSv)
_WinAPI_DeleteDC($hDC)
WEnd
If Not $hBitmap Then
ExitLoop
EndIf
For $i = 0 To 1
$aSize[$i] = DllStructGetData($tDIB, $i + 2)
Next
$tBits = DllStructCreate('byte[' & ($aSize[0] * $aSize[1] * 4) & ']')
If Not _WinAPI_GetBitmapBits($hBitmap, DllStructGetSize($tBits), $tBits) Then
$iError = @error + 300
ExitLoop
EndIf
$tData = DllStructCreate($tagGDIPSTARTUPINPUT)
DllStructSetData($tData, "Version", 1)
$aCall = DllCall('gdiplus.dll', 'int', 'GdiplusStartup', 'ulong_ptr*', 0, 'struct*', $tData, 'ptr', 0)
If @error Or $aCall[0] Then
$iError = @error + 400
ExitLoop
EndIf
If _WinAPI_IsAlphaBitmap($hBitmap) Then
$iFormat = 0x0026200A
Else
$iFormat = 0x00022009
EndIf
$hToken = $aCall[1]
$aCall = DllCall('gdiplus.dll', 'int', 'GdipCreateBitmapFromScan0', 'int', $aSize[0], 'int', $aSize[1],  'uint', $aSize[0] * 4, 'int', $iFormat, 'struct*', $tBits, 'ptr*', 0)
If @error Or $aCall[0] Then
$iError = @error + 500
ExitLoop
EndIf
$hImage = $aCall[6]
$aCall = DllCall('gdiplus.dll', 'int', 'GdipGetImageEncodersSize', 'uint*', 0, 'uint*', 0)
If @error Or $aCall[0] Then
$iError = @error + 600
ExitLoop
EndIf
$iCount = $aCall[1]
$tData = DllStructCreate('byte[' & $aCall[2] & ']')
If @error Then
$iError = @error + 700
ExitLoop
EndIf
$pData = DllStructGetPtr($tData)
$aCall = DllCall('gdiplus.dll', 'int', 'GdipGetImageEncoders', 'uint', $iCount, 'uint', $aCall[2], 'struct*', $tData)
If @error Or $aCall[0] Then
$iError = @error + 800
ExitLoop
EndIf
Local $tCodec, $pEncoder = 0
For $i = 1 To $iCount
$tCodec = DllStructCreate($tagGDIPIMAGECODECINFO, $pData)
If Not StringInStr(_WinAPI_GetString(DllStructGetData($tCodec, 'MimeType')), $sMime) Then
$pData += DllStructGetSize($tagGDIPIMAGECODECINFO)
Else
$pEncoder = $pData
$iError = 0
ExitLoop
EndIf
Next
If Not $pEncoder Then
$iError = 15
ExitLoop
EndIf
Switch $iCompression
Case 0
Case 1
Local Const $tagENCODERPARAMETER = 'byte[16] GUID;ulong NumberOfValues;dword Type;ptr pValue'
$tParam = DllStructCreate('dword Count;' & $tagENCODERPARAMETER & ';ulong Quality')
DllStructSetData($tParam, 'Count', 1)
DllStructSetData($tParam, 'NumberOfValues', 1)
DllStructSetData($tParam, 'Type', 4)
DllStructSetData($tParam, 'pValue', DllStructGetPtr($tParam, 'Quality'))
DllStructSetData($tParam, 'Quality', $iQuality)
$aCall = DllCall('ole32.dll', 'long', 'CLSIDFromString', 'wstr', '{1D5BE4B5-FA4A-452D-9CDD-5DB35105E7EB}',  'ptr', DllStructGetPtr($tParam, 2))
If @error Or $aCall[0] Then
$tParam = 0
EndIf
EndSwitch
$pStream = _WinAPI_CreateStreamOnHGlobal()
$aCall = DllCall('gdiplus.dll', 'int', 'GdipSaveImageToStream', 'handle', $hImage, 'ptr', $pStream,  'ptr', $pEncoder, 'struct*', $tParam)
If @error Or $aCall[0] Then
$iError = @error + 900
ExitLoop
EndIf
$hMem = _WinAPI_GetHGlobalFromStream($pStream)
$aCall = DllCall('kernel32.dll', 'ulong_ptr', 'GlobalSize', 'handle', $hMem)
If @error Or Not $aCall[0] Then
$iError = @error + 1000
ExitLoop
EndIf
$iLength = $aCall[0]
$aCall = DllCall('kernel32.dll', 'ptr', 'GlobalLock', 'handle', $hMem)
If @error Or Not $aCall[0] Then
$iError = @error + 1100
ExitLoop
EndIf
$pBuffer = __HeapReAlloc($pBuffer, $iLength, 1)
If Not @error Then
_WinAPI_MoveMemory($pBuffer, $aCall[0], $iLength)
Else
$iError = @error + 1300
EndIf
Until 1
If $pStream Then
_WinAPI_ReleaseStream($pStream)
EndIf
If $hImage Then
DllCall('gdiplus.dll', 'int', 'GdipDisposeImage', 'handle', $hImage)
EndIf
If $hToken Then
DllCall('gdiplus.dll', 'none', 'GdiplusShutdown', 'ulong_ptr', $hToken)
EndIf
If $hSource Then
_WinAPI_DeleteObject($hSource)
EndIf
If $iError Then Return SetError($iError, 0, 0)
Return $iLength
EndFunc
Func _WinAPI_CopyEnhMetaFile($hEmf, $sFilePath = '')
If Not StringStripWS($sFilePath, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sFilePath = Null
Local $aCall = DllCall('gdi32.dll', 'handle', 'CopyEnhMetaFileW', 'handle', $hEmf, 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CopyRect($tRECT)
Local $tData = DllStructCreate($tagRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'CopyRect', 'struct*', $tData, 'struct*', $tRECT)
If @error Or Not $aCall[0] Then SetError(@error + 10, @extended, 0)
Return $tData
EndFunc
Func _WinAPI_Create32BitHBITMAP($hIcon, $bDib = False, $bDelete = False)
Local $hBitmap = 0
Local $aDIB[2] = [0, 0]
Local $hTemp = _WinAPI_Create32BitHICON($hIcon)
If @error Then Return SetError(@error, @extended, 0)
Local $iError = 0
Do
Local $tICONINFO = DllStructCreate($tagICONINFO)
Local $aCall = DllCall('user32.dll', 'bool', 'GetIconInfo', 'handle', $hTemp, 'struct*', $tICONINFO)
If @error Or Not $aCall[0] Then
$iError = @error + 10
ExitLoop
EndIf
For $i = 0 To 1
$aDIB[$i] = DllStructGetData($tICONINFO, $i + 4)
Next
Local $tBITMAP = DllStructCreate($tagBITMAP)
If Not _WinAPI_GetObject($aDIB[0], DllStructGetSize($tBITMAP), $tBITMAP) Then
$iError = @error + 20
ExitLoop
EndIf
If $bDib Then
$hBitmap = _WinAPI_CreateDIB(DllStructGetData($tBITMAP, 'bmWidth'), DllStructGetData($tBITMAP, 'bmHeight'))
Local $hDC = _WinAPI_CreateCompatibleDC(0)
Local $hSv = _WinAPI_SelectObject($hDC, $hBitmap)
_WinAPI_DrawIconEx($hDC, 0, 0, $hTemp)
_WinAPI_SelectObject($hDC, $hSv)
_WinAPI_DeleteDC($hDC)
Else
$hBitmap = $aDIB[1]
$aDIB[1] = 0
EndIf
Until 1
For $i = 0 To 1
If $aDIB[$i] Then
_WinAPI_DeleteObject($aDIB[$i])
EndIf
Next
_WinAPI_DestroyIcon($hTemp)
If $iError Then Return SetError($iError, 0, 0)
If Not $hBitmap Then Return SetError(12, 0, 0)
If $bDelete Then
_WinAPI_DestroyIcon($hIcon)
EndIf
Return $hBitmap
EndFunc
Func _WinAPI_CreateBitmapIndirect(ByRef $tBITMAP)
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateBitmapIndirect', 'struct*', $tBITMAP)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateBrushIndirect($iStyle, $iRGB, $iHatch = 0)
Local $tLOGBRUSH = DllStructCreate($tagLOGBRUSH)
DllStructSetData($tLOGBRUSH, 1, $iStyle)
DllStructSetData($tLOGBRUSH, 2, __RGB($iRGB))
DllStructSetData($tLOGBRUSH, 3, $iHatch)
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateBrushIndirect', 'struct*', $tLOGBRUSH)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateColorAdjustment($iFlags = 0, $iIlluminant = 0, $iGammaR = 10000, $iGammaG = 10000, $iGammaB = 10000, $iBlack = 0, $iWhite = 10000, $iContrast = 0, $iBrightness = 0, $iColorfulness = 0, $iTint = 0)
Local $tCA = DllStructCreate($tagCOLORADJUSTMENT)
DllStructSetData($tCA, 1, DllStructGetSize($tCA))
DllStructSetData($tCA, 2, $iFlags)
DllStructSetData($tCA, 3, $iIlluminant)
DllStructSetData($tCA, 4, $iGammaR)
DllStructSetData($tCA, 5, $iGammaG)
DllStructSetData($tCA, 6, $iGammaB)
DllStructSetData($tCA, 7, $iBlack)
DllStructSetData($tCA, 8, $iWhite)
DllStructSetData($tCA, 9, $iContrast)
DllStructSetData($tCA, 10, $iBrightness)
DllStructSetData($tCA, 11, $iColorfulness)
DllStructSetData($tCA, 12, $iTint)
Return $tCA
EndFunc
Func _WinAPI_CreateCompatibleBitmapEx($hDC, $iWidth, $iHeight, $iRGB)
Local $hBrush = _WinAPI_CreateBrushIndirect(0, $iRGB)
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateCompatibleDC', 'handle', $hDC)
Local $hDestDC = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'CreateCompatibleBitmap', 'handle', $hDC, 'int', $iWidth, 'int', $iHeight)
Local $hBmp = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hDestDC, 'handle', $hBmp)
Local $hDestSv = $aCall[0]
Local $tRECT = _WinAPI_CreateRectEx(0, 0, $iWidth, $iHeight)
Local $iError = 0
$aCall = DllCall('user32.dll', 'int', 'FillRect', 'handle', $hDestDC, 'struct*', $tRECT, 'handle', $hBrush)
If @error Or Not $aCall[0] Then
$iError = @error + 10
_WinAPI_DeleteObject($hBmp)
EndIf
_WinAPI_DeleteObject($hBrush)
DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hDestDC, 'handle', $hDestSv)
DllCall('gdi32.dll', 'bool', 'DeleteDC', 'handle', $hDestDC)
If $iError Then Return SetError($iError, 0, 0)
Return $hBmp
EndFunc
Func _WinAPI_CreateDIBitmap($hDC, ByRef $tBITMAPINFO, $iUsage, $pBits = 0)
Local $iInit = 0
If $pBits Then
$iInit = 0x04
EndIf
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateDIBitmap', 'handle', $hDC, 'struct*', $tBITMAPINFO, 'dword', $iInit, 'struct*', $pBits,  'struct*', $tBITMAPINFO, 'uint', $iUsage)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateEllipticRgn($tRECT)
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateEllipticRgnIndirect', 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateEnhMetaFile($hDC = 0, $tRECT = 0, $bPixels = False, $sFilePath = '', $sDescription = '')
If Not StringStripWS($sFilePath, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sFilePath = Null
Local $tData = 0, $aData = StringSplit($sDescription, '|', $STR_NOCOUNT)
If UBound($aData) < 2 Then
ReDim $aData[2]
$aData[1] = ''
EndIf
For $i = 0 To 1
$aData[$i] = StringStripWS($aData[$i], $STR_STRIPLEADING + $STR_STRIPTRAILING)
Next
If ($aData[0]) Or ($aData[1]) Then
$tData = _WinAPI_ArrayToStruct($aData)
EndIf
Local $iXp, $iYp, $iXm, $iYm, $hRef = 0
If $bPixels And (IsDllStruct($tRECT)) Then
If Not $hDC Then
$hRef = _WinAPI_GetDC(0)
EndIf
$iXp = _WinAPI_GetDeviceCaps($hRef, 8)
$iYp = _WinAPI_GetDeviceCaps($hRef, 10)
$iXm = _WinAPI_GetDeviceCaps($hRef, 4)
$iYm = _WinAPI_GetDeviceCaps($hRef, 6)
If $hRef Then
_WinAPI_ReleaseDC(0, $hRef)
EndIf
For $i = 1 To 3 Step 2
DllStructSetData($tRECT, $i, Round(DllStructGetData($tRECT, $i) * $iXm / $iXp * 100))
Next
For $i = 2 To 4 Step 2
DllStructSetData($tRECT, $i, Round(DllStructGetData($tRECT, $i) * $iYm / $iYp * 100))
Next
EndIf
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateEnhMetaFileW', 'handle', $hDC, 'wstr', $sFilePath, 'struct*', $tRECT,  'struct*', $tData)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateFontEx($iHeight, $iWidth = 0, $iEscapement = 0, $iOrientation = 0, $iWeight = 400, $bItalic = False, $bUnderline = False, $bStrikeOut = False, $iCharSet = 1, $iOutPrecision = 0, $iClipPrecision = 0, $iQuality = 0, $iPitchAndFamily = 0, $sFaceName = '', $iStyle = 0)
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateFontW', 'int', $iHeight, 'int', $iWidth, 'int', $iEscapement,  'int', $iOrientation, 'int', $iWeight, 'dword', $bItalic, 'dword', $bUnderline, 'dword', $bStrikeOut,  'dword', $iCharSet, 'dword', $iOutPrecision, 'dword', $iClipPrecision, 'dword', $iQuality,  'dword', $iPitchAndFamily, 'wstr', _WinAPI_GetFontName($sFaceName, $iStyle, $iCharSet))
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateNullRgn()
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateRectRgn', 'int', 0, 'int', 0, 'int', 0, 'int', 0)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreatePen($iPenStyle, $iWidth, $iColor)
Local $aCall = DllCall("gdi32.dll", "handle", "CreatePen", "int", $iPenStyle, "int", $iWidth, "INT", $iColor)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreatePolygonRgn(Const ByRef $aPoint, $iStart = 0, $iEnd = -1, $iMode = 1)
If __CheckErrorArrayBounds($aPoint, $iStart, $iEnd, 2, 2) Then Return SetError(@error + 10, @extended, 0)
Local $tagStruct = ''
For $i = $iStart To $iEnd
$tagStruct &= 'int[2];'
Next
Local $tData = DllStructCreate($tagStruct)
Local $iCount = 1
For $i = $iStart To $iEnd
For $j = 0 To 1
DllStructSetData($tData, $iCount, $aPoint[$i][$j], $j + 1)
Next
$iCount += 1
Next
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreatePolygonRgn', 'struct*', $tData, 'int', $iCount - 1, 'int', $iMode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateRectRgnIndirect($tRECT)
Local $aCall = DllCall('gdi32.dll', 'handle', 'CreateRectRgnIndirect', 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_CreateSolidBitmap($hWnd, $iColor, $iWidth, $iHeight, $bRGB = 1)
Local $hDC = _WinAPI_GetDC($hWnd)
Local $hDestDC = _WinAPI_CreateCompatibleDC($hDC)
Local $hBitmap = _WinAPI_CreateCompatibleBitmap($hDC, $iWidth, $iHeight)
Local $hOld = _WinAPI_SelectObject($hDestDC, $hBitmap)
Local $tRECT = DllStructCreate($tagRECT)
DllStructSetData($tRECT, 1, 0)
DllStructSetData($tRECT, 2, 0)
DllStructSetData($tRECT, 3, $iWidth)
DllStructSetData($tRECT, 4, $iHeight)
If $bRGB Then
$iColor = BitOR(BitAND($iColor, 0x00FF00), BitShift(BitAND($iColor, 0x0000FF), -16), BitShift(BitAND($iColor, 0xFF0000), 16))
EndIf
Local $hBrush = _WinAPI_CreateSolidBrush($iColor)
If Not _WinAPI_FillRect($hDestDC, $tRECT, $hBrush) Then
_WinAPI_DeleteObject($hBitmap)
$hBitmap = 0
EndIf
_WinAPI_DeleteObject($hBrush)
_WinAPI_ReleaseDC($hWnd, $hDC)
_WinAPI_SelectObject($hDestDC, $hOld)
_WinAPI_DeleteDC($hDestDC)
If Not $hBitmap Then Return SetError(1, 0, 0)
Return $hBitmap
EndFunc
Func _WinAPI_CreateTransform($nM11 = 1, $nM12 = 0, $nM21 = 0, $nM22 = 1, $nDX = 0, $nDY = 0)
Local $tXFORM = DllStructCreate($tagXFORM)
DllStructSetData($tXFORM, 1, $nM11)
DllStructSetData($tXFORM, 2, $nM12)
DllStructSetData($tXFORM, 3, $nM21)
DllStructSetData($tXFORM, 4, $nM22)
DllStructSetData($tXFORM, 5, $nDX)
DllStructSetData($tXFORM, 6, $nDY)
Return $tXFORM
EndFunc
Func _WinAPI_DeleteEnhMetaFile($hEmf)
Local $aCall = DllCall('gdi32.dll', 'bool', 'DeleteEnhMetaFile', 'handle', $hEmf)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DPtoLP($hDC, ByRef $tPOINT, $iCount = 1)
Local $aCall = DllCall('gdi32.dll', 'bool', 'DPtoLP', 'handle', $hDC, 'struct*', $tPOINT, 'int', $iCount)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DrawAnimatedRects($hWnd, $tRectFrom, $tRectTo)
Local $aCall = DllCall('user32.dll', 'bool', 'DrawAnimatedRects', 'hwnd', $hWnd, 'int', 3, 'struct*', $tRectFrom,  'struct*', $tRectTo)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DrawBitmap($hDC, $iX, $iY, $hBitmap, $iRop = 0x00CC0020)
Local $tObj = DllStructCreate($tagBITMAP)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetObject', 'handle', $hBitmap, 'int', DllStructGetSize($tObj), 'struct*', $tObj)
If @error Or Not $aCall[0] Then Return SetError(@error + 20, @extended, 0)
$aCall = DllCall('user32.dll', 'handle', 'GetDC', 'hwnd', 0)
Local $_hDC = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'CreateCompatibleDC', 'handle', $_hDC)
Local $hSrcDC = $aCall[0]
$aCall = DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hSrcDC, 'handle', $hBitmap)
Local $hSrcSv = $aCall[0]
Local $iError = 0
$aCall = DllCall('gdi32.dll', 'int', 'BitBlt', 'hwnd', $hDC, 'int', $iX, 'int', $iY, 'int', DllStructGetData($tObj, 'bmWidth'), 'int', DllStructGetData($tObj, 'bmHeight'), 'hwnd', $hSrcDC, 'int', 0, 'int', 0, 'int', $iRop)
If @error Or Not $aCall[0] Then
$iError = @error + 1
EndIf
DllCall('user32.dll', 'int', 'ReleaseDC', 'hwnd', 0, 'handle', $_hDC)
DllCall('gdi32.dll', 'handle', 'SelectObject', 'handle', $hSrcDC, 'handle', $hSrcSv)
DllCall('gdi32.dll', 'bool', 'DeleteDC', 'handle', $hSrcDC)
If $iError Then Return SetError(10, 0, 0)
Return 1
EndFunc
Func _WinAPI_DrawFocusRect($hDC, $tRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'DrawFocusRect', 'handle', $hDC, 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DrawLine($hDC, $iX1, $iY1, $iX2, $iY2)
_WinAPI_MoveTo($hDC, $iX1, $iY1)
If @error Then Return SetError(@error, @extended, False)
_WinAPI_LineTo($hDC, $iX2, $iY2)
If @error Then Return SetError(@error + 10, @extended, False)
Return True
EndFunc
Func _WinAPI_DrawShadowText($hDC, $sText, $iRGBText, $iRGBShadow, $iXOffset = 0, $iYOffset = 0, $tRECT = 0, $iFlags = 0)
Local $aCall
If Not IsDllStruct($tRECT) Then
$tRECT = DllStructCreate($tagRECT)
$aCall = DllCall('user32.dll', 'bool', 'GetClientRect', 'hwnd', _WinAPI_WindowFromDC($hDC), 'struct*', $tRECT)
If @error Then Return SetError(@error + 10, @extended, 0)
If Not $aCall[0] Then Return SetError(10, 0, 0)
EndIf
$aCall = DllCall('comctl32.dll', 'int', 'DrawShadowText', 'handle', $hDC, 'wstr', $sText, 'uint', -1, 'struct*', $tRECT,  'dword', $iFlags, 'int', __RGB($iRGBText), 'int', __RGB($iRGBShadow), 'int', $iXOffset, 'int', $iYOffset)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DwmDefWindowProc($hWnd, $iMsg, $wParam, $lParam)
Local $aCall = DllCall('dwmapi.dll', 'bool', 'DwmDefWindowProc', 'hwnd', $hWnd, 'uint', $iMsg, 'wparam', $wParam, 'lparam', $lParam, 'lresult*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[5]
EndFunc
Func _WinAPI_DwmEnableBlurBehindWindow($hWnd, $bEnable = True, $bTransition = False, $hRgn = 0)
Local $tBLURBEHIND = DllStructCreate('dword;bool;handle;bool')
Local $iFlags = 0
If $hRgn Then
$iFlags += 2
DllStructSetData($tBLURBEHIND, 3, $hRgn)
EndIf
DllStructSetData($tBLURBEHIND, 1, BitOR($iFlags, 0x05))
DllStructSetData($tBLURBEHIND, 2, $bEnable)
DllStructSetData($tBLURBEHIND, 4, $bTransition)
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmEnableBlurBehindWindow', 'hwnd', $hWnd, 'struct*', $tBLURBEHIND)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_DwmEnableComposition($bEnable)
If $bEnable Then $bEnable = 1
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmEnableComposition', 'uint', $bEnable)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_DwmExtendFrameIntoClientArea($hWnd, $tMARGINS = 0)
If Not IsDllStruct($tMARGINS) Then
$tMARGINS = _WinAPI_CreateMargins(-1, -1, -1, -1)
EndIf
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmExtendFrameIntoClientArea', 'hwnd', $hWnd, 'struct*', $tMARGINS)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_DwmGetColorizationColor()
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmGetColorizationColor', 'dword*', 0, 'bool*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return SetExtended($aCall[2], $aCall[1])
EndFunc
Func _WinAPI_DwmGetColorizationParameters()
Local $tDWMCP = DllStructCreate($tagDWM_COLORIZATION_PARAMETERS)
Local $aCall = DllCall('dwmapi.dll', 'uint', 127, 'struct*', $tDWMCP)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $tDWMCP
EndFunc
Func _WinAPI_DwmGetWindowAttribute($hWnd, $iAttribute)
Local $tagStruct
Switch $iAttribute
Case 5, 9
$tagStruct = $tagRECT
Case 1
$tagStruct = 'uint'
Case Else
Return SetError(11, 0, 0)
EndSwitch
Local $tData = DllStructCreate($tagStruct)
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmGetWindowAttribute', 'hwnd', $hWnd, 'dword', $iAttribute,  'struct*', $tData, 'dword', DllStructGetSize($tData))
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Switch $iAttribute
Case 1
Return DllStructGetData($tData, 1)
Case Else
Return $tData
EndSwitch
EndFunc
Func _WinAPI_DwmInvalidateIconicBitmaps($hWnd)
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmInvalidateIconicBitmaps', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_DwmIsCompositionEnabled()
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmIsCompositionEnabled', 'bool*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[1]
EndFunc
Func _WinAPI_DwmQueryThumbnailSourceSize($hThumbnail)
Local $tSIZE = DllStructCreate($tagSIZE)
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmQueryThumbnailSourceSize', 'handle', $hThumbnail, 'struct*', $tSIZE)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $tSIZE
EndFunc
Func _WinAPI_DwmRegisterThumbnail($hDestination, $hSource)
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmRegisterThumbnail', 'hwnd', $hDestination, 'hwnd', $hSource, 'handle*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _WinAPI_DwmSetColorizationParameters($tDWMCP)
Local $aCall = DllCall('dwmapi.dll', 'uint', 131, 'struct*', $tDWMCP, 'uint', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_DwmSetIconicLivePreviewBitmap($hWnd, $hBitmap, $bFrame = False, $tClient = 0)
Local $iFlags
If $bFrame Then
$iFlags = 0x00000001
Else
$iFlags = 0
EndIf
Local $aCall = DllCall('dwmapi.dll', 'uint', 'DwmSetIconicLivePreviewBitmap', 'hwnd', $hWnd, 'handle', $hBitmap,  'struct*', $tClient, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_DwmSetIconicThumbnail($hWnd, $hBitmap, $bFrame = False)
Local $iFlags
If $bFrame Then
$iFlags = 0x00000001
Else
$iFlags = 0
EndIf
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmSetIconicThumbnail', 'hwnd', $hWnd, 'handle', $hBitmap, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_DwmSetWindowAttribute($hWnd, $iAttribute, $iData)
Switch $iAttribute
Case 2, 3, 4, 6, 7, 8, 10, 11, 12
Case Else
Return SetError(1, 0, 0)
EndSwitch
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmSetWindowAttribute', 'hwnd', $hWnd, 'dword', $iAttribute,  'dword*', $iData, 'dword', 4)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_DwmUnregisterThumbnail($hThumbnail)
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmUnregisterThumbnail', 'handle', $hThumbnail)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_DwmUpdateThumbnailProperties($hThumbnail, $bVisible = True, $bClientAreaOnly = False, $iOpacity = 255, $tRectDest = 0, $tRectSrc = 0)
Local Const $tagDWM_THUMBNAIL_PROPERTIES = 'struct;dword dwFlags;int rcDestination[4];int rcSource[4];byte opacity;bool opacity;bool fSourceClientAreaOnly;endstruct'
Local $tTHUMBNAILPROPERTIES = DllStructCreate($tagDWM_THUMBNAIL_PROPERTIES)
Local $tSIZE, $iFlags = 0
If Not IsDllStruct($tRectDest) Then
$tSIZE = _WinAPI_DwmQueryThumbnailSourceSize($hThumbnail)
If @error Then
Return SetError(@error + 10, @extended, 0)
EndIf
$tRectDest = _WinAPI_CreateRectEx(0, 0, DllStructGetData($tSIZE, 1), DllStructGetData($tSIZE, 2))
EndIf
For $i = 1 To 4
DllStructSetData($tTHUMBNAILPROPERTIES, 2, DllStructGetData($tRectDest, $i), $i)
Next
If IsDllStruct($tRectSrc) Then
$iFlags += 2
For $i = 1 To 4
DllStructSetData($tTHUMBNAILPROPERTIES, 3, DllStructGetData($tRectSrc, $i), $i)
Next
EndIf
DllStructSetData($tTHUMBNAILPROPERTIES, 1, BitOR($iFlags, 0x1D))
DllStructSetData($tTHUMBNAILPROPERTIES, 4, $iOpacity)
DllStructSetData($tTHUMBNAILPROPERTIES, 5, $bVisible)
DllStructSetData($tTHUMBNAILPROPERTIES, 6, $bClientAreaOnly)
Local $aCall = DllCall('dwmapi.dll', 'long', 'DwmUpdateThumbnailProperties', 'handle', $hThumbnail,  'struct*', $tTHUMBNAILPROPERTIES)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_Ellipse($hDC, $tRECT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'Ellipse', 'handle', $hDC, 'int', DllStructGetData($tRECT, 1),  'int', DllStructGetData($tRECT, 2), 'int', DllStructGetData($tRECT, 3), 'int', DllStructGetData($tRECT, 4))
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_EndPaint($hWnd, ByRef $tPAINTSTRUCT)
Local $aCall = DllCall('user32.dll', 'bool', 'EndPaint', 'hwnd', $hWnd, 'struct*', $tPAINTSTRUCT)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_EndPath($hDC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'EndPath', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_EnumDisplayMonitors($hDC = 0, $tRECT = 0)
Local $hEnumProc = DllCallbackRegister('__EnumDisplayMonitorsProc', 'bool', 'handle;handle;ptr;lparam')
Dim $__g_vEnum[101][2] = [[0]]
Local $aCall = DllCall('user32.dll', 'bool', 'EnumDisplayMonitors', 'handle', $hDC, 'struct*', $tRECT,  'ptr', DllCallbackGetPtr($hEnumProc), 'lparam', 0)
If @error Or Not $aCall[0] Or Not $__g_vEnum[0][0] Then
$__g_vEnum = @error + 10
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_EnumDisplaySettings($sDevice, $iMode)
If Not StringStripWS($sDevice, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sDevice = Null
Local $tDEVMODE = DllStructCreate($tagDEVMODE_DISPLAY)
DllStructSetData($tDEVMODE, 'Size', DllStructGetSize($tDEVMODE))
DllStructSetData($tDEVMODE, 'DriverExtra', 0)
Local $aCall = DllCall('user32.dll', 'bool', 'EnumDisplaySettingsW', 'wstr', $sDevice, 'dword', $iMode,  'struct*', $tDEVMODE)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[5]
$aRet[0] = DllStructGetData($tDEVMODE, 'PelsWidth')
$aRet[1] = DllStructGetData($tDEVMODE, 'PelsHeight')
$aRet[2] = DllStructGetData($tDEVMODE, 'BitsPerPel')
$aRet[3] = DllStructGetData($tDEVMODE, 'DisplayFrequency')
$aRet[4] = DllStructGetData($tDEVMODE, 'DisplayFlags')
Return $aRet
EndFunc
Func _WinAPI_EnumFontFamilies($hDC = 0, $sFaceName = '', $iCharSet = 1, $iFontType = 0x07, $sPattern = '', $bExclude = False)
Local $tLOGFONT = DllStructCreate($tagLOGFONT)
Local $tPattern = DllStructCreate('uint;uint;ptr;wchar[' & (StringLen($sPattern) + 1) & ']')
DllStructSetData($tPattern, 1, $iFontType)
If Not $sPattern Then
DllStructSetData($tPattern, 2, 0)
DllStructSetData($tPattern, 3, 0)
Else
DllStructSetData($tPattern, 2, $bExclude)
DllStructSetData($tPattern, 3, DllStructGetPtr($tPattern, 4))
DllStructSetData($tPattern, 4, $sPattern)
EndIf
DllStructSetData($tLOGFONT, 9, $iCharSet)
DllStructSetData($tLOGFONT, 13, 0)
DllStructSetData($tLOGFONT, 14, StringLeft($sFaceName, 31))
Local $hCDC
If Not $hDC Then
$hCDC = _WinAPI_CreateCompatibleDC(0)
Else
$hCDC = $hDC
EndIf
Dim $__g_vEnum[101][8] = [[0]]
Local $hEnumProc = DllCallbackRegister('__EnumFontFamiliesProc', 'int', 'ptr;ptr;dword;PTR')
Local $aCall = DllCall('gdi32.dll', 'int', 'EnumFontFamiliesExW', 'handle', $hCDC, 'struct*', $tLOGFONT,  'ptr', DllCallbackGetPtr($hEnumProc), 'struct*', $tPattern, 'dword', 0)
If @error Or Not $aCall[0] Or Not $__g_vEnum[0][0] Then
$__g_vEnum = @error + 10
EndIf
DllCallbackFree($hEnumProc)
If Not $hDC Then
_WinAPI_DeleteDC($hCDC)
EndIf
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_EqualRect($tRECT1, $tRECT2)
Local $aCall = DllCall('user32.dll', 'bool', 'EqualRect', 'struct*', $tRECT1, 'struct*', $tRECT2)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_EqualRgn($hRgn1, $hRgn2)
Local $aCall = DllCall('gdi32.dll', 'bool', 'EqualRgn', 'handle', $hRgn1, 'handle', $hRgn2)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ExcludeClipRect($hDC, $tRECT)
Local $aCall = DllCall('gdi32.dll', 'int', 'ExcludeClipRect', 'handle', $hDC, 'int', DllStructGetData($tRECT, 1),  'int', DllStructGetData($tRECT, 2), 'int', DllStructGetData($tRECT, 3), 'int', DllStructGetData($tRECT, 4))
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ExtCreatePen($iPenStyle, $iWidth, $iBrushStyle, $iRGB, $iHatch = 0, $aUserStyle = 0, $iStart = 0, $iEnd = -1)
Local $iCount = 0, $tStyle = 0
If BitAND($iPenStyle, 0xFF) = 7 Then
If __CheckErrorArrayBounds($aUserStyle, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)
$tStyle = DllStructCreate('dword[' & ($iEnd - $iStart + 1) & ']')
For $i = $iStart To $iEnd
DllStructSetData($tStyle, 1, $aUserStyle[$i], $iCount + 1)
$iCount += 1
Next
EndIf
Local $tLOGBRUSH = DllStructCreate($tagLOGBRUSH)
DllStructSetData($tLOGBRUSH, 1, $iBrushStyle)
DllStructSetData($tLOGBRUSH, 2, __RGB($iRGB))
DllStructSetData($tLOGBRUSH, 3, $iHatch)
Local $aCall = DllCall('gdi32.dll', 'handle', 'ExtCreatePen', 'dword', $iPenStyle, 'dword', $iWidth, 'struct*', $tLOGBRUSH,  'dword', $iCount, 'struct*', $tStyle)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ExtCreateRegion($tRGNDATA, $tXFORM = 0)
Local $aCall = DllCall('gdi32.dll', 'handle', 'ExtCreateRegion', 'struct*', $tXFORM, 'dword', DllStructGetSize($tRGNDATA),  'struct*', $tRGNDATA)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ExtFloodFill($hDC, $iX, $iY, $iRGB, $iType = 0)
Local $aCall = DllCall('gdi32.dll', 'bool', 'ExtFloodFill', 'handle', $hDC, 'int', $iX, 'int', $iY, 'dword', __RGB($iRGB),  'uint', $iType)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ExtSelectClipRgn($hDC, $hRgn, $iMode = 5)
Local $aCall = DllCall('gdi32.dll', 'int', 'ExtSelectClipRgn', 'handle', $hDC, 'handle', $hRgn, 'int', $iMode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_FillPath($hDC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'FillPath', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_FillRgn($hDC, $hRgn, $hBrush)
Local $aCall = DllCall('gdi32.dll', 'bool', 'FillRgn', 'handle', $hDC, 'handle', $hRgn, 'handle', $hBrush)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_FlattenPath($hDC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'FlattenPath', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_FrameRgn($hDC, $hRgn, $hBrush, $iWidth, $iHeight)
Local $aCall = DllCall('gdi32.dll', 'bool', 'FrameRgn', 'handle', $hDC, 'handle', $hRgn, 'handle', $hBrush, 'int', $iWidth, 'int', $iHeight)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_GdiComment($hDC, $pBuffer, $iSize)
Local $aCall = DllCall('gdi32.dll', 'bool', 'GdiComment', 'handle', $hDC, 'uint', $iSize, 'struct*', $pBuffer)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_GetArcDirection($hDC)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetArcDirection', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
If ($aCall[0] < 1) Or ($aCall[0] > 2) Then Return SetError(10, $aCall[0], 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetBitmapBits($hBitmap, $iSize, $pBits)
Local $aCall = DllCall('gdi32.dll', 'long', 'GetBitmapBits', 'handle', $hBitmap, 'long', $iSize, 'struct*', $pBits)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetBitmapDimensionEx($hBitmap)
Local $tSIZE = DllStructCreate($tagSIZE)
Local $aCall = DllCall('gdi32.dll', 'bool', 'GetBitmapDimensionEx', 'handle', $hBitmap, 'struct*', $tSIZE)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tSIZE
EndFunc
Func _WinAPI_GetBkColor($hDC)
Local $aCall = DllCall('gdi32.dll', 'dword', 'GetBkColor', 'handle', $hDC)
If @error Or ($aCall[0] = -1) Then Return SetError(@error, @extended, -1)
Return __RGB($aCall[0])
EndFunc
Func _WinAPI_GetBoundsRect($hDC, $iFlags = 0)
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('gdi32.dll', 'uint', 'GetBoundsRect', 'handle', $hDC, 'struct*', $tRECT, 'uint', $iFlags)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return SetExtended($aCall[0], $tRECT)
EndFunc
Func _WinAPI_GetBrushOrg($hDC)
Local $tPOINT = DllStructCreate($tagPOINT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'GetBrushOrgEx', 'handle', $hDC, 'struct*', $tPOINT)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tPOINT
EndFunc
Func _WinAPI_GetBValue($iRGB)
Return BitShift(BitAND(__RGB($iRGB), 0xFF0000), 16)
EndFunc
Func _WinAPI_GetClipBox($hDC, ByRef $tRECT)
$tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetClipBox', 'handle', $hDC, 'struct*', $tRECT)
If @error Or Not $aCall[0] Then
$tRECT = 0
Return SetError(@error, @extended, 0)
EndIf
Return $aCall[0]
EndFunc
Func _WinAPI_GetClipRgn($hDC)
Local $hRgn = _WinAPI_CreateRectRgn(0, 0, 0, 0)
Local $iError = 0
Local $aCall = DllCall('gdi32.dll', 'int', 'GetClipRgn', 'handle', $hDC, 'handle', $hRgn)
If @error Or ($aCall[0] = -1) Then $iError = @error + 10
If $iError Or Not $aCall[0] Then
_WinAPI_DeleteObject($hRgn)
$hRgn = 0
EndIf
Return SetError($iError, 0, $hRgn)
EndFunc
Func _WinAPI_GetColorAdjustment($hDC)
Local $tAdjustment = DllStructCreate($tagCOLORADJUSTMENT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'GetColorAdjustment', 'handle', $hDC, 'struct*', $tAdjustment)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tAdjustment
EndFunc
Func _WinAPI_GetCurrentPosition($hDC)
Local $tPOINT = DllStructCreate($tagPOINT)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetCurrentPositionEx', 'handle', $hDC, 'struct*', $tPOINT)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tPOINT
EndFunc
Func _WinAPI_GetDeviceGammaRamp($hDC, ByRef $aRamp)
$aRamp = 0
Local $tData = DllStructCreate('word[256];word[256];word[256]')
Local $aCall = DllCall('gdi32.dll', 'bool', 'GetDeviceGammaRamp', 'handle', $hDC, 'struct*', $tData)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Dim $aRamp[256][3]
For $i = 0 To 2
For $j = 0 To 255
$aRamp[$j][$i] = DllStructGetData($tData, $i + 1, $j + 1)
Next
Next
Return 1
EndFunc
Func _WinAPI_GetDIBColorTable($hBitmap)
Local $hDC = _WinAPI_CreateCompatibleDC(0)
Local $hSv = _WinAPI_SelectObject($hDC, $hBitmap)
Local $tPeak = DllStructCreate('dword[256]')
Local $iError = 0
Local $aCall = DllCall('gdi32.dll', 'uint', 'GetDIBColorTable', 'handle', $hDC, 'uint', 0, 'uint', 256, 'struct*', $tPeak)
If @error Or Not $aCall[0] Then $iError = @error + 10
_WinAPI_SelectObject($hDC, $hSv)
_WinAPI_DeleteDC($hDC)
If $iError Then Return SetError($iError, 0, 0)
Local $tData = DllStructCreate('dword[' & $aCall[0] & ']')
If @error Then Return SetError(@error + 20, @extended, 0)
_WinAPI_MoveMemory($tData, $aCall[4], 4 * $aCall[0])
Return SetExtended($aCall[0], $tData)
EndFunc
Func _WinAPI_GetDIBits($hDC, $hBitmap, $iStartScan, $iScanLines, $pBits, $tBI, $iUsage)
Local $aCall = DllCall("gdi32.dll", "int", "GetDIBits", "handle", $hDC, "handle", $hBitmap, "uint", $iStartScan,  "uint", $iScanLines, "struct*", $pBits, "struct*", $tBI, "uint", $iUsage)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_GetEnhMetaFile($sFilePath)
Local $aCall = DllCall('gdi32.dll', 'handle', 'GetEnhMetaFileW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetEnhMetaFileBits($hEmf, ByRef $pBuffer)
Local $aCall = DllCall('gdi32.dll', 'uint', 'GetEnhMetaFileBits', 'handle', $hEmf, 'uint', 0, 'ptr', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 50, @extended, 0)
$pBuffer = __HeapReAlloc($pBuffer, $aCall[0], 1)
If @error Then Return SetError(@error, @extended, 0)
$aCall = DllCall('gdi32.dll', 'uint', 'GetEnhMetaFileBits', 'handle', $hEmf, 'uint', $aCall[0], 'ptr', $pBuffer)
If Not $aCall[0] Then Return SetError(60, 0, 0)
Return $aCall[2]
EndFunc
Func _WinAPI_GetEnhMetaFileDescription($hEmf)
Local $tData = DllStructCreate('wchar[4096]')
Local $aCall = DllCall('gdi32.dll', 'uint', 'GetEnhMetaFileDescriptionW', 'handle', $hEmf, 'uint', 4096, 'struct*', $tData)
If @error Or ($aCall[0] = 4294967295) Then Return SetError(@error + 20, $aCall[0], 0)
If Not $aCall[0] Then Return 0
Local $aData = _WinAPI_StructToArray($tData)
If @error Then Return SetError(@error, @extended, 0)
Local $aRet[2]
For $i = 0 To 1
If $aData[0] > $i Then
$aRet[$i] = $aData[$i + 1]
Else
$aRet[$i] = ''
EndIf
Next
Return $aRet
EndFunc
Func _WinAPI_GetEnhMetaFileDimension($hEmf)
Local $tENHMETAHEADER = _WinAPI_GetEnhMetaFileHeader($hEmf)
If @error Then Return SetError(@error, @extended, 0)
Local $tSIZE = DllStructCreate($tagSIZE)
DllStructSetData($tSIZE, 1, Round((DllStructGetData($tENHMETAHEADER, 'rcFrame', 3) - DllStructGetData($tENHMETAHEADER, 'rcFrame', 1)) * DllStructGetData($tENHMETAHEADER, 'Device', 1) / DllStructGetData($tENHMETAHEADER, 'Millimeters', 1) / 100))
DllStructSetData($tSIZE, 2, Round((DllStructGetData($tENHMETAHEADER, 'rcFrame', 4) - DllStructGetData($tENHMETAHEADER, 'rcFrame', 2)) * DllStructGetData($tENHMETAHEADER, 'Device', 2) / DllStructGetData($tENHMETAHEADER, 'Millimeters', 2) / 100))
Return $tSIZE
EndFunc
Func _WinAPI_GetEnhMetaFileHeader($hEmf)
Local $tENHMETAHEADER = DllStructCreate($tagENHMETAHEADER)
Local $aCall = DllCall('gdi32.dll', 'uint', 'GetEnhMetaFileHeader', 'handle', $hEmf,  'uint', DllStructGetSize($tENHMETAHEADER), 'struct*', $tENHMETAHEADER)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return SetExtended($aCall[0], $tENHMETAHEADER)
EndFunc
Func _WinAPI_GetFontName($sFaceName, $iStyle = 0, $iCharSet = 1)
If Not $sFaceName Then Return SetError(1, 0, '')
Local $iFlags = 0
If BitAND($iStyle, 0x01) Then
$iFlags += 0x00000020
EndIf
If BitAND($iStyle, 0x02) Then
$iFlags += 0x00000001
EndIf
If Not $iFlags Then
$iFlags = 0x00000040
EndIf
Local $tLOGFONT = DllStructCreate($tagLOGFONT)
DllStructSetData($tLOGFONT, 9, $iCharSet)
DllStructSetData($tLOGFONT, 13, 0)
DllStructSetData($tLOGFONT, 14, StringLeft($sFaceName, 31))
Local $tFN = DllStructCreate('dword;wchar[64]')
DllStructSetData($tFN, 1, $iFlags)
DllStructSetData($tFN, 2, '')
Local $hDC = _WinAPI_CreateCompatibleDC(0)
Local $hEnumProc = DllCallbackRegister('__EnumFontStylesProc', 'int', 'ptr;ptr;dword;lparam')
Local $sRet = ''
Local $aCall = DllCall('gdi32.dll', 'int', 'EnumFontFamiliesExW', 'handle', $hDC, 'struct*', $tLOGFONT,  'ptr', DllCallbackGetPtr($hEnumProc), 'struct*', $tFN, 'dword', 0)
If Not @error And Not $aCall[0] Then $sRet = DllStructGetData($tFN, 2)
DllCallbackFree($hEnumProc)
_WinAPI_DeleteDC($hDC)
If Not $sRet Then Return SetError(2, 0, '')
Return $sRet
EndFunc
Func _WinAPI_GetFontResourceInfo($sFont, $bForce = False, $iFlag = Default)
If $iFlag = Default Then
If $bForce Then
If Not _WinAPI_AddFontResourceEx($sFont, $FR_NOT_ENUM) Then Return SetError(@error + 20, @extended, '')
EndIf
Local $iError = 0
Local $aRet = DllCall('gdi32.dll', 'bool', 'GetFontResourceInfoW', 'wstr', $sFont, 'dword*', 4096, 'wstr', '', 'dword', 0x01)
If @error Or Not $aRet[0] Then $iError = @error + 10
If $bForce Then
_WinAPI_RemoveFontResourceEx($sFont, $FR_NOT_ENUM)
EndIf
If $iError Then Return SetError($iError, 0, '')
Return $aRet[3]
Else
If Not FileExists($sFont) Then
$sFont = RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders", "Fonts") & "\" & $sFont
If Not FileExists($sFont) Then Return SetError(31, 0, "")
EndIf
Local Const $hFile = _WinAPI_CreateFile($sFont, 2, 2, 2)
If Not $hFile Then Return SetError(32, _WinAPI_GetLastError(), "")
Local Const $iFile = FileGetSize($sFont)
Local Const $tBuffer = DllStructCreate("byte[" & $iFile + 1 & "]")
Local Const $pFile = DllStructGetPtr($tBuffer)
Local $iRead
_WinAPI_ReadFile($hFile, $pFile, $iFile, $iRead)
_WinAPI_CloseHandle($hFile)
Local $sTTFName = _WinAPI_GetFontMemoryResourceInfo($pFile, $iFlag)
If @error Then
If @error = 1 Then
$sTTFName = _WinAPI_GetFontResourceInfo($sFont, True)
Return SetError(@error, @extended, $sTTFName)
EndIf
Return SetError(33, @error, "")
EndIf
Return $sTTFName
EndIf
EndFunc
Func _WinAPI_GetFontMemoryResourceInfo($pMemory, $iFlag = 1)
Local Const $tagTT_OFFSET_TABLE = "USHORT uMajorVersion;USHORT uMinorVersion;USHORT uNumOfTables;USHORT uSearchRange;USHORT uEntrySelector;USHORT uRangeShift"
Local Const $tagTT_TABLE_DIRECTORY = "char szTag[4];ULONG uCheckSum;ULONG uOffset;ULONG uLength"
Local Const $tagTT_NAME_TABLE_HEADER = "USHORT uFSelector;USHORT uNRCount;USHORT uStorageOffset"
Local Const $tagTT_NAME_RECORD = "USHORT uPlatformID;USHORT uEncodingID;USHORT uLanguageID;USHORT uNameID;USHORT uStringLength;USHORT uStringOffset"
Local $tTTOffsetTable = DllStructCreate($tagTT_OFFSET_TABLE, $pMemory)
Local $iNumOfTables = _WinAPI_SwapWord(DllStructGetData($tTTOffsetTable, "uNumOfTables"))
If Not (_WinAPI_SwapWord(DllStructGetData($tTTOffsetTable, "uMajorVersion")) = 1 And  _WinAPI_SwapWord(DllStructGetData($tTTOffsetTable, "uMinorVersion")) = 0) Then Return SetError(1, 0, "")
Local $iTblDirSize = DllStructGetSize(DllStructCreate($tagTT_TABLE_DIRECTORY))
Local $bFound = False, $iOffset, $tTblDir
For $i = 0 To $iNumOfTables - 1
$tTblDir = DllStructCreate($tagTT_TABLE_DIRECTORY, $pMemory + DllStructGetSize($tTTOffsetTable) + $i * $iTblDirSize)
If StringLeft(DllStructGetData($tTblDir, "szTag"), 4) = "name" Then
$bFound = True
$iOffset = _WinAPI_SwapDWord(DllStructGetData($tTblDir, "uOffset"))
ExitLoop
EndIf
Next
If Not $bFound Then Return SetError(2, 0, "")
Local $tNTHeader = DllStructCreate($tagTT_NAME_TABLE_HEADER, $pMemory + $iOffset)
Local $iNTHeaderSize = DllStructGetSize($tNTHeader)
Local $iNRCount = _WinAPI_SwapWord(DllStructGetData($tNTHeader, "uNRCount"))
Local $iStorageOffset = _WinAPI_SwapWord(DllStructGetData($tNTHeader, "uStorageOffset"))
Local $iTTRecordSize = DllStructGetSize(DllStructCreate($tagTT_NAME_RECORD))
Local $tResult, $sResult, $iStringLength = 0, $iStringOffset, $iEncodingID, $tTTRecord
For $i = 0 To $iNRCount - 1
$tTTRecord = DllStructCreate($tagTT_NAME_RECORD, $pMemory + $iOffset + $iNTHeaderSize + $i * $iTTRecordSize)
If @error Then ContinueLoop
If _WinAPI_SwapWord($tTTRecord.uNameID) = $iFlag Then
$iStringLength = _WinAPI_SwapWord(DllStructGetData($tTTRecord, "uStringLength"))
$iStringOffset = _WinAPI_SwapWord(DllStructGetData($tTTRecord, "uStringOffset"))
$iEncodingID = _WinAPI_SwapWord(DllStructGetData($tTTRecord, "uEncodingID"))
Local $sWchar = "char"
If $iEncodingID = 1 Then
$sWchar = "word"
$iStringLength /= 2
EndIf
If Not $iStringLength Then
$sResult = ""
ContinueLoop
EndIf
$tResult = DllStructCreate($sWchar & " szTTFName[" & $iStringLength & "]", $pMemory + $iOffset + $iStringOffset + $iStorageOffset)
If $iEncodingID = 1 Then
$sResult = ""
For $j = 1 To $iStringLength
$sResult &= ChrW(_WinAPI_SwapWord(DllStructGetData($tResult, 1, $j)))
Next
Else
$sResult = $tResult.szTTFName
EndIf
If StringLen($sResult) > 0 Then ExitLoop
EndIf
Next
Return $sResult
EndFunc
Func _WinAPI_GetGlyphOutline($hDC, $sChar, $iFormat, ByRef $pBuffer, $tMAT2 = 0)
Local $tGM = DllStructCreate($tagGLYPHMETRICS)
Local $aCall, $iLength = 0
If Not IsDllStruct($tMAT2) Then
$tMAT2 = DllStructCreate('short[8]')
DllStructSetData($tMAT2, 1, 1, 2)
DllStructSetData($tMAT2, 1, 1, 8)
EndIf
If $iFormat Then
$aCall = DllCall('gdi32.dll', 'dword', 'GetGlyphOutlineW', 'handle', $hDC, 'uint', AscW($sChar), 'uint', $iFormat,  'struct*', $tGM, 'dword', 0, 'ptr', 0, 'struct*', $tMAT2)
If @error Or ($aCall[0] = 4294967295) Then Return SetError(@error + 10, @extended, 0)
$iLength = $aCall[0]
$pBuffer = __HeapReAlloc($pBuffer, $iLength, 1)
If @error Then Return SetError(@error + 20, @extended, 0)
EndIf
$aCall = DllCall('gdi32.dll', 'dword', 'GetGlyphOutlineW', 'handle', $hDC, 'uint', AscW($sChar), 'uint', $iFormat,  'struct*', $tGM, 'dword', $iLength, 'ptr', $pBuffer, 'struct*', $tMAT2)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] = 4294967295 Then Return SetError(10, -1, 0)
Return SetExtended($iLength, $tGM)
EndFunc
Func _WinAPI_GetGraphicsMode($hDC)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetGraphicsMode', 'handle', $hDC)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetGValue($iRGB)
Return BitShift(BitAND(__RGB($iRGB), 0x00FF00), 8)
EndFunc
Func _WinAPI_GetMapMode($hDC)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetMapMode', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetMonitorInfo($hMonitor)
Local $tMIEX = DllStructCreate('dword;long[4];long[4];dword;wchar[32]')
DllStructSetData($tMIEX, 1, DllStructGetSize($tMIEX))
Local $aCall = DllCall('user32.dll', 'bool', 'GetMonitorInfoW', 'handle', $hMonitor, 'struct*', $tMIEX)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[4]
For $i = 0 To 1
$aRet[$i] = DllStructCreate($tagRECT)
_WinAPI_MoveMemory($aRet[$i], DllStructGetPtr($tMIEX, $i + 2), 16)
Next
$aRet[3] = DllStructGetData($tMIEX, 5)
Switch DllStructGetData($tMIEX, 4)
Case 1
$aRet[2] = 1
Case Else
$aRet[2] = 0
EndSwitch
Return $aRet
EndFunc
Func _WinAPI_GetOutlineTextMetrics($hDC)
Local $aCall = DllCall('gdi32.dll', 'uint', 'GetOutlineTextMetricsW', 'handle', $hDC, 'uint', 0, 'ptr', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $tData = DllStructCreate('byte[' & $aCall[0] & ']')
Local $tOLTM = DllStructCreate($tagOUTLINETEXTMETRIC, DllStructGetPtr($tData))
$aCall = DllCall('gdi32.dll', 'uint', 'GetOutlineTextMetricsW', 'handle', $hDC, 'uint', $aCall[0], 'struct*', $tData)
If Not $aCall[0] Then Return SetError(20, 0, 0)
Return $tOLTM
EndFunc
Func _WinAPI_GetPixel($hDC, $iX, $iY)
Local $aCall = DllCall('gdi32.dll', 'dword', 'GetPixel', 'handle', $hDC, 'int', $iX, 'int', $iY)
If @error Or ($aCall[0] = 4294967295) Then Return SetError(@error, @extended, -1)
Return __RGB($aCall[0])
EndFunc
Func _WinAPI_GetPolyFillMode($hDC)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetPolyFillMode', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetPosFromRect($tRECT)
Local $aRet[4]
For $i = 0 To 3
$aRet[$i] = DllStructGetData($tRECT, $i + 1)
If @error Then Return SetError(@error, @extended, 0)
Next
For $i = 2 To 3
$aRet[$i] -= $aRet[$i - 2]
Next
Return $aRet
EndFunc
Func _WinAPI_GetRegionData($hRgn, ByRef $tRGNDATA)
Local $aCall = DllCall('gdi32.dll', 'dword', 'GetRegionData', 'handle', $hRgn, 'dword', 0, 'ptr', 0)
If @error Or Not $aCall[0] Then
$tRGNDATA = 0
Return SetError(@error, @extended, False)
EndIf
$tRGNDATA = DllStructCreate($tagRGNDATAHEADER)
Local $iRectSize = $aCall[0] - DllStructGetSize($tRGNDATA)
If $iRectSize > 0 Then $tRGNDATA = DllStructCreate($tagRGNDATAHEADER & ';byte[' & $iRectSize & ']')
$aCall = DllCall('gdi32.dll', 'dword', 'GetRegionData', 'handle', $hRgn, 'dword', $aCall[0], 'struct*', $tRGNDATA)
If Not $aCall[0] Then $tRGNDATA = 0
Return $aCall[0]
EndFunc
Func _WinAPI_GetRgnBox($hRgn, ByRef $tRECT)
$tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetRgnBox', 'handle', $hRgn, 'struct*', $tRECT)
If @error Or Not $aCall[0] Then
$tRECT = 0
Return SetError(@error, @extended, 0)
EndIf
Return $aCall[0]
EndFunc
Func _WinAPI_GetROP2($hDC)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetROP2', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetRValue($iRGB)
Return BitAND(__RGB($iRGB), 0x0000FF)
EndFunc
Func _WinAPI_GetStretchBltMode($hDC)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetStretchBltMode', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetTabbedTextExtent($hDC, $sText, $aTab = 0, $iStart = 0, $iEnd = -1)
Local $iTab, $iCount
If Not IsArray($aTab) Then
If $aTab Then
$iTab = $aTab
Dim $aTab[1] = [$iTab]
$iStart = 0
$iEnd = 0
$iCount = 1
Else
$iCount = 0
EndIf
Else
$iCount = 1
EndIf
Local $tTab = 0
If $iCount Then
If __CheckErrorArrayBounds($aTab, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)
$iCount = $iEnd - $iStart + 1
$tTab = DllStructCreate('uint[' & $iCount & ']')
$iTab = 1
For $i = $iStart To $iEnd
DllStructSetData($tTab, 1, $aTab[$i], $iTab)
$iTab += 1
Next
EndIf
Local $aCall = DllCall('user32.dll', 'dword', 'GetTabbedTextExtentW', 'handle', $hDC, 'wstr', $sText, 'int', StringLen($sText), 'int', $iCount, 'struct*', $tTab)
If @error Or Not $aCall[0] Then Return SetError(@error + 20, @extended, 0)
Return _WinAPI_CreateSize(_WinAPI_LoWord($aCall[0]), _WinAPI_HiWord($aCall[0]))
EndFunc
Func _WinAPI_GetTextAlign($hDC)
Local $aCall = DllCall('gdi32.dll', 'uint', 'GetTextAlign', 'handle', $hDC)
If @error Or ($aCall[0] = 4294967295) Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_GetTextCharacterExtra($hDC)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetTextCharacterExtra', 'handle', $hDC)
If @error Or ($aCall[0] = 0x8000000) Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_GetTextFace($hDC)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetTextFaceW', 'handle', $hDC, 'int', 2048, 'wstr', '')
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return $aCall[3]
EndFunc
Func _WinAPI_GetUDFColorMode()
Return Number($__g_iRGBMode)
EndFunc
Func _WinAPI_GetUpdateRect($hWnd, $bErase = True)
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'GetUpdateRect', 'hwnd', $hWnd, 'struct*', $tRECT, 'bool', $bErase)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tRECT
EndFunc
Func _WinAPI_GetUpdateRgn($hWnd, $hRgn, $bErase = True)
Local $aCall = DllCall('user32.dll', 'int', 'GetUpdateRgn', 'hwnd', $hWnd, 'handle', $hRgn, 'bool', $bErase)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetWindowExt($hDC)
Local $tSIZE = DllStructCreate($tagSIZE)
Local $aCall = DllCall('gdi32.dll', 'bool', 'GetWindowExtEx', 'handle', $hDC, 'struct*', $tSIZE)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tSIZE
EndFunc
Func _WinAPI_GetWindowOrg($hDC)
Local $tPOINT = DllStructCreate($tagPOINT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'GetWindowOrgEx', 'handle', $hDC, 'struct*', $tPOINT)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tPOINT
EndFunc
Func _WinAPI_GetWindowRgnBox($hWnd, ByRef $tRECT)
$tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('gdi32.dll', 'int', 'GetWindowRgnBox', 'hwnd', $hWnd, 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetWorldTransform($hDC)
Local $tXFORM = DllStructCreate($tagXFORM)
Local $aCall = DllCall('gdi32.dll', 'bool', 'GetWorldTransform', 'handle', $hDC, 'struct*', $tXFORM)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tXFORM
EndFunc
Func _WinAPI_GradientFill($hDC, Const ByRef $aVertex, $iStart = 0, $iEnd = -1, $bRotate = False)
If __CheckErrorArrayBounds($aVertex, $iStart, $iEnd, 2) Then Return SetError(@error + 10, @extended, 0)
If UBound($aVertex, $UBOUND_COLUMNS) < 3 Then Return SetError(13, 0, 0)
Local $iPoint = $iEnd - $iStart + 1
If $iPoint > 3 Then
$iEnd = $iStart + 2
$iPoint = 3
EndIf
Local $iMode
Switch $iPoint
Case 2
$iMode = Number(Not $bRotate)
Case 3
$iMode = 2
Case Else
Return SetError(15, 0, 0)
EndSwitch
Local $tagStruct = ''
For $i = $iStart To $iEnd
$tagStruct &= 'ushort[8];'
Next
Local $tVertex = DllStructCreate($tagStruct)
Local $iCount = 1
Local $tGradient = DllStructCreate('ulong[' & $iPoint & ']')
For $i = $iStart To $iEnd
DllStructSetData($tGradient, 1, $iCount - 1, $iCount)
DllStructSetData($tVertex, $iCount, _WinAPI_LoWord($aVertex[$i][0]), 1)
DllStructSetData($tVertex, $iCount, _WinAPI_HiWord($aVertex[$i][0]), 2)
DllStructSetData($tVertex, $iCount, _WinAPI_LoWord($aVertex[$i][1]), 3)
DllStructSetData($tVertex, $iCount, _WinAPI_HiWord($aVertex[$i][1]), 4)
DllStructSetData($tVertex, $iCount, BitShift(_WinAPI_GetRValue($aVertex[$i][2]), -8), 5)
DllStructSetData($tVertex, $iCount, BitShift(_WinAPI_GetGValue($aVertex[$i][2]), -8), 6)
DllStructSetData($tVertex, $iCount, BitShift(_WinAPI_GetBValue($aVertex[$i][2]), -8), 7)
DllStructSetData($tVertex, $iCount, 0, 8)
$iCount += 1
Next
Local $aCall = DllCall('gdi32.dll', 'bool', 'GdiGradientFill', 'handle', $hDC, 'struct*', $tVertex, 'ulong', $iPoint,  'struct*', $tGradient, 'ulong', 1, 'ulong', $iMode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_InflateRect(ByRef $tRECT, $iDX, $iDY)
Local $aCall = DllCall('user32.dll', 'bool', 'InflateRect', 'struct*', $tRECT, 'int', $iDX, 'int', $iDY)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IntersectClipRect($hDC, $tRECT)
Local $aCall = DllCall('gdi32.dll', 'int', 'IntersectClipRect', 'handle', $hDC, 'int', DllStructGetData($tRECT, 1),  'int', DllStructGetData($tRECT, 2), 'int', DllStructGetData($tRECT, 3),  'int', DllStructGetData($tRECT, 4))
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_IntersectRect($tRECT1, $tRECT2)
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'IntersectRect', 'struct*', $tRECT, 'struct*', $tRECT1, 'struct*', $tRECT2)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tRECT
EndFunc
Func _WinAPI_InvalidateRgn($hWnd, $hRgn = 0, $bErase = True)
Local $aCall = DllCall('user32.dll', 'bool', 'InvalidateRgn', 'hwnd', $hWnd, 'handle', $hRgn, 'bool', $bErase)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_InvertANDBitmap($hBitmap, $bDelete = False)
Local $tBITMAP = DllStructCreate($tagBITMAP)
If Not _WinAPI_GetObject($hBitmap, DllStructGetSize($tBITMAP), $tBITMAP) Or (DllStructGetData($tBITMAP, 'bmBitsPixel') <> 1) Then
Return SetError(@error + 10, @extended, 0)
EndIf
Local $hResult = _WinAPI_CreateDIB(DllStructGetData($tBITMAP, 'bmWidth'), DllStructGetData($tBITMAP, 'bmHeight'), 1)
If Not $hResult Then Return SetError(@error, @extended, 0)
Local $hSrcDC = _WinAPI_CreateCompatibleDC(0)
Local $hSrcSv = _WinAPI_SelectObject($hSrcDC, $hBitmap)
Local $hDstDC = _WinAPI_CreateCompatibleDC(0)
Local $hDstSv = _WinAPI_SelectObject($hDstDC, $hResult)
_WinAPI_BitBlt($hDstDC, 0, 0, DllStructGetData($tBITMAP, 'bmWidth'), DllStructGetData($tBITMAP, 'bmHeight'), $hSrcDC, 0, 0, 0x00330008)
_WinAPI_SelectObject($hSrcDC, $hSrcSv)
_WinAPI_DeleteDC($hSrcDC)
_WinAPI_SelectObject($hDstDC, $hDstSv)
_WinAPI_DeleteDC($hDstDC)
If $bDelete Then
_WinAPI_DeleteObject($hBitmap)
EndIf
Return $hResult
EndFunc
Func _WinAPI_InvertColor($iColor)
If $iColor = -1 Then Return 0
Return 0xFFFFFF - BitAND($iColor, 0xFFFFFF)
EndFunc
Func _WinAPI_InvertRect($hDC, ByRef $tRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'InvertRect', 'handle', $hDC, 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_InvertRgn($hDC, $hRgn)
Local $aCall = DllCall('gdi32.dll', 'bool', 'InvertRgn', 'handle', $hDC, 'handle', $hRgn)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_IsRectEmpty(ByRef $tRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'IsRectEmpty', 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_LineDDA($iX1, $iY1, $iX2, $iY2, $pLineProc, $pData = 0)
Local $aCall = DllCall('gdi32.dll', 'bool', 'LineDDA', 'int', $iX1, 'int', $iY1, 'int', $iX2, 'int', $iY2, 'ptr', $pLineProc,  'lparam', $pData)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_LineTo($hDC, $iX, $iY)
Local $aCall = DllCall("gdi32.dll", "bool", "LineTo", "handle", $hDC, "int", $iX, "int", $iY)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_LockWindowUpdate($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'LockWindowUpdate', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_LPtoDP($hDC, ByRef $tPOINT, $iCount = 1)
Local $aCall = DllCall('gdi32.dll', 'bool', 'LPtoDP', 'handle', $hDC, 'struct*', $tPOINT, 'int', $iCount)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_MaskBlt($hDestDC, $iXDest, $iYDest, $iWidth, $iHeight, $hSrcDC, $iXSrc, $iYSrc, $hMask, $iXMask, $iYMask, $iRop)
Local $aCall = DllCall('gdi32.dll', 'bool', 'MaskBlt', 'handle', $hDestDC, 'int', $iXDest, 'int', $iYDest,  'int', $iWidth, 'int', $iHeight, 'hwnd', $hSrcDC, 'int', $iXSrc, 'int', $iYSrc, 'handle', $hMask,  'int', $iXMask, 'int', $iYMask, 'dword', $iRop)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ModifyWorldTransform($hDC, ByRef $tXFORM, $iMode)
Local $aCall = DllCall('gdi32.dll', 'bool', 'ModifyWorldTransform', 'handle', $hDC, 'struct*', $tXFORM, 'dword', $iMode)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_MonitorFromPoint(ByRef $tPOINT, $iFlag = 1)
If DllStructGetSize($tPOINT) <> 8 Then Return SetError(@error + 10, @extended, 0)
Local $aCall = DllCall('user32.dll', 'handle', 'MonitorFromPoint', 'struct', $tPOINT, 'dword', $iFlag)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_MonitorFromRect(ByRef $tRECT, $iFlag = 1)
Local $aCall = DllCall('user32.dll', 'ptr', 'MonitorFromRect', 'struct*', $tRECT, 'dword', $iFlag)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_MonitorFromWindow($hWnd, $iFlag = 1)
Local $aCall = DllCall('user32.dll', 'handle', 'MonitorFromWindow', 'hwnd', $hWnd, 'dword', $iFlag)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_MoveTo($hDC, $iX, $iY)
Local $aCall = DllCall("gdi32.dll", "bool", "MoveToEx", "handle", $hDC, "int", $iX, "int", $iY, "ptr", 0)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_MoveToEx($hDC, $iX, $iY)
Local $tPOINT = DllStructCreate($tagPOINT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'MoveToEx', 'handle', $hDC, 'int', $iX, 'int', $iY, 'struct*', $tPOINT)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tPOINT
EndFunc
Func _WinAPI_OffsetClipRgn($hDC, $iXOffset, $iYOffset)
Local $aCall = DllCall('gdi32.dll', 'int', 'OffsetClipRgn', 'handle', $hDC, 'int', $iXOffset, 'int', $iYOffset)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_OffsetPoints(ByRef $aPoint, $iXOffset, $iYOffset, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aPoint, $iStart, $iEnd, 2) Then Return SetError(@error + 10, @extended, 0)
If UBound($aPoint, $UBOUND_COLUMNS) < 2 Then Return SetError(13, 0, 0)
For $i = $iStart To $iEnd
$aPoint[$i][0] += $iXOffset
$aPoint[$i][1] += $iYOffset
Next
Return 1
EndFunc
Func _WinAPI_OffsetRect(ByRef $tRECT, $iDX, $iDY)
Local $aCall = DllCall('user32.dll', 'bool', 'OffsetRect', 'struct*', $tRECT, 'int', $iDX, 'int', $iDY)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_OffsetRgn($hRgn, $iXOffset, $iYOffset)
Local $aCall = DllCall('gdi32.dll', 'int', 'OffsetRgn', 'handle', $hRgn, 'int', $iXOffset, 'int', $iYOffset)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_OffsetWindowOrg($hDC, $iXOffset, $iYOffset)
$__g_vExt = DllStructCreate($tagPOINT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'OffsetWindowOrgEx', 'handle', $hDC, 'int', $iXOffset, 'int', $iYOffset,  'struct*', $__g_vExt)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PaintDesktop($hDC)
Local $aCall = DllCall('user32.dll', 'bool', 'PaintDesktop', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PaintRgn($hDC, $hRgn)
Local $aCall = DllCall('gdi32.dll', 'bool', 'PaintRgn', 'handle', $hDC, 'handle', $hRgn)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PatBlt($hDC, $iX, $iY, $iWidth, $iHeight, $iRop)
Local $aCall = DllCall('gdi32.dll', 'bool', 'PatBlt', 'handle', $hDC, 'int', $iX, 'int', $iY, 'int', $iWidth, 'int', $iHeight,  'dword', $iRop)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathToRegion($hDC)
Local $aCall = DllCall('gdi32.dll', 'handle', 'PathToRegion', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_PlayEnhMetaFile($hDC, $hEmf, ByRef $tRECT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'PlayEnhMetaFile', 'handle', $hDC, 'handle', $hEmf, 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PlgBlt($hDestDC, Const ByRef $aPoint, $hSrcDC, $iXSrc, $iYSrc, $iWidth, $iHeight, $hMask = 0, $iXMask = 0, $iYMask = 0)
If (UBound($aPoint) < 3) Or (UBound($aPoint, $UBOUND_COLUMNS) < 2) Then Return SetError(12, 0, False)
Local $tPoints = DllStructCreate('long[2];long[2];long[2]')
For $i = 0 To 2
For $j = 0 To 1
DllStructSetData($tPoints, $i + 1, $aPoint[$i][$j], $j + 1)
Next
Next
Local $aCall = DllCall('gdi32.dll', 'bool', 'PlgBlt', 'handle', $hDestDC, 'struct*', $tPoints, 'handle', $hSrcDC,  'int', $iXSrc, 'int', $iYSrc, 'int', $iWidth, 'int', $iHeight, 'handle', $hMask,  'int', $iXMask, 'int', $iYMask)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PolyBezier($hDC, Const ByRef $aPoint, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aPoint, $iStart, $iEnd, 2, 2) Then Return SetError(@error + 10, @extended, False)
Local $iPoint = 1 + 3 * Floor(($iEnd - $iStart) / 3)
If $iPoint < 1 Then Return SetError(15, 0, False)
$iEnd = $iStart + $iPoint - 1
Local $tagStruct = ''
For $i = $iStart To $iEnd
$tagStruct &= 'long[2];'
Next
Local $tPOINT = DllStructCreate($tagStruct)
Local $iCount = 0
For $i = $iStart To $iEnd
$iCount += 1
For $j = 0 To 1
DllStructSetData($tPOINT, $iCount, $aPoint[$i][$j], $j + 1)
Next
Next
Local $aCall = DllCall('gdi32.dll', 'bool', 'PolyBezier', 'handle', $hDC, 'struct*', $tPOINT, 'dword', $iPoint)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PolyBezierTo($hDC, Const ByRef $aPoint, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aPoint, $iStart, $iEnd, 2, 2) Then Return SetError(@error + 10, @extended, False)
Local $iPoint = 3 * Floor(($iEnd - $iStart + 1) / 3)
If $iPoint < 3 Then Return SetError(15, 0, False)
$iEnd = $iStart + $iPoint - 1
Local $tagStruct = ''
For $i = $iStart To $iEnd
$tagStruct &= 'long[2];'
Next
Local $tPOINT = DllStructCreate($tagStruct)
Local $iCount = 0
For $i = $iStart To $iEnd
$iCount += 1
For $j = 0 To 1
DllStructSetData($tPOINT, $iCount, $aPoint[$i][$j], $j + 1)
Next
Next
Local $aCall = DllCall('gdi32.dll', 'bool', 'PolyBezierTo', 'handle', $hDC, 'struct*', $tPOINT, 'dword', $iPoint)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PolyDraw($hDC, Const ByRef $aPoint, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aPoint, $iStart, $iEnd, 2) Then Return SetError(@error + 10, @extended, 0)
If UBound($aPoint, $UBOUND_COLUMNS) < 3 Then Return SetError(13, 0, False)
Local $iPoint = $iEnd - $iStart + 1
Local $tagStruct = ''
For $i = $iStart To $iEnd
$tagStruct &= 'long[2];'
Next
Local $tPOINT = DllStructCreate($tagStruct)
Local $tTypes = DllStructCreate('byte[' & $iPoint & ']')
Local $iCount = 0
For $i = $iStart To $iEnd
$iCount += 1
For $j = 0 To 1
DllStructSetData($tPOINT, $iCount, $aPoint[$i][$j], $j + 1)
Next
DllStructSetData($tTypes, 1, $aPoint[$i][2], $iCount)
Next
Local $aCall = DllCall('gdi32.dll', 'bool', 'PolyDraw', 'handle', $hDC, 'struct*', $tPOINT, 'struct*', $tTypes, 'dword', $iPoint)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_Polygon($hDC, Const ByRef $aPoint, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aPoint, $iStart, $iEnd, 2, 2) Then Return SetError(@error + 10, @extended, False)
Local $tagStruct = ''
For $i = $iStart To $iEnd
$tagStruct &= 'int[2];'
Next
Local $tData = DllStructCreate($tagStruct)
Local $iCount = 1
For $i = $iStart To $iEnd
For $j = 0 To 1
DllStructSetData($tData, $iCount, $aPoint[$i][$j], $j + 1)
Next
$iCount += 1
Next
Local $aCall = DllCall('gdi32.dll', 'bool', 'Polygon', 'handle', $hDC, 'struct*', $tData, 'int', $iCount - 1)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PtInRectEx($iX, $iY, $iLeft, $iTop, $iRight, $iBottom)
Local $tRECT = _WinAPI_CreateRect($iLeft, $iTop, $iRight, $iBottom)
Local $tPOINT = _WinAPI_CreatePoint($iX, $iY)
Local $aCall = DllCall('user32.dll', 'bool', 'PtInRect', 'struct*', $tRECT, 'struct', $tPOINT)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PtInRegion($hRgn, $iX, $iY)
Local $aCall = DllCall('gdi32.dll', 'bool', 'PtInRegion', 'handle', $hRgn, 'int', $iX, 'int', $iY)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PtVisible($hDC, $iX, $iY)
Local $aCall = DllCall('gdi32.dll', 'bool', 'PtVisible', 'handle', $hDC, 'int', $iX, 'int', $iY)
If @error Then Return SetError(@error + 10, @extended, 0)
If $aCall[0] = -1 Then Return SetError(10, $aCall[0], 0)
Return $aCall[0]
EndFunc
Func _WinAPI_RadialGradientFill($hDC, $iX, $iY, $iRadius, $iRGB1, $iRGB2, $fAngleStart = 0, $fAngleEnd = 360, $fStep = 5)
If Abs($fAngleStart) > 360 Then
$fAngleStart = Mod($fAngleStart, 360)
EndIf
If Abs($fAngleEnd) > 360 Then
$fAngleEnd = Mod($fAngleEnd, 360)
EndIf
If ($fAngleStart < 0) Or ($fAngleEnd < 0) Then
$fAngleStart += 360
$fAngleEnd += 360
EndIf
If $fAngleStart > $fAngleEnd Then
Local $fVal = $fAngleStart
$fAngleStart = $fAngleEnd
$fAngleEnd = $fVal
EndIf
If $fStep < 1 Then
$fStep = 1
EndIf
Local $fKi = ATan(1) / 45
Local $iXp = Round($iX + $iRadius * Cos($fKi * $fAngleStart))
Local $iYp = Round($iY + $iRadius * Sin($fKi * $fAngleStart))
Local $iXn, $iYn, $fAn = $fAngleStart
Local $aVertex[3][3]
While $fAn < $fAngleEnd
$fAn += $fStep
If $fAn > $fAngleEnd Then
$fAn = $fAngleEnd
EndIf
$iXn = Round($iX + $iRadius * Cos($fKi * $fAn))
$iYn = Round($iY + $iRadius * Sin($fKi * $fAn))
$aVertex[0][0] = $iX
$aVertex[0][1] = $iY
$aVertex[0][2] = $iRGB1
$aVertex[1][0] = $iXp
$aVertex[1][1] = $iYp
$aVertex[1][2] = $iRGB2
$aVertex[2][0] = $iXn
$aVertex[2][1] = $iYn
$aVertex[2][2] = $iRGB2
If Not _WinAPI_GradientFill($hDC, $aVertex, 0, 2) Then
Return SetError(@error, @extended, 0)
EndIf
$iXp = $iXn
$iYp = $iYn
WEnd
Return 1
EndFunc
Func _WinAPI_Rectangle($hDC, $tRECT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'Rectangle', 'handle', $hDC, 'int', DllStructGetData($tRECT, 1),  'int', DllStructGetData($tRECT, 2), 'int', DllStructGetData($tRECT, 3), 'int', DllStructGetData($tRECT, 4))
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_RectInRegion($hRgn, $tRECT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'RectInRegion', 'handle', $hRgn, 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_RectIsEmpty(ByRef $tRECT)
Return (DllStructGetData($tRECT, "Left") = 0) And (DllStructGetData($tRECT, "Top") = 0) And  (DllStructGetData($tRECT, "Right") = 0) And (DllStructGetData($tRECT, "Bottom") = 0)
EndFunc
Func _WinAPI_RectVisible($hDC, $tRECT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'RectVisible', 'handle', $hDC, 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, 0)
Switch $aCall[0]
Case 0, 1, 2
Case Else
Return SetError(10, $aCall[0], 0)
EndSwitch
Return $aCall[0]
EndFunc
Func _WinAPI_RemoveFontMemResourceEx($hFont)
Local $aCall = DllCall('gdi32.dll', 'bool', 'RemoveFontMemResourceEx', 'handle', $hFont)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_RemoveFontResourceEx($sFont, $iFlag = 0, $bNotify = False)
Local $aCall = DllCall('gdi32.dll', 'bool', 'RemoveFontResourceExW', 'wstr', $sFont, 'dword', $iFlag, 'ptr', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, False)
If $bNotify Then
Local Const $WM_FONTCHANGE = 0x001D
Local Const $HWND_BROADCAST = 0xFFFF
DllCall('user32.dll', 'none', 'SendMessage', 'hwnd', $HWND_BROADCAST, 'uint', $WM_FONTCHANGE, 'wparam', 0, 'lparam', 0)
EndIf
Return $aCall[0]
EndFunc
Func _WinAPI_RGB($iRed, $iGreen, $iBlue)
Return __RGB(BitOR(BitShift($iBlue, -16), BitShift($iGreen, -8), $iRed))
EndFunc
Func _WinAPI_RotatePoints(ByRef $aPoint, $iXC, $iYC, $fAngle, $iStart = 0, $iEnd = -1)
If __CheckErrorArrayBounds($aPoint, $iStart, $iEnd, 2) Then Return SetError(@error + 10, @extended, 0)
If UBound($aPoint, $UBOUND_COLUMNS) < 2 Then Return SetError(13, 0, 0)
Local $fCos = Cos(ATan(1) / 45 * $fAngle)
Local $fSin = Sin(ATan(1) / 45 * $fAngle)
Local $iXn, $iYn
For $i = $iStart To $iEnd
$iXn = $aPoint[$i][0] - $iXC
$iYn = $aPoint[$i][1] - $iYC
$aPoint[$i][0] = $iXC + Round($iXn * $fCos - $iYn * $fSin)
$aPoint[$i][1] = $iYC + Round($iXn * $fSin + $iYn * $fCos)
Next
Return 1
EndFunc
Func _WinAPI_RoundRect($hDC, $tRECT, $iWidth, $iHeight)
Local $aCall = DllCall('gdi32.dll', 'bool', 'RoundRect', 'handle', $hDC, 'int', DllStructGetData($tRECT, 1),  'int', DllStructGetData($tRECT, 2), 'int', DllStructGetData($tRECT, 3),  'int', DllStructGetData($tRECT, 4), 'int', $iWidth, 'int', $iHeight)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SaveHBITMAPToFile($sFilePath, $hBitmap, $iXPelsPerMeter = Default, $iYPelsPerMeter = Default)
Local $tBMP = DllStructCreate('align 1;ushort bfType;dword bfSize;ushort bfReserved1;ushort bfReserved2;dword bfOffset')
Local $tDIB = DllStructCreate($tagDIBSECTION)
Local $hDC, $hSv, $hSource = 0
While $hBitmap
If (Not _WinAPI_GetObject($hBitmap, DllStructGetSize($tDIB), $tDIB)) Or (DllStructGetData($tDIB, 'biCompression')) Then
$hBitmap = 0
Else
Switch DllStructGetData($tDIB, 'bmBitsPixel')
Case 32
If Not _WinAPI_IsAlphaBitmap($hBitmap) Then
If Not $hSource Then
$hSource = _WinAPI_CreateDIB(DllStructGetData($tDIB, 'bmWidth'), DllStructGetData($tDIB, 'bmHeight'), 24)
If Not $hSource Then
$hBitmap = 0
EndIf
$hDC = _WinAPI_CreateCompatibleDC(0)
$hSv = _WinAPI_SelectObject($hDC, $hSource)
If _WinAPI_DrawBitmap($hDC, 0, 0, $hBitmap) Then
$hBitmap = $hSource
Else
$hBitmap = 0
EndIf
_WinAPI_SelectObject($hDC, $hSv)
_WinAPI_DeleteDC($hDC)
Else
$hBitmap = 0
EndIf
ContinueLoop
EndIf
Case Else
EndSwitch
If (Not DllStructGetData($tDIB, 'bmBits')) Or (Not DllStructGetData($tDIB, 'biSizeImage')) Then
If Not $hSource Then
$hBitmap = _WinAPI_CopyBitmap($hBitmap)
$hSource = $hBitmap
Else
$hBitmap = 0
EndIf
Else
ExitLoop
EndIf
EndIf
WEnd
Local $hFile = 0, $iError = 0, $iResult = 0
Do
If Not $hBitmap Then
$iError = 1
ExitLoop
EndIf
Local $aData[4][2]
$aData[0][0] = DllStructGetPtr($tBMP)
$aData[0][1] = DllStructGetSize($tBMP)
$aData[1][0] = DllStructGetPtr($tDIB, 'biSize')
$aData[1][1] = 40
$aData[2][1] = DllStructGetData($tDIB, 'biClrUsed') * 4
Local $tTable = 0
If $aData[2][1] Then
$tTable = _WinAPI_GetDIBColorTable($hBitmap)
If @error Or (@extended <> $aData[2][1] / 4) Then
$iError = @error + 10
ExitLoop
EndIf
EndIf
$aData[2][0] = DllStructGetPtr($tTable)
$aData[3][0] = DllStructGetData($tDIB, 'bmBits')
$aData[3][1] = DllStructGetData($tDIB, 'biSizeImage')
DllStructSetData($tBMP, 'bfType', 0x4D42)
DllStructSetData($tBMP, 'bfSize', $aData[0][1] + $aData[1][1] + $aData[2][1] + $aData[3][1])
DllStructSetData($tBMP, 'bfReserved1', 0)
DllStructSetData($tBMP, 'bfReserved2', 0)
DllStructSetData($tBMP, 'bfOffset', $aData[0][1] + $aData[1][1] + $aData[2][1])
$hDC = _WinAPI_GetDC(0)
If $iXPelsPerMeter = Default Then
If Not DllStructGetData($tDIB, 'biXPelsPerMeter') Then
DllStructSetData($tDIB, 'biXPelsPerMeter', _WinAPI_GetDeviceCaps($hDC, 8) / _WinAPI_GetDeviceCaps($hDC, 4) * 1000)
EndIf
Else
DllStructSetData($tDIB, 'biXPelsPerMeter', $iXPelsPerMeter)
EndIf
If $iYPelsPerMeter = Default Then
If Not DllStructGetData($tDIB, 'biYPelsPerMeter') Then
DllStructSetData($tDIB, 'biYPelsPerMeter', _WinAPI_GetDeviceCaps($hDC, 10) / _WinAPI_GetDeviceCaps($hDC, 6) * 1000)
EndIf
Else
DllStructSetData($tDIB, 'biYPelsPerMeter', $iYPelsPerMeter)
EndIf
_WinAPI_ReleaseDC(0, $hDC)
$hFile = _WinAPI_CreateFile($sFilePath, 1, 4)
If @error Then
$iError = @error + 20
ExitLoop
EndIf
Local $iBytes
For $i = 0 To 3
If $aData[$i][1] Then
If Not _WinAPI_WriteFile($hFile, $aData[$i][0], $aData[$i][1], $iBytes) Then
$iError = @error + 30
ExitLoop 2
EndIf
EndIf
Next
$iResult = 1
Until 1
If $hSource Then
_WinAPI_DeleteObject($hSource)
EndIf
_WinAPI_CloseHandle($hFile)
If Not $iResult Then
FileDelete($sFilePath)
EndIf
Return SetError($iError, 0, $iResult)
EndFunc
Func _WinAPI_SaveHICONToFile($sFilePath, Const ByRef $vIcon, $bCompress = 0, $iStart = 0, $iEnd = -1)
Local $aIcon, $aTemp, $iCount = 1
If Not IsArray($vIcon) Then
Dim $aIcon[1] = [$vIcon]
Dim $aTemp[1] = [0]
Else
If __CheckErrorArrayBounds($vIcon, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)
$iCount = $iEnd - $iStart + 1
If $iCount Then
Dim $aIcon[$iCount]
Dim $aTemp[$iCount]
For $i = 0 To $iCount - 1
$aIcon[$i] = $vIcon[$iStart + $i]
$aTemp[$i] = 0
Next
EndIf
EndIf
Local $hFile = _WinAPI_CreateFile($sFilePath, 1, 4)
If @error Then Return SetError(@error + 20, @extended, 0)
Local $tIco = DllStructCreate('align 1;ushort Reserved;ushort Type;ushort Count;byte Data[' & (16 * $iCount) & ']')
Local $iLength = DllStructGetSize($tIco)
Local $tBI = DllStructCreate($tagBITMAPINFOHEADER)
Local $tII = DllStructCreate($tagICONINFO)
Local $tDIB = DllStructCreate($tagDIBSECTION)
Local $iDIB = DllStructGetSize($tDIB)
Local $pDIB = DllStructGetPtr($tDIB)
Local $iOffset = $iLength
DllStructSetData($tBI, 'biSize', 40)
DllStructSetData($tBI, 'biPlanes', 1)
DllStructSetData($tBI, 'biXPelsPerMeter', 0)
DllStructSetData($tBI, 'biYPelsPerMeter', 0)
DllStructSetData($tBI, 'biClrUsed', 0)
DllStructSetData($tBI, 'biClrImportant', 0)
DllStructSetData($tIco, 'Reserved', 0)
DllStructSetData($tIco, 'Type', 1)
DllStructSetData($tIco, 'Count', $iCount)
Local $iResult = 0, $iError = 0, $iBytes
Local $aInfo[8], $aCall, $pData = 0, $iIndex = 0
Local $aSize[2], $tData = 0
Do
If Not _WinAPI_WriteFile($hFile, $tIco, $iLength, $iBytes) Then
$iError = @error + 30
ExitLoop
EndIf
While $iCount > $iIndex
$aCall = DllCall('user32.dll', 'bool', 'GetIconInfo', 'handle', $aIcon[$iIndex], 'struct*', $tII)
If @error Or Not $aCall[0] Then
$iError = @error + 40
ExitLoop 2
EndIf
For $i = 4 To 5
$aInfo[$i] = _WinAPI_CopyImage(DllStructGetData($tII, $i), 0, 0, 0, 0x2008)
If _WinAPI_GetObject($aInfo[$i], $iDIB, $pDIB) Then
$aInfo[$i - 4] = DllStructGetData($tDIB, 'biSizeImage')
$aInfo[$i - 2] = DllStructGetData($tDIB, 'bmBits')
Else
$iError = @error + 50
EndIf
Next
$aInfo[6] = 40
$aInfo[7] = DllStructGetData($tDIB, 'bmBitsPixel')
Switch $aInfo[7]
Case 16, 24
Case 32
If Not _WinAPI_IsAlphaBitmap($aInfo[5]) Then
If Not $aTemp[$iIndex] Then
$aIcon[$iIndex] = _WinAPI_Create32BitHICON($aIcon[$iIndex])
$aTemp[$iIndex] = $aIcon[$iIndex]
If Not @error Then
ContinueLoop
Else
ContinueCase
EndIf
EndIf
Else
If ($aInfo[1] >= 256 * 256 * 4) And ($bCompress) Then
$iBytes = _WinAPI_CompressBitmapBits($aInfo[5], $pData)
If Not @error Then
$aInfo[0] = 0
$aInfo[1] = $iBytes
$aInfo[2] = 0
$aInfo[3] = $pData
$aInfo[6] = 0
EndIf
EndIf
EndIf
Case Else
$iError = 60
EndSwitch
If Not $iError Then
$tData = DllStructCreate('byte Width;byte Height;byte ColorCount;byte Reserved;ushort Planes;ushort BitCount;long Size;long Offset', DllStructGetPtr($tIco) + 6 + 16 * $iIndex)
DllStructSetData($tData, 'ColorCount', 0)
DllStructSetData($tData, 'Reserved', 0)
DllStructSetData($tData, 'Planes', 1)
DllStructSetData($tData, 'BitCount', $aInfo[7])
DllStructSetData($tData, 'Size', $aInfo[0] + $aInfo[1] + $aInfo[6])
DllStructSetData($tData, 'Offset', $iOffset)
For $i = 0 To 1
$aSize[$i] = DllStructGetData($tDIB, $i + 2)
If $aSize[$i] < 256 Then
DllStructSetData($tData, $i + 1, $aSize[$i])
Else
DllStructSetData($tData, $i + 1, 0)
EndIf
Next
DllStructSetData($tBI, 'biWidth', $aSize[0])
DllStructSetData($tBI, 'biHeight', 2 * $aSize[1])
DllStructSetData($tBI, 'biBitCount', $aInfo[7])
DllStructSetData($tBI, 'biCompression', 0)
DllStructSetData($tBI, 'biSizeImage', $aInfo[0] + $aInfo[1])
$iOffset += $aInfo[0] + $aInfo[1] + $aInfo[6]
Do
If $aInfo[6] Then
If Not _WinAPI_WriteFile($hFile, $tBI, $aInfo[6], $iBytes) Then
$iError = @error + 70
ExitLoop
EndIf
For $i = 1 To 0 Step -1
If Not _WinAPI_WriteFile($hFile, $aInfo[$i + 2], $aInfo[$i], $iBytes) Then
$iError = @error + 80
ExitLoop 2
EndIf
Next
Else
If Not _WinAPI_WriteFile($hFile, $aInfo[3], $aInfo[1], $iBytes) Then
$iError = @error + 90
ExitLoop
EndIf
EndIf
Until 1
EndIf
For $i = 4 To 5
_WinAPI_DeleteObject($aInfo[$i])
Next
If $iError Then
ExitLoop 2
EndIf
$iIndex += 1
WEnd
$aCall = DllCall('kernel32.dll', 'bool', 'SetFilePointerEx', 'handle', $hFile, 'int64', 0, 'int64*', 0, 'dword', 0)
If @error Or Not $aCall[0] Then
$iError = @error + 100
ExitLoop
EndIf
If Not _WinAPI_WriteFile($hFile, $tIco, $iLength, $iBytes) Then
$iError = @error + 110
ExitLoop
EndIf
$iResult = 1
Until 1
For $i = 0 To $iCount - 1
If $aTemp[$i] Then
_WinAPI_DestroyIcon($aTemp[$i])
EndIf
Next
If $pData Then
__HeapFree($pData)
EndIf
_WinAPI_CloseHandle($hFile)
If Not $iResult Then
FileDelete($sFilePath)
EndIf
Return SetError($iError, 0, $iResult)
EndFunc
Func _WinAPI_ScaleWindowExt($hDC, $iXNum, $iXDenom, $iYNum, $iYDenom)
$__g_vExt = DllStructCreate($tagSIZE)
Local $aCall = DllCall('gdi32.dll', 'bool', 'ScaleWindowExtEx', 'handle', $hDC, 'int', $iXNum, 'int', $iXDenom, 'int', $iYNum,  'int', $iYDenom, 'struct*', $__g_vExt)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SelectClipPath($hDC, $iMode = 5)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SelectClipPath', 'handle', $hDC, 'int', $iMode)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SelectClipRgn($hDC, $hRgn)
Local $aCall = DllCall('gdi32.dll', 'int', 'SelectClipRgn', 'handle', $hDC, 'handle', $hRgn)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetArcDirection($hDC, $iDirection)
Local $aCall = DllCall('gdi32.dll', 'int', 'SetArcDirection', 'handle', $hDC, 'int', $iDirection)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetBitmapBits($hBitmap, $iSize, $pBits)
Local $aCall = DllCall('gdi32.dll', 'long', 'SetBitmapBits', 'handle', $hBitmap, 'dword', $iSize, 'struct*', $pBits)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetBitmapDimensionEx($hBitmap, $iWidth, $iHeight)
$__g_vExt = DllStructCreate($tagSIZE)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetBitmapDimensionEx', 'handle', $hBitmap, 'int', $iWidth, 'int', $iHeight,  'struct*', $__g_vExt)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetBoundsRect($hDC, $iFlags, $tRECT = 0)
Local $aCall = DllCall('gdi32.dll', 'uint', 'SetBoundsRect', 'handle', $hDC, 'struct*', $tRECT, 'uint', $iFlags)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetBrushOrg($hDC, $iX, $iY)
$__g_vExt = DllStructCreate($tagPOINT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetBrushOrgEx', 'handle', $hDC, 'int', $iX, 'int', $iY, 'struct*', $__g_vExt)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetColorAdjustment($hDC, $tAdjustment)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetColorAdjustment', 'handle', $hDC, 'struct*', $tAdjustment)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetDCBrushColor($hDC, $iRGB)
Local $aCall = DllCall('gdi32.dll', 'dword', 'SetDCBrushColor', 'handle', $hDC, 'dword', __RGB($iRGB))
If @error Or ($aCall[0] = 4294967295) Then Return SetError(@error, @extended, -1)
Return __RGB($aCall[0])
EndFunc
Func _WinAPI_SetDCPenColor($hDC, $iRGB)
Local $aCall = DllCall('gdi32.dll', 'dword', 'SetDCPenColor', 'handle', $hDC, 'dword', __RGB($iRGB))
If @error Or ($aCall[0] = 4294967295) Then Return SetError(@error, @extended, -1)
Return __RGB($aCall[0])
EndFunc
Func _WinAPI_SetDeviceGammaRamp($hDC, Const ByRef $aRamp)
If (UBound($aRamp, $UBOUND_DIMENSIONS) <> 2) Or (UBound($aRamp, $UBOUND_ROWS) <> 256) Or (UBound($aRamp, $UBOUND_COLUMNS) <> 3) Then
Return SetError(12, 0, 0)
EndIf
Local $tData = DllStructCreate('ushort[256];ushort[256];ushort[256]')
For $i = 0 To 2
For $j = 0 To 255
DllStructSetData($tData, $i + 1, $aRamp[$j][$i], $j + 1)
Next
Next
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetDeviceGammaRamp', 'handle', $hDC, 'struct*', $tData)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetDIBColorTable($hBitmap, $tColorTable, $iColorCount)
If $iColorCount > DllStructGetSize($tColorTable) / 4 Then Return SetError(1, 0, 0)
Local $hDC = _WinAPI_CreateCompatibleDC(0)
Local $hSv = _WinAPI_SelectObject($hDC, $hBitmap)
Local $iError = 0
Local $aCall = DllCall('gdi32.dll', 'uint', 'SetDIBColorTable', 'handle', $hDC, 'uint', 0, 'uint', $iColorCount, 'struct*', $tColorTable)
If @error Then $iError = @error
_WinAPI_SelectObject($hDC, $hSv)
_WinAPI_DeleteDC($hDC)
If $iError Then Return SetError($iError, 0, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetDIBits($hDC, $hBitmap, $iStartScan, $iScanLines, $pBits, $tBMI, $iColorUse = 0)
Local $aCall = DllCall("gdi32.dll", "int", "SetDIBits", "handle", $hDC, "handle", $hBitmap, "uint", $iStartScan,  "uint", $iScanLines, "struct*", $pBits, "struct*", $tBMI, "INT", $iColorUse)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetDIBitsToDevice($hDC, $iXDest, $iYDest, $iWidth, $iHeight, $iXSrc, $iYSrc, $iStartScan, $iScanLines, $tBITMAPINFO, $iUsage, $pBits)
Local $aCall = DllCall('gdi32.dll', 'int', 'SetDIBitsToDevice', 'handle', $hDC, 'int', $iXDest, 'int', $iYDest,  'dword', $iWidth, 'dword', $iHeight, 'int', $iXSrc, 'int', $iYSrc, 'uint', $iStartScan,  'uint', $iScanLines, 'struct*', $pBits, 'struct*', $tBITMAPINFO, 'uint', $iUsage)
If @error Or ($aCall[0] = -1) Then Return SetError(@error + 10, $aCall[0], 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetEnhMetaFileBits($pData, $iLength)
Local $aCall = DllCall('gdi32.dll', 'handle', 'SetEnhMetaFileBits', 'uint', $iLength, 'struct*', $pData)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetGraphicsMode($hDC, $iMode)
Local $aCall = DllCall('gdi32.dll', 'int', 'SetGraphicsMode', 'handle', $hDC, 'int', $iMode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetMapMode($hDC, $iMode)
Local $aCall = DllCall('gdi32.dll', 'int', 'SetMapMode', 'handle', $hDC, 'int', $iMode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetPixel($hDC, $iX, $iY, $iRGB)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetPixelV', 'handle', $hDC, 'int', $iX, 'int', $iY, 'dword', __RGB($iRGB))
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetPolyFillMode($hDC, $iMode = 1)
Local $aCall = DllCall('gdi32.dll', 'int', 'SetPolyFillMode', 'handle', $hDC, 'int', $iMode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetRectRgn($hRgn, $tRECT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetRectRgn', 'handle', $hRgn, 'int', DllStructGetData($tRECT, 1),  'int', DllStructGetData($tRECT, 2), 'int', DllStructGetData($tRECT, 3), 'int', DllStructGetData($tRECT, 4))
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetROP2($hDC, $iMode)
Local $aCall = DllCall('gdi32.dll', 'int', 'SetROP2', 'handle', $hDC, 'int', $iMode)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetStretchBltMode($hDC, $iMode)
Local $aCall = DllCall('gdi32.dll', 'int', 'SetStretchBltMode', 'handle', $hDC, 'int', $iMode)
If @error Or Not $aCall[0] Or ($aCall[0] = 87) Then Return SetError(@error + 10, $aCall[0], 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetTextAlign($hDC, $iMode = 0)
Local $aCall = DllCall('gdi32.dll', 'uint', 'SetTextAlign', 'handle', $hDC, 'uint', $iMode)
If @error Or ($aCall[0] = 4294967295) Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_SetTextCharacterExtra($hDC, $iCharExtra)
Local $aCall = DllCall('gdi32.dll', 'int', 'SetTextCharacterExtra', 'handle', $hDC, 'int', $iCharExtra)
If @error Or ($aCall[0] = 0x80000000) Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_SetTextJustification($hDC, $iBreakExtra, $iBreakCount)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetTextJustification', 'handle', $hDC, 'int', $iBreakExtra, 'int', $iBreakCount)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetUDFColorMode($iMode)
$__g_iRGBMode = Not ($iMode = 0)
EndFunc
Func _WinAPI_SetWindowExt($hDC, $iXExtent, $iYExtent)
$__g_vExt = DllStructCreate($tagSIZE)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetWindowExtEx', 'handle', $hDC, 'int', $iXExtent, 'int', $iYExtent,  'struct*', $__g_vExt)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWindowOrg($hDC, $iX, $iY)
$__g_vExt = DllStructCreate($tagPOINT)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetWindowOrgEx', 'handle', $hDC, 'int', $iX, 'int', $iY, 'struct*', $__g_vExt)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetWorldTransform($hDC, ByRef $tXFORM)
Local $aCall = DllCall('gdi32.dll', 'bool', 'SetWorldTransform', 'handle', $hDC, 'struct*', $tXFORM)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_StretchBlt($hDestDC, $iXDest, $iYDest, $iWidthDest, $iHeightDest, $hSrcDC, $iXSrc, $iYSrc, $iWidthSrc, $iHeightSrc, $iRop)
Local $aCall = DllCall('gdi32.dll', 'bool', 'StretchBlt', 'handle', $hDestDC, 'int', $iXDest, 'int', $iYDest, 'int', $iWidthDest,  'int', $iHeightDest, 'hwnd', $hSrcDC, 'int', $iXSrc, 'int', $iYSrc,  'int', $iWidthSrc, 'int', $iHeightSrc, 'dword', $iRop)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_StretchDIBits($hDestDC, $iXDest, $iYDest, $iWidthDest, $iHeightDest, $iXSrc, $iYSrc, $iWidthSrc, $iHeightSrc, $tBITMAPINFO, $iUsage, $pBits, $iRop)
Local $aCall = DllCall('gdi32.dll', 'int', 'StretchDIBits', 'handle', $hDestDC, 'int', $iXDest, 'int', $iYDest,  'int', $iWidthDest, 'int', $iHeightDest, 'int', $iXSrc, 'int', $iYSrc,  'int', $iWidthSrc, 'int', $iHeightSrc, 'struct*', $pBits, 'struct*', $tBITMAPINFO, 'uint', $iUsage,  'dword', $iRop)
If @error Or ($aCall[0] = -1) Then Return SetError(@error + 10, $aCall[0], 0)
Return $aCall[0]
EndFunc
Func _WinAPI_StrokeAndFillPath($hDC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'StrokeAndFillPath', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_StrokePath($hDC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'StrokePath', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SubtractRect(ByRef $tRECT1, ByRef $tRECT2)
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'SubtractRect', 'struct*', $tRECT, 'struct*', $tRECT1, 'struct*', $tRECT2)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tRECT
EndFunc
Func _WinAPI_TabbedTextOut($hDC, $iX, $iY, $sText, $aTab = 0, $iStart = 0, $iEnd = -1, $iOrigin = 0)
Local $iTab, $iCount
If Not IsArray($aTab) Then
If $aTab Then
$iTab = $aTab
Dim $aTab[1] = [$iTab]
$iStart = 0
$iEnd = 0
$iCount = 1
Else
$iCount = 0
EndIf
Else
$iCount = 1
EndIf
Local $tTab = 0
If $iCount Then
If __CheckErrorArrayBounds($aTab, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)
$iCount = $iEnd - $iStart + 1
$tTab = DllStructCreate('uint[' & $iCount & ']')
$iTab = 1
For $i = $iStart To $iEnd
DllStructSetData($tTab, 1, $aTab[$i], $iTab)
$iTab += 1
Next
EndIf
Local $aCall = DllCall('user32.dll', 'long', 'TabbedTextOutW', 'handle', $hDC, 'int', $iX, 'int', $iY, 'wstr', $sText,  'int', StringLen($sText), 'int', $iCount, 'struct*', $tTab, 'int', $iOrigin)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
$__g_vExt = _WinAPI_CreateSize(_WinAPI_LoWord($aCall[0]), _WinAPI_HiWord($aCall[0]))
Return 1
EndFunc
Func _WinAPI_TextOut($hDC, $iX, $iY, $sText)
Local $aCall = DllCall('gdi32.dll', 'bool', 'TextOutW', 'handle', $hDC, 'int', $iX, 'int', $iY, 'wstr', $sText,  'int', StringLen($sText))
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_TransparentBlt($hDestDC, $iXDest, $iYDest, $iWidthDest, $iHeightDest, $hSrcDC, $iXSrc, $iYSrc, $iWidthSrc, $iHeightSrc, $iRGB)
Local $aCall = DllCall('gdi32.dll', 'bool', 'GdiTransparentBlt', 'handle', $hDestDC, 'int', $iXDest, 'int', $iYDest,  'int', $iWidthDest, 'int', $iHeightDest, 'hwnd', $hSrcDC, 'int', $iXSrc, 'int', $iYSrc,  'int', $iWidthSrc, 'int', $iHeightSrc, 'dword', __RGB($iRGB))
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_UnionRect(ByRef $tRECT1, ByRef $tRECT2)
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'UnionRect', 'struct*', $tRECT, 'struct*', $tRECT1, 'struct*', $tRECT2)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, 0, 0)
Return $tRECT
EndFunc
Func _WinAPI_ValidateRect($hWnd, $tRECT = 0)
Local $aCall = DllCall('user32.dll', 'bool', 'ValidateRect', 'hwnd', $hWnd, 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ValidateRgn($hWnd, $hRgn = 0)
Local $aCall = DllCall('user32.dll', 'bool', 'ValidateRgn', 'hwnd', $hWnd, 'handle', $hRgn)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_WidenPath($hDC)
Local $aCall = DllCall('gdi32.dll', 'bool', 'WidenPath', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_WindowFromDC($hDC)
Local $aCall = DllCall('user32.dll', 'hwnd', 'WindowFromDC', 'handle', $hDC)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func __EnumDisplayMonitorsProc($hMonitor, $hDC, $pRECT, $lParam)
#forceref $hDC, $lParam
__Inc($__g_vEnum)
$__g_vEnum[$__g_vEnum[0][0]][0] = $hMonitor
If Not $pRECT Then
$__g_vEnum[$__g_vEnum[0][0]][1] = 0
Else
$__g_vEnum[$__g_vEnum[0][0]][1] = DllStructCreate($tagRECT)
If Not _WinAPI_MoveMemory(DllStructGetPtr($__g_vEnum[$__g_vEnum[0][0]][1]), $pRECT, 16) Then Return 0
EndIf
Return 1
EndFunc
Func __EnumFontFamiliesProc($pELFEX, $pNTMEX, $iFontType, $pPattern)
Local $tELFEX = DllStructCreate($tagLOGFONT & ';wchar FullName[64];wchar Style[32];wchar Script[32]', $pELFEX)
Local $tNTMEX = DllStructCreate($tagNEWTEXTMETRICEX, $pNTMEX)
Local $tPattern = DllStructCreate('uint;uint;ptr', $pPattern)
If $iFontType And Not BitAND($iFontType, DllStructGetData($tPattern, 1)) Then
Return 1
EndIf
If DllStructGetData($tPattern, 3) Then
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathMatchSpecW', 'ptr', DllStructGetPtr($tELFEX, 14), 'ptr', DllStructGetData($tPattern, 3))
If Not @error Then
If DllStructGetData($tPattern, 2) Then
If $aCall[0] Then
Return 1
Else
EndIf
Else
If $aCall[0] Then
Else
Return 1
EndIf
EndIf
EndIf
EndIf
__Inc($__g_vEnum)
$__g_vEnum[$__g_vEnum[0][0]][0] = DllStructGetData($tELFEX, 14)
$__g_vEnum[$__g_vEnum[0][0]][1] = DllStructGetData($tELFEX, 16)
$__g_vEnum[$__g_vEnum[0][0]][2] = DllStructGetData($tELFEX, 15)
$__g_vEnum[$__g_vEnum[0][0]][3] = DllStructGetData($tELFEX, 17)
$__g_vEnum[$__g_vEnum[0][0]][4] = $iFontType
$__g_vEnum[$__g_vEnum[0][0]][5] = DllStructGetData($tNTMEX, 19)
$__g_vEnum[$__g_vEnum[0][0]][6] = DllStructGetData($tNTMEX, 20)
$__g_vEnum[$__g_vEnum[0][0]][7] = DllStructGetData($tNTMEX, 21)
Return 1
EndFunc
Func __EnumFontStylesProc($pELFEX, $pNTMEX, $iFontType, $pFN)
#forceref $iFontType
Local $tELFEX = DllStructCreate($tagLOGFONT & ';wchar FullName[64];wchar Style[32];wchar Script[32]', $pELFEX)
Local $tNTMEX = DllStructCreate($tagNEWTEXTMETRICEX, $pNTMEX)
Local $tFN = DllStructCreate('dword;wchar[64]', $pFN)
If BitAND(DllStructGetData($tNTMEX, 'ntmFlags'), 0x0061) = DllStructGetData($tFN, 1) Then
DllStructSetData($tFN, 2, DllStructGetData($tELFEX, 'FullName'))
Return 0
Else
Return 1
EndIf
EndFunc
Global $__g_hGDIPBrush = 0
Global $__g_hGDIPDll = 0
Global $__g_hGDIPPen = 0
Global $__g_iGDIPRef = 0
Global $__g_iGDIPToken = 0
Global $__g_bGDIP_V1_0 = True
Func _GDIPlus_ArrowCapCreate($fHeight, $fWidth, $bFilled = True)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateAdjustableArrowCap", "float", $fHeight, "float", $fWidth, "bool", $bFilled, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[4]
EndFunc
Func _GDIPlus_ArrowCapDispose($hCap)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDeleteCustomLineCap", "handle", $hCap)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ArrowCapGetFillState($hArrowCap)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetAdjustableArrowCapFillState", "handle", $hArrowCap, "bool*", 0)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ArrowCapGetHeight($hArrowCap)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetAdjustableArrowCapHeight", "handle", $hArrowCap, "float*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_ArrowCapGetMiddleInset($hArrowCap)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetAdjustableArrowCapMiddleInset", "handle", $hArrowCap, "float*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_ArrowCapGetWidth($hArrowCap)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetAdjustableArrowCapWidth", "handle", $hArrowCap, "float*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_ArrowCapSetFillState($hArrowCap, $bFilled = True)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetAdjustableArrowCapFillState", "handle", $hArrowCap, "bool", $bFilled)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ArrowCapSetHeight($hArrowCap, $fHeight)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetAdjustableArrowCapHeight", "handle", $hArrowCap, "float", $fHeight)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ArrowCapSetMiddleInset($hArrowCap, $fInset)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetAdjustableArrowCapMiddleInset", "handle", $hArrowCap, "float", $fInset)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ArrowCapSetWidth($hArrowCap, $fWidth)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetAdjustableArrowCapWidth", "handle", $hArrowCap, "float", $fWidth)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_BitmapCloneArea($hBitmap, $nLeft, $nTop, $nWidth, $nHeight, $iFormat = 0x00021808)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCloneBitmapArea", "float", $nLeft, "float", $nTop, "float", $nWidth, "float", $nHeight,  "int", $iFormat, "handle", $hBitmap, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[7]
EndFunc
Func _GDIPlus_BitmapCreateDIBFromBitmap($hBitmap)
Local $aCall = DllCall($__g_hGDIPDll, "uint", "GdipGetImageDimension", "handle", $hBitmap, "float*", 0, "float*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Local $tData = _GDIPlus_BitmapLockBits($hBitmap, 0, 0, $aCall[2], $aCall[3], $GDIP_ILMREAD, $GDIP_PXF32ARGB)
Local $pBits = DllStructGetData($tData, "Scan0")
If Not $pBits Then Return 0
Local $tBIHDR = DllStructCreate($tagBITMAPV5HEADER)
DllStructSetData($tBIHDR, "bV5Size", DllStructGetSize($tBIHDR))
DllStructSetData($tBIHDR, "bV5Width", $aCall[2])
DllStructSetData($tBIHDR, "bV5Height", $aCall[3])
DllStructSetData($tBIHDR, "bV5Planes", 1)
DllStructSetData($tBIHDR, "bV5BitCount", 32)
DllStructSetData($tBIHDR, "bV5Compression", 0)
DllStructSetData($tBIHDR, "bV5SizeImage", $aCall[3] * DllStructGetData($tData, "Stride"))
DllStructSetData($tBIHDR, "bV5AlphaMask", 0xFF000000)
DllStructSetData($tBIHDR, "bV5RedMask", 0x00FF0000)
DllStructSetData($tBIHDR, "bV5GreenMask", 0x0000FF00)
DllStructSetData($tBIHDR, "bV5BlueMask", 0x000000FF)
DllStructSetData($tBIHDR, "bV5CSType", 2)
DllStructSetData($tBIHDR, "bV5Intent", 4)
Local $hHBitmapv5 = DllCall("gdi32.dll", "ptr", "CreateDIBSection", "hwnd", 0, "struct*", $tBIHDR, "uint", 0, "ptr*", 0, "ptr", 0, "dword", 0)
If Not @error And $hHBitmapv5[0] Then
DllCall("gdi32.dll", "dword", "SetBitmapBits", "ptr", $hHBitmapv5[0], "dword", $aCall[2] * $aCall[3] * 4, "ptr", DllStructGetData($tData, "Scan0"))
$hHBitmapv5 = $hHBitmapv5[0]
Else
$hHBitmapv5 = 0
EndIf
_GDIPlus_BitmapUnlockBits($hBitmap, $tData)
$tData = 0
$tBIHDR = 0
Return $hHBitmapv5
EndFunc
Func _GDIPlus_BitmapCreateFromFile($sFileName)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateBitmapFromFile", "wstr", $sFileName, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_BitmapCreateFromGraphics($iWidth, $iHeight, $hGraphics)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateBitmapFromGraphics", "int", $iWidth, "int", $iHeight, "handle", $hGraphics,  "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[4]
EndFunc
Func _GDIPlus_BitmapCreateFromHBITMAP($hBitmap, $hPal = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateBitmapFromHBITMAP", "handle", $hBitmap, "handle", $hPal, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _GDIPlus_BitmapCreateFromMemory($dImage, $bHBITMAP = False)
If Not IsBinary($dImage) Then Return SetError(1, 0, 0)
Local Const $dMemBitmap = Binary($dImage)
Local Const $iLen = BinaryLen($dMemBitmap)
Local Const $GMEM_MOVEABLE = 0x0002
Local $aCall = DllCall("kernel32.dll", "handle", "GlobalAlloc", "uint", $GMEM_MOVEABLE, "ulong_ptr", $iLen)
If @error Then Return SetError(4, 0, 0)
Local Const $hData = $aCall[0]
$aCall = DllCall("kernel32.dll", "ptr", "GlobalLock", "handle", $hData)
If @error Then Return SetError(5, 0, 0)
Local $tMem = DllStructCreate("byte[" & $iLen & "]", $aCall[0])
DllStructSetData($tMem, 1, $dMemBitmap)
DllCall("kernel32.dll", "bool", "GlobalUnlock", "handle", $hData)
If @error Then Return SetError(6, 0, 0)
Local Const $hStream = _WinAPI_CreateStreamOnHGlobal($hData)
If @error Then Return SetError(2, 0, 0)
Local Const $hBitmap = _GDIPlus_BitmapCreateFromStream($hStream)
If @error Then Return SetError(3, 0, 0)
DllCall("oleaut32.dll", "long", "DispCallFunc", "ptr", $hStream, "ulong_ptr", 8 * (1 + @AutoItX64), "uint", 4, "ushort", 23, "uint", 0, "ptr", 0, "ptr", 0, "str", "")
If $bHBITMAP Then
Local Const $hHBmp = _GDIPlus_BitmapCreateDIBFromBitmap($hBitmap)
_GDIPlus_BitmapDispose($hBitmap)
Return $hHBmp
EndIf
Return $hBitmap
EndFunc
Func _GDIPlus_BitmapCreateFromResource($hInst, $vResourceName)
Local $sType = "int"
If IsString($vResourceName) Then $sType = "wstr"
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateBitmapFromResource", "handle", $hInst, $sType, $vResourceName, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _GDIPlus_BitmapCreateFromScan0($iWidth, $iHeight, $iPixelFormat = $GDIP_PXF32ARGB, $iStride = 0, $pScan0 = 0)
Local $aCall = DllCall($__g_hGDIPDll, "uint", "GdipCreateBitmapFromScan0", "int", $iWidth, "int", $iHeight, "int", $iStride, "int", $iPixelFormat, "struct*", $pScan0, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[6]
EndFunc
Func _GDIPlus_BitmapCreateFromStream($pStream)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateBitmapFromStream", "ptr", $pStream, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_BitmapCreateHBITMAPFromBitmap($hBitmap, $iARGB = 0xFF000000)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateHBITMAPFromBitmap", "handle", $hBitmap, "handle*", 0, "dword", $iARGB)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_BitmapDispose($hBitmap)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDisposeImage", "handle", $hBitmap)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_BitmapCreateFromHICON($hIcon)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateBitmapFromHICON", "handle", $hIcon, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_BitmapCreateFromHICON32($hIcon)
Local $tSIZE = _WinAPI_GetIconDimension($hIcon)
Local $iWidth = DllStructGetData($tSIZE, 'X')
Local $iHeight = DllStructGetData($tSIZE, 'Y')
If $iWidth <= 0 Or $iHeight <= 0 Then Return SetError(10, -1, 0)
Local $tBITMAPINFO = DllStructCreate("dword Size;long Width;long Height;word Planes;word BitCount;dword Compression;dword SizeImage;long XPelsPerMeter;long YPelsPerMeter;dword ClrUsed;dword ClrImportant;dword RGBQuad")
DllStructSetData($tBITMAPINFO, 'Size', DllStructGetSize($tBITMAPINFO) - 4)
DllStructSetData($tBITMAPINFO, 'Width', $iWidth)
DllStructSetData($tBITMAPINFO, 'Height', -$iHeight)
DllStructSetData($tBITMAPINFO, 'Planes', 1)
DllStructSetData($tBITMAPINFO, 'BitCount', 32)
DllStructSetData($tBITMAPINFO, 'Compression', 0)
DllStructSetData($tBITMAPINFO, 'SizeImage', 0)
Local $hDC = _WinAPI_CreateCompatibleDC(0)
Local $pBits
Local $hBmp = _WinAPI_CreateDIBSection(0, $tBITMAPINFO, 0, $pBits)
Local $hOrig = _WinAPI_SelectObject($hDC, $hBmp)
_WinAPI_DrawIconEx($hDC, 0, 0, $hIcon, $iWidth, $iHeight)
Local $hBitmapIcon = _GDIPlus_BitmapCreateFromScan0($iWidth, $iHeight, $GDIP_PXF32ARGB, $iWidth * 4, $pBits)
Local $hBitmap = _GDIPlus_BitmapCreateFromScan0($iWidth, $iHeight)
Local $hContext = _GDIPlus_ImageGetGraphicsContext($hBitmap)
_GDIPlus_GraphicsDrawImage($hContext, $hBitmapIcon, 0, 0)
_GDIPlus_GraphicsDispose($hContext)
_GDIPlus_BitmapDispose($hBitmapIcon)
_WinAPI_SelectObject($hDC, $hOrig)
_WinAPI_DeleteDC($hDC)
_WinAPI_DeleteObject($hBmp)
Return $hBitmap
EndFunc
Func _GDIPlus_BitmapGetPixel($hBitmap, $iX, $iY)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipBitmapGetPixel", "handle", $hBitmap, "int", $iX, "int", $iY, "uint*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[4]
EndFunc
Func _GDIPlus_BitmapLockBits($hBitmap, $iLeft, $iTop, $iWidth, $iHeight, $iFlags = $GDIP_ILMREAD, $iFormat = $GDIP_PXF32RGB)
Local $tData = DllStructCreate($tagGDIPBITMAPDATA)
Local $tRECT = DllStructCreate($tagRECT)
DllStructSetData($tRECT, "Left", $iLeft)
DllStructSetData($tRECT, "Top", $iTop)
DllStructSetData($tRECT, "Right", $iWidth)
DllStructSetData($tRECT, "Bottom", $iHeight)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipBitmapLockBits", "handle", $hBitmap, "struct*", $tRECT, "uint", $iFlags, "int", $iFormat, "struct*", $tData)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $tData
EndFunc
Func _GDIPlus_BitmapSetPixel($hBitmap, $iX, $iY, $iARGB)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipBitmapSetPixel", "handle", $hBitmap, "int", $iX, "int", $iY, "uint", $iARGB)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_BitmapSetResolution($hBitmap, $fDpiX, $fDpiY)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipBitmapSetResolution", "handle", $hBitmap, "float", $fDpiX, "float", $fDpiY)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_BitmapUnlockBits($hBitmap, $tBitmapData)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipBitmapUnlockBits", "handle", $hBitmap, "struct*", $tBitmapData)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_BrushClone($hBrush)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCloneBrush", "handle", $hBrush, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_BrushCreateSolid($iARGB = 0xFF000000)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateSolidFill", "int", $iARGB, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_BrushDispose($hBrush)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDeleteBrush", "handle", $hBrush)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_BrushGetSolidColor($hBrush)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetSolidFillColor", "handle", $hBrush, "dword*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_BrushGetType($hBrush)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetBrushType", "handle", $hBrush, "int*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_BrushSetSolidColor($hBrush, $iARGB = 0xFF000000)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetSolidFillColor", "handle", $hBrush, "dword", $iARGB)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ColorMatrixCreate()
Return _GDIPlus_ColorMatrixCreateScale(1, 1, 1, 1)
EndFunc
Func _GDIPlus_ColorMatrixCreateGrayScale()
Local $iI, $iJ, $tCM, $aLums[4] = [$GDIP_RLUM, $GDIP_GLUM, $GDIP_BLUM, 0]
$tCM = DllStructCreate($tagGDIPCOLORMATRIX)
For $iI = 0 To 3
For $iJ = 1 To 3
DllStructSetData($tCM, "m", $aLums[$iI], $iI * 5 + $iJ)
Next
Next
DllStructSetData($tCM, "m", 1, 19)
DllStructSetData($tCM, "m", 1, 25)
Return $tCM
EndFunc
Func _GDIPlus_ColorMatrixCreateNegative()
Local $iI, $tCM
$tCM = _GDIPlus_ColorMatrixCreateScale(-1, -1, -1, 1)
For $iI = 1 To 4
DllStructSetData($tCM, "m", 1, 20 + $iI)
Next
Return $tCM
EndFunc
Func _GDIPlus_ColorMatrixCreateSaturation($fSat)
Local $fSatComp, $tCM
$tCM = DllStructCreate($tagGDIPCOLORMATRIX)
$fSatComp = (1 - $fSat)
DllStructSetData($tCM, "m", $fSatComp * $GDIP_RLUM + $fSat, 1)
DllStructSetData($tCM, "m", $fSatComp * $GDIP_RLUM, 2)
DllStructSetData($tCM, "m", $fSatComp * $GDIP_RLUM, 3)
DllStructSetData($tCM, "m", $fSatComp * $GDIP_GLUM, 6)
DllStructSetData($tCM, "m", $fSatComp * $GDIP_GLUM + $fSat, 7)
DllStructSetData($tCM, "m", $fSatComp * $GDIP_GLUM, 8)
DllStructSetData($tCM, "m", $fSatComp * $GDIP_BLUM, 11)
DllStructSetData($tCM, "m", $fSatComp * $GDIP_BLUM, 12)
DllStructSetData($tCM, "m", $fSatComp * $GDIP_BLUM + $fSat, 13)
DllStructSetData($tCM, "m", 1, 19)
DllStructSetData($tCM, "m", 1, 25)
Return $tCM
EndFunc
Func _GDIPlus_ColorMatrixCreateScale($fRed, $fGreen, $fBlue, $fAlpha = 1)
Local $tCM
$tCM = DllStructCreate($tagGDIPCOLORMATRIX)
DllStructSetData($tCM, "m", $fRed, 1)
DllStructSetData($tCM, "m", $fGreen, 7)
DllStructSetData($tCM, "m", $fBlue, 13)
DllStructSetData($tCM, "m", $fAlpha, 19)
DllStructSetData($tCM, "m", 1, 25)
Return $tCM
EndFunc
Func _GDIPlus_ColorMatrixCreateTranslate($fRed, $fGreen, $fBlue, $fAlpha = 0)
Local $iI, $tCM, $aFactors[4] = [$fRed, $fGreen, $fBlue, $fAlpha]
$tCM = _GDIPlus_ColorMatrixCreate()
For $iI = 0 To 3
DllStructSetData($tCM, "m", $aFactors[$iI], 21 + $iI)
Next
Return $tCM
EndFunc
Func _GDIPlus_CustomLineCapClone($hCustomLineCap)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCloneCustomLineCap", "handle", $hCustomLineCap, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_CustomLineCapCreate($hPathFill, $hPathStroke, $iLineCap = 0, $nBaseInset = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateCustomLineCap", "handle", $hPathFill, "handle", $hPathStroke, "int", $iLineCap, "float", $nBaseInset, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[5]
EndFunc
Func _GDIPlus_CustomLineCapDispose($hCap)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDeleteCustomLineCap", "handle", $hCap)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_CustomLineCapGetStrokeCaps($hCustomLineCap)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetCustomLineCapStrokeCaps", "hwnd", $hCustomLineCap, "ptr*", 0, "ptr*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then SetError(10, $aCall[0], 0)
Local $aCaps[2]
$aCaps[0] = $aCall[2]
$aCaps[1] = $aCall[3]
Return $aCaps
EndFunc
Func _GDIPlus_CustomLineCapSetStrokeCaps($hCustomLineCap, $iStartCap, $iEndCap)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetCustomLineCapStrokeCaps", "handle", $hCustomLineCap, "int", $iStartCap, "int", $iEndCap)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_Decoders()
Local $iCount = _GDIPlus_DecodersGetCount()
Local $iSize = _GDIPlus_DecodersGetSize()
Local $tBuffer = DllStructCreate("byte[" & $iSize & "]")
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetImageDecoders", "uint", $iCount, "uint", $iSize, "struct*", $tBuffer)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Local $pBuffer = DllStructGetPtr($tBuffer)
Local $tCodec, $aInfo[$iCount + 1][14]
$aInfo[0][0] = $iCount
For $iI = 1 To $iCount
$tCodec = DllStructCreate($tagGDIPIMAGECODECINFO, $pBuffer)
$aInfo[$iI][1] = _WinAPI_StringFromGUID(DllStructGetPtr($tCodec, "CLSID"))
$aInfo[$iI][2] = _WinAPI_StringFromGUID(DllStructGetPtr($tCodec, "FormatID"))
$aInfo[$iI][3] = _WinAPI_GetString(DllStructGetData($tCodec, "CodecName"))
$aInfo[$iI][4] = _WinAPI_GetString(DllStructGetData($tCodec, "DllName"))
$aInfo[$iI][5] = _WinAPI_GetString(DllStructGetData($tCodec, "FormatDesc"))
$aInfo[$iI][6] = _WinAPI_GetString(DllStructGetData($tCodec, "FileExt"))
$aInfo[$iI][7] = _WinAPI_GetString(DllStructGetData($tCodec, "MimeType"))
$aInfo[$iI][8] = DllStructGetData($tCodec, "Flags")
$aInfo[$iI][9] = DllStructGetData($tCodec, "Version")
$aInfo[$iI][10] = DllStructGetData($tCodec, "SigCount")
$aInfo[$iI][11] = DllStructGetData($tCodec, "SigSize")
$aInfo[$iI][12] = DllStructGetData($tCodec, "SigPattern")
$aInfo[$iI][13] = DllStructGetData($tCodec, "SigMask")
$pBuffer += DllStructGetSize($tCodec)
Next
Return $aInfo
EndFunc
Func _GDIPlus_DecodersGetCount()
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetImageDecodersSize", "uint*", 0, "uint*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[1]
EndFunc
Func _GDIPlus_DecodersGetSize()
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetImageDecodersSize", "uint*", 0, "uint*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_DrawImagePoints($hGraphic, $hImage, $nULX, $nULY, $nURX, $nURY, $nLLX, $nLLY, $iCount = 3)
Local $tPoint = DllStructCreate("float X;float Y;float X2;float Y2;float X3;float Y3")
DllStructSetData($tPoint, "X", $nULX)
DllStructSetData($tPoint, "Y", $nULY)
DllStructSetData($tPoint, "X2", $nURX)
DllStructSetData($tPoint, "Y2", $nURY)
DllStructSetData($tPoint, "X3", $nLLX)
DllStructSetData($tPoint, "Y3", $nLLY)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawImagePoints", "handle", $hGraphic, "handle", $hImage, "struct*", $tPoint, "int", $iCount)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_Encoders()
Local $iCount = _GDIPlus_EncodersGetCount()
Local $iSize = _GDIPlus_EncodersGetSize()
Local $tBuffer = DllStructCreate("byte[" & $iSize & "]")
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetImageEncoders", "uint", $iCount, "uint", $iSize, "struct*", $tBuffer)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Local $pBuffer = DllStructGetPtr($tBuffer)
Local $tCodec, $aInfo[$iCount + 1][14]
$aInfo[0][0] = $iCount
For $iI = 1 To $iCount
$tCodec = DllStructCreate($tagGDIPIMAGECODECINFO, $pBuffer)
$aInfo[$iI][1] = _WinAPI_StringFromGUID(DllStructGetPtr($tCodec, "CLSID"))
$aInfo[$iI][2] = _WinAPI_StringFromGUID(DllStructGetPtr($tCodec, "FormatID"))
$aInfo[$iI][3] = _WinAPI_GetString(DllStructGetData($tCodec, "CodecName"))
$aInfo[$iI][4] = _WinAPI_GetString(DllStructGetData($tCodec, "DllName"))
$aInfo[$iI][5] = _WinAPI_GetString(DllStructGetData($tCodec, "FormatDesc"))
$aInfo[$iI][6] = _WinAPI_GetString(DllStructGetData($tCodec, "FileExt"))
$aInfo[$iI][7] = _WinAPI_GetString(DllStructGetData($tCodec, "MimeType"))
$aInfo[$iI][8] = DllStructGetData($tCodec, "Flags")
$aInfo[$iI][9] = DllStructGetData($tCodec, "Version")
$aInfo[$iI][10] = DllStructGetData($tCodec, "SigCount")
$aInfo[$iI][11] = DllStructGetData($tCodec, "SigSize")
$aInfo[$iI][12] = DllStructGetData($tCodec, "SigPattern")
$aInfo[$iI][13] = DllStructGetData($tCodec, "SigMask")
$pBuffer += DllStructGetSize($tCodec)
Next
Return $aInfo
EndFunc
Func _GDIPlus_EncodersGetCLSID($sFileExtension)
Local $aEncoders = _GDIPlus_Encoders()
If @error Then Return SetError(@error, 0, "")
For $iI = 1 To $aEncoders[0][0]
If StringInStr($aEncoders[$iI][6], "*." & $sFileExtension) > 0 Then Return $aEncoders[$iI][1]
Next
Return SetError(-1, -1, "")
EndFunc
Func _GDIPlus_EncodersGetCount()
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetImageEncodersSize", "uint*", 0, "uint*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[1]
EndFunc
Func _GDIPlus_EncodersGetParamList($hImage, $sEncoder)
Local $iSize = _GDIPlus_EncodersGetParamListSize($hImage, $sEncoder)
If @error Then Return SetError(@error + 10, @extended, 0)
Local $tGUID = _WinAPI_GUIDFromString($sEncoder)
Local $iRemainingSize = $iSize - 4 - _GDIPlus_ParamSize()
Local $tBuffer
If $iRemainingSize Then
$tBuffer = DllStructCreate("dword Count;" & $tagGDIPENCODERPARAM & ";byte [" & $iRemainingSize & "]")
Else
$tBuffer = DllStructCreate("dword Count;" & $tagGDIPENCODERPARAM)
EndIf
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetEncoderParameterList", "handle", $hImage, "struct*", $tGUID, "uint", $iSize, "struct*", $tBuffer)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $tBuffer
EndFunc
Func _GDIPlus_EncodersGetParamListSize($hImage, $sEncoder)
Local $tGUID = _WinAPI_GUIDFromString($sEncoder)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetEncoderParameterListSize", "handle", $hImage, "struct*", $tGUID, "uint*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _GDIPlus_EncodersGetSize()
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetImageEncodersSize", "uint*", 0, "uint*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_FontCreate($hFamily, $fSize, $iStyle = 0, $iUnit = 3)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateFont", "handle", $hFamily, "float", $fSize, "int", $iStyle, "int", $iUnit, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[5]
EndFunc
Func _GDIPlus_FontDispose($hFont)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDeleteFont", "handle", $hFont)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_FontFamilyCreate($sFamily, $pCollection = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateFontFamilyFromName", "wstr", $sFamily, "ptr", $pCollection, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _GDIPlus_FontFamilyCreateFromCollection($sFontName, $hFontCollection)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateFontFamilyFromName", "wstr", $sFontName, "ptr", $hFontCollection, "ptr*", 0)
If @error Then Return SetError(@error, @extended, "")
If $aCall[0] Then Return SetError(10, $aCall[0], "")
Return $aCall[3]
EndFunc
Func _GDIPlus_FontFamilyDispose($hFamily)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDeleteFontFamily", "handle", $hFamily)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_FontFamilyGetCellAscent($hFontFamily, $iStyle = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetCellAscent", "handle", $hFontFamily, "int", $iStyle, "ushort*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _GDIPlus_FontFamilyGetCellDescent($hFontFamily, $iStyle = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetCellDescent", "handle", $hFontFamily, "int", $iStyle, "ushort*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _GDIPlus_FontFamilyGetEmHeight($hFontFamily, $iStyle = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetEmHeight", "handle", $hFontFamily, "int", $iStyle, "ushort*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _GDIPlus_FontFamilyGetLineSpacing($hFontFamily, $iStyle = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetLineSpacing", "handle", $hFontFamily, "int", $iStyle, "ushort*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _GDIPlus_FontGetHeight($hFont, $hGraphics)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetFontHeight", "handle", $hFont, "handle", $hGraphics, "float*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _GDIPlus_FontPrivateAddFont($hFontCollection, $sFontFile)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipPrivateAddFontFile", "ptr", $hFontCollection, "wstr", $sFontFile)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_FontPrivateAddMemoryFont($hFontCollection, $tFont)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipPrivateAddMemoryFont", "handle", $hFontCollection, "struct*", $tFont, "int", DllStructGetSize($tFont))
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_FontPrivateCollectionDispose($hFontCollection)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDeletePrivateFontCollection", "handle*", $hFontCollection)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_FontPrivateCreateCollection()
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipNewPrivateFontCollection", "ptr*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[1]
EndFunc
Func _GDIPlus_GraphicsClear($hGraphics, $iARGB = 0xFF000000)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGraphicsClear", "handle", $hGraphics, "dword", $iARGB)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsCreateFromHDC($hDC)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateFromHDC", "handle", $hDC, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_GraphicsCreateFromHWND($hWnd)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateFromHWND", "hwnd", $hWnd, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_GraphicsDispose($hGraphics)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDeleteGraphics", "handle", $hGraphics)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsDrawArc($hGraphics, $nX, $nY, $nWidth, $nHeight, $fStartAngle, $fSweepAngle, $hPen = 0)
__GDIPlus_PenDefCreate($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawArc", "handle", $hGraphics, "handle", $hPen, "float", $nX, "float", $nY,  "float", $nWidth, "float", $nHeight, "float", $fStartAngle, "float", $fSweepAngle)
__GDIPlus_PenDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsDrawBezier($hGraphics, $nX1, $nY1, $nX2, $nY2, $nX3, $nY3, $nX4, $nY4, $hPen = 0)
__GDIPlus_PenDefCreate($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawBezier", "handle", $hGraphics, "handle", $hPen, "float", $nX1, "float", $nY1,  "float", $nX2, "float", $nY2, "float", $nX3, "float", $nY3, "float", $nX4, "float", $nY4)
__GDIPlus_PenDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsDrawClosedCurve($hGraphics, $aPoints, $hPen = 0)
Local $iCount = $aPoints[0][0]
Local $tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], (($iI - 1) * 2) + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], (($iI - 1) * 2) + 2)
Next
__GDIPlus_PenDefCreate($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawClosedCurve", "handle", $hGraphics, "handle", $hPen, "struct*", $tPoints, "int", $iCount)
__GDIPlus_PenDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsDrawClosedCurve2($hGraphics, $aPoints, $nTension, $hPen = 0)
Local $iI, $iCount, $tPoints, $aCall
__GDIPlus_PenDefCreate($hPen)
$iCount = $aPoints[0][0]
$tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], (($iI - 1) * 2) + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], (($iI - 1) * 2) + 2)
Next
$aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawClosedCurve2", "handle", $hGraphics, "handle", $hPen, "struct*", $tPoints, "int", $iCount, "float", $nTension)
__GDIPlus_PenDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsDrawCurve($hGraphics, $aPoints, $hPen = 0)
Local $iCount = $aPoints[0][0]
Local $tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], (($iI - 1) * 2) + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], (($iI - 1) * 2) + 2)
Next
__GDIPlus_PenDefCreate($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawCurve", "handle", $hGraphics, "handle", $hPen, "struct*", $tPoints, "int", $iCount)
__GDIPlus_PenDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsDrawCurve2($hGraphics, $aPoints, $nTension, $hPen = 0)
Local $iI, $iCount, $tPoints, $aCall
__GDIPlus_PenDefCreate($hPen)
$iCount = $aPoints[0][0]
$tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], (($iI - 1) * 2) + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], (($iI - 1) * 2) + 2)
Next
$aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawCurve2", "handle", $hGraphics, "handle", $hPen, "struct*", $tPoints, "int", $iCount, "float", $nTension)
__GDIPlus_PenDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsDrawEllipse($hGraphics, $nX, $nY, $nWidth, $nHeight, $hPen = 0)
__GDIPlus_PenDefCreate($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawEllipse", "handle", $hGraphics, "handle", $hPen, "float", $nX, "float", $nY,  "float", $nWidth, "float", $nHeight)
__GDIPlus_PenDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsDrawImage($hGraphics, $hImage, $nX, $nY)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawImage", "handle", $hGraphics, "handle", $hImage, "float", $nX, "float", $nY)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsDrawImagePointsRect($hGraphics, $hImage, $nULX, $nULY, $nURX, $nURY, $nLLX, $nLLY, $nSrcX, $nSrcY, $nSrcWidth, $nSrcHeight, $hImageAttributes = 0, $iUnit = 2)
Local $tPoints = DllStructCreate("float X; float Y; float X2; float Y2; float X3; float Y3;")
DllStructSetData($tPoints, "X", $nULX)
DllStructSetData($tPoints, "Y", $nULY)
DllStructSetData($tPoints, "X2", $nURX)
DllStructSetData($tPoints, "Y2", $nURY)
DllStructSetData($tPoints, "X3", $nLLX)
DllStructSetData($tPoints, "Y3", $nLLY)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawImagePointsRect", "handle", $hGraphics, "handle", $hImage, "struct*", $tPoints, "int", 3, "float", $nSrcX, "float", $nSrcY, "float", $nSrcWidth, "float", $nSrcHeight, "int", $iUnit, "handle", $hImageAttributes, "ptr", 0, "ptr", 0)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsDrawImageRect($hGraphics, $hImage, $nX, $nY, $nW, $nH)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawImageRect", "handle", $hGraphics, "handle", $hImage, "float", $nX, "float", $nY,  "float", $nW, "float", $nH)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsDrawImageRectRect($hGraphics, $hImage, $nSrcX, $nSrcY, $nSrcWidth, $nSrcHeight, $nDstX, $nDstY, $nDstWidth, $nDstHeight, $pAttributes = 0, $iUnit = 2)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawImageRectRect", "handle", $hGraphics, "handle", $hImage,  "float", $nDstX, "float", $nDstY, "float", $nDstWidth, "float", $nDstHeight,  "float", $nSrcX, "float", $nSrcY, "float", $nSrcWidth, "float", $nSrcHeight,  "int", $iUnit, "handle", $pAttributes, "ptr", 0, "ptr", 0)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsDrawLine($hGraphics, $nX1, $nY1, $nX2, $nY2, $hPen = 0)
__GDIPlus_PenDefCreate($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawLine", "handle", $hGraphics, "handle", $hPen, "float", $nX1, "float", $nY1,  "float", $nX2, "float", $nY2)
__GDIPlus_PenDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsDrawPath($hGraphics, $hPath, $hPen = 0)
__GDIPlus_PenDefCreate($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawPath", "handle", $hGraphics, "handle", $hPen, "handle", $hPath)
__GDIPlus_PenDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsDrawPie($hGraphics, $nX, $nY, $nWidth, $nHeight, $fStartAngle, $fSweepAngle, $hPen = 0)
__GDIPlus_PenDefCreate($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawPie", "handle", $hGraphics, "handle", $hPen, "float", $nX, "float", $nY,  "float", $nWidth, "float", $nHeight, "float", $fStartAngle, "float", $fSweepAngle)
__GDIPlus_PenDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsDrawPolygon($hGraphics, $aPoints, $hPen = 0)
Local $iCount = $aPoints[0][0]
Local $tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], (($iI - 1) * 2) + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], (($iI - 1) * 2) + 2)
Next
__GDIPlus_PenDefCreate($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawPolygon", "handle", $hGraphics, "handle", $hPen, "struct*", $tPoints, "int", $iCount)
__GDIPlus_PenDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsDrawRect($hGraphics, $nX, $nY, $nWidth, $nHeight, $hPen = 0)
__GDIPlus_PenDefCreate($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawRectangle", "handle", $hGraphics, "handle", $hPen, "float", $nX, "float", $nY,  "float", $nWidth, "float", $nHeight)
__GDIPlus_PenDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsDrawString($hGraphics, $sString, $nX, $nY, $sFont = Default, $fSize = Default, $iFormat = Default, $iARGB = Default)
If $sFont = Default Then $sFont = "Arial"
If $fSize = Default Then $fSize = 10
If $iFormat = Default Then $iFormat = 0
If $iARGB = Default Then $iARGB = 0xFF000000
If BitAND($iARGB, 0xFF000000) = 0 Then $iARGB = BitOR($iARGB, 0xFF000000)
Local $hBrush = _GDIPlus_BrushCreateSolid($iARGB)
Local $hFormat = _GDIPlus_StringFormatCreate($iFormat)
Local $hFamily = _GDIPlus_FontFamilyCreate($sFont)
Local $hFont = _GDIPlus_FontCreate($hFamily, $fSize)
Local $tLayout = _GDIPlus_RectFCreate($nX, $nY, 0.0, 0.0)
Local $aInfo = _GDIPlus_GraphicsMeasureString($hGraphics, $sString, $hFont, $tLayout, $hFormat)
If @error Then Return SetError(@error, @extended, 0)
Local $aResult = _GDIPlus_GraphicsDrawStringEx($hGraphics, $sString, $hFont, $aInfo[0], $hFormat, $hBrush)
Local $iError = @error, $iExtended = @extended
_GDIPlus_FontDispose($hFont)
_GDIPlus_FontFamilyDispose($hFamily)
_GDIPlus_StringFormatDispose($hFormat)
_GDIPlus_BrushDispose($hBrush)
Return SetError($iError, $iExtended, $aResult)
EndFunc
Func _GDIPlus_GraphicsDrawStringEx($hGraphics, $sString, $hFont, $tLayout, $hFormat, $hBrush)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawString", "handle", $hGraphics, "wstr", $sString, "int", -1, "handle", $hFont,  "struct*", $tLayout, "handle", $hFormat, "handle", $hBrush)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsFillClosedCurve($hGraphics, $aPoints, $hBrush = 0)
Local $iCount = $aPoints[0][0]
Local $tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], (($iI - 1) * 2) + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], (($iI - 1) * 2) + 2)
Next
__GDIPlus_BrushDefCreate($hBrush)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipFillClosedCurve", "handle", $hGraphics, "handle", $hBrush, "struct*", $tPoints, "int", $iCount)
__GDIPlus_BrushDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsFillClosedCurve2($hGraphics, $aPoints, $nTension, $hBrush = 0, $iFillMode = 0)
Local $iI, $iCount, $tPoints, $aCall
__GDIPlus_BrushDefCreate($hBrush)
$iCount = $aPoints[0][0]
$tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], (($iI - 1) * 2) + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], (($iI - 1) * 2) + 2)
Next
$aCall = DllCall($__g_hGDIPDll, "int", "GdipFillClosedCurve2", "handle", $hGraphics, "handle", $hBrush, "struct*", $tPoints, "int", $iCount, "float", $nTension, "int", $iFillMode)
__GDIPlus_BrushDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsFillEllipse($hGraphics, $nX, $nY, $nWidth, $nHeight, $hBrush = 0)
__GDIPlus_BrushDefCreate($hBrush)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipFillEllipse", "handle", $hGraphics, "handle", $hBrush, "float", $nX, "float", $nY,  "float", $nWidth, "float", $nHeight)
__GDIPlus_BrushDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsFillPath($hGraphics, $hPath, $hBrush = 0)
__GDIPlus_BrushDefCreate($hBrush)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipFillPath", "handle", $hGraphics, "handle", $hBrush, "handle", $hPath)
__GDIPlus_BrushDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsFillPie($hGraphics, $nX, $nY, $nWidth, $nHeight, $fStartAngle, $fSweepAngle, $hBrush = 0)
__GDIPlus_BrushDefCreate($hBrush)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipFillPie", "handle", $hGraphics, "handle", $hBrush, "float", $nX, "float", $nY,  "float", $nWidth, "float", $nHeight, "float", $fStartAngle, "float", $fSweepAngle)
__GDIPlus_BrushDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsFillPolygon($hGraphics, $aPoints, $hBrush = 0)
Local $iCount = $aPoints[0][0]
Local $tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], (($iI - 1) * 2) + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], (($iI - 1) * 2) + 2)
Next
__GDIPlus_BrushDefCreate($hBrush)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipFillPolygon", "handle", $hGraphics, "handle", $hBrush,  "struct*", $tPoints, "int", $iCount, "int", "FillModeAlternate")
__GDIPlus_BrushDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsFillRect($hGraphics, $nX, $nY, $nWidth, $nHeight, $hBrush = 0)
__GDIPlus_BrushDefCreate($hBrush)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipFillRectangle", "handle", $hGraphics, "handle", $hBrush, "float", $nX, "float", $nY,  "float", $nWidth, "float", $nHeight)
__GDIPlus_BrushDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsFillRegion($hGraphics, $hRegion, $hBrush = 0)
__GDIPlus_BrushDefCreate($hBrush)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipFillRegion", "handle", $hGraphics, "handle", $hBrush, "handle", $hRegion)
__GDIPlus_BrushDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsGetCompositingMode($hGraphics)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetCompositingMode", "handle", $hGraphics, "int*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_GraphicsGetCompositingQuality($hGraphics)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetCompositingQuality", "handle", $hGraphics, "int*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_GraphicsGetDC($hGraphics)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetDC", "handle", $hGraphics, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_GraphicsGetInterpolationMode($hGraphics)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetInterpolationMode", "handle", $hGraphics, "int*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_GraphicsGetSmoothingMode($hGraphics)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetSmoothingMode", "handle", $hGraphics, "int*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Switch $aCall[2]
Case $GDIP_SMOOTHINGMODE_NONE
Return 0
Case $GDIP_SMOOTHINGMODE_HIGHQUALITY, $GDIP_SMOOTHINGMODE_ANTIALIAS8X4
Return 1
Case $GDIP_SMOOTHINGMODE_ANTIALIAS8X8
Return 2
Case Else
Return 0
EndSwitch
EndFunc
Func _GDIPlus_GraphicsGetTransform($hGraphics, $hMatrix)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetWorldTransform", "handle", $hGraphics, "handle", $hMatrix)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsMeasureCharacterRanges($hGraphics, $sString, $hFont, $tLayout, $hStringFormat)
Local $iCount = _GDIPlus_StringFormatGetMeasurableCharacterRangeCount($hStringFormat)
If @error Then Return SetError(@error, @extended, 0)
Local $tRegions = DllStructCreate("handle[" & $iCount & "]")
Local $aRegions[$iCount + 1] = [$iCount]
For $iI = 1 To $iCount
$aRegions[$iI] = _GDIPlus_RegionCreate()
DllStructSetData($tRegions, 1, $aRegions[$iI], $iI)
Next
DllCall($__g_hGDIPDll, "int", "GdipMeasureCharacterRanges", "handle", $hGraphics, "wstr", $sString, "int", -1, "hwnd", $hFont, "struct*", $tLayout, "handle", $hStringFormat, "int", $iCount, "struct*", $tRegions)
Local $iError = @error, $iExtended = @extended
If $iError Then
For $iI = 1 To $iCount
_GDIPlus_RegionDispose($aRegions[$iI])
Next
Return SetError($iError + 10, $iExtended, 0)
EndIf
Return $aRegions
EndFunc
Func _GDIPlus_GraphicsMeasureString($hGraphics, $sString, $hFont, $tLayout, $hFormat)
Local $tRECTF = DllStructCreate($tagGDIPRECTF)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipMeasureString", "handle", $hGraphics, "wstr", $sString, "int", -1, "handle", $hFont,  "struct*", $tLayout, "handle", $hFormat, "struct*", $tRECTF, "int*", 0, "int*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Local $aInfo[3]
$aInfo[0] = $tRECTF
$aInfo[1] = $aCall[8]
$aInfo[2] = $aCall[9]
Return $aInfo
EndFunc
Func _GDIPlus_GraphicsReleaseDC($hGraphics, $hDC)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipReleaseDC", "handle", $hGraphics, "handle", $hDC)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_GraphicsResetClip($hGraphics)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipResetClip", "handle", $hGraphics)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsResetTransform($hGraphics)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipResetWorldTransform", "handle", $hGraphics)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsRestore($hGraphics, $iState)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipRestoreGraphics", "handle", $hGraphics, "uint", $iState)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsRotateTransform($hGraphics, $fAngle, $iOrder = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipRotateWorldTransform", "handle", $hGraphics, "float", $fAngle, "int", $iOrder)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsSave($hGraphics)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSaveGraphics", "handle", $hGraphics, "uint*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_GraphicsScaleTransform($hGraphics, $fScaleX, $fScaleY, $iOrder = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipScaleWorldTransform", "handle", $hGraphics, "float", $fScaleX, "float", $fScaleY, "int", $iOrder)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsSetClipPath($hGraphics, $hPath, $iCombineMode = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetClipPath", "handle", $hGraphics, "handle", $hPath, "int", $iCombineMode)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsSetClipRect($hGraphics, $nX, $nY, $nWidth, $nHeight, $iCombineMode = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetClipRect", "handle", $hGraphics, "float", $nX, "float", $nY, "float", $nWidth, "float", $nHeight, "int", $iCombineMode)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsSetClipRegion($hGraphics, $hRegion, $iCombineMode = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetClipRegion", "handle", $hGraphics, "handle", $hRegion, "int", $iCombineMode)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsSetCompositingMode($hGraphics, $iCompositionMode)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetCompositingMode", "handle", $hGraphics, "int", $iCompositionMode)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsSetCompositingQuality($hGraphics, $iCompositionQuality)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetCompositingQuality", "handle", $hGraphics, "int", $iCompositionQuality)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsSetInterpolationMode($hGraphics, $iInterpolationMode)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetInterpolationMode", "handle", $hGraphics, "int", $iInterpolationMode)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsSetPixelOffsetMode($hGraphics, $iPixelOffsetMode)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPixelOffsetMode", "handle", $hGraphics, "int", $iPixelOffsetMode)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsSetSmoothingMode($hGraphics, $iSmooth)
If $iSmooth < $GDIP_SMOOTHINGMODE_DEFAULT Or $iSmooth > $GDIP_SMOOTHINGMODE_ANTIALIAS8X8 Then $iSmooth = $GDIP_SMOOTHINGMODE_DEFAULT
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetSmoothingMode", "handle", $hGraphics, "int", $iSmooth)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsSetTextRenderingHint($hGraphics, $iTextRenderingHint)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetTextRenderingHint", "handle", $hGraphics, "int", $iTextRenderingHint)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsSetTransform($hGraphics, $hMatrix)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetWorldTransform", "handle", $hGraphics, "handle", $hMatrix)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_GraphicsTransformPoints($hGraphics, ByRef $aPoints, $iCoordSpaceTo = 0, $iCoordSpaceFrom = 1)
Local $iCount = $aPoints[0][0]
Local $tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], ($iI - 1) * 2 + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], ($iI - 1) * 2 + 2)
Next
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipTransformPoints", "handle", $hGraphics, "int", $iCoordSpaceTo, "int", $iCoordSpaceFrom, "struct*", $tPoints, "int", $iCount)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
For $iI = 1 To $iCount
$aPoints[$iI][0] = DllStructGetData($tPoints, 1, ($iI - 1) * 2 + 1)
$aPoints[$iI][1] = DllStructGetData($tPoints, 1, ($iI - 1) * 2 + 2)
Next
Return True
EndFunc
Func _GDIPlus_GraphicsTranslateTransform($hGraphics, $nDX, $nDY, $iOrder = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipTranslateWorldTransform", "handle", $hGraphics, "float", $nDX, "float", $nDY, "int", $iOrder)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_HatchBrushCreate($iHatchStyle = 0, $iARGBForeground = 0xFFFFFFFF, $iARGBBackground = 0xFFFFFFFF)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateHatchBrush", "int", $iHatchStyle, "uint", $iARGBForeground, "uint", $iARGBBackground, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[4]
EndFunc
Func _GDIPlus_HICONCreateFromBitmap($hBitmap)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateHICONFromBitmap", "handle", $hBitmap, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_ImageAttributesCreate()
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateImageAttributes", "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[1]
EndFunc
Func _GDIPlus_ImageAttributesDispose($hImageAttributes)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDisposeImageAttributes", "handle", $hImageAttributes)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ImageAttributesSetColorKeys($hImageAttributes, $iColorAdjustType = 0, $bEnable = False, $iARGBLow = 0, $iARGBHigh = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetImageAttributesColorKeys", "handle", $hImageAttributes, "int", $iColorAdjustType, "int", $bEnable, "uint", $iARGBLow, "uint", $iARGBHigh)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ImageAttributesSetColorMatrix($hImageAttributes, $iColorAdjustType = 0, $bEnable = False, $tClrMatrix = 0, $tGrayMatrix = 0, $iColorMatrixFlags = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetImageAttributesColorMatrix", "handle", $hImageAttributes, "int", $iColorAdjustType, "int", $bEnable, "struct*", $tClrMatrix, "struct*", $tGrayMatrix, "int", $iColorMatrixFlags)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ImageAttributesSetRemapTable($hImageAttributes, $aColorMap = 0, $iColorAdjustType = 0, $bEnable = True)
Local $aCall
If IsArray($aColorMap) Then
Local $iCount = $aColorMap[0][0]
Local $tColorMap = DllStructCreate("uint[" & $iCount * 2 & "]")
For $i = 1 To $iCount
DllStructSetData($tColorMap, 1, $aColorMap[$i][0], ($i - 1) * 2 + 1)
DllStructSetData($tColorMap, 1, $aColorMap[$i][1], ($i - 1) * 2 + 2)
Next
$aCall = DllCall($__g_hGDIPDll, "int", "GdipSetImageAttributesRemapTable", "handle", $hImageAttributes, "int", $iColorAdjustType, "int", $bEnable, "int", $iCount, "struct*", $tColorMap)
Else
$aCall = DllCall($__g_hGDIPDll, "int", "GdipSetImageAttributesRemapTable", "handle", $hImageAttributes, "int", $iColorAdjustType, "int", $bEnable, "int", 0, "struct*", 0)
EndIf
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ImageAttributesSetThreshold($hImageAttributes, $fThreshold, $iColorAdjustType = $GDIP_COLORADJUSTTYPE_DEFAULT, $bEnable = True)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetImageAttributesThreshold", "handle", $hImageAttributes, "int", $iColorAdjustType, "bool", $bEnable, "float", $fThreshold)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ImageClone($hImage)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCloneImage", "handle", $hImage, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_ImageDispose($hImage)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDisposeImage", "handle", $hImage)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ImageGetDimension($hImage)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetImageDimension", "handle", $hImage, "float*", 0, "float*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Local $aImgDim[2] = [$aCall[2], $aCall[3]]
Return $aImgDim
EndFunc
Func _GDIPlus_ImageGetFlags($hImage)
Local $aFlag[2] = [0, ""]
If ($hImage = -1) Or (Not $hImage) Then Return SetError(11, 0, $aFlag)
Local $aImageFlags[13][2] =  [["Pixel data Cacheable", $GDIP_IMAGEFLAGS_CACHING],  ["Pixel data read-only", $GDIP_IMAGEFLAGS_READONLY],  ["Pixel size in image", $GDIP_IMAGEFLAGS_HASREALPIXELSIZE],  ["DPI info in image", $GDIP_IMAGEFLAGS_HASREALDPI],  ["YCCK color space", $GDIP_IMAGEFLAGS_COLORSPACE_YCCK],  ["YCBCR color space", $GDIP_IMAGEFLAGS_COLORSPACE_YCBCR],  ["Grayscale image", $GDIP_IMAGEFLAGS_COLORSPACE_GRAY],  ["CMYK color space", $GDIP_IMAGEFLAGS_COLORSPACE_CMYK],  ["RGB color space", $GDIP_IMAGEFLAGS_COLORSPACE_RGB],  ["Partially scalable", $GDIP_IMAGEFLAGS_PARTIALLYSCALABLE],  ["Alpha values other than 0 (transparent) and 255 (opaque)", $GDIP_IMAGEFLAGS_HASTRANSLUCENT],  ["Alpha values", $GDIP_IMAGEFLAGS_HASALPHA],  ["Scalable", $GDIP_IMAGEFLAGS_SCALABLE]]
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetImageFlags", "handle", $hImage, "long*", 0)
If @error Then Return SetError(@error, @extended, $aFlag)
If $aCall[0] Then Return SetError(10, $aCall[0], $aFlag)
If $aCall[2] = $GDIP_IMAGEFLAGS_NONE Then
$aFlag[1] = "No pixel data"
Return SetError(12, $aCall[2], $aFlag)
EndIf
$aFlag[0] = $aCall[2]
For $i = 0 To 12
If BitAND($aCall[2], $aImageFlags[$i][1]) = $aImageFlags[$i][1] Then
If StringLen($aFlag[1]) Then $aFlag[1] &= "|"
$aCall[2] -= $aImageFlags[$i][1]
$aFlag[1] &= $aImageFlags[$i][0]
EndIf
Next
Return $aFlag
EndFunc
Func _GDIPlus_ImageGetFrameCount($hImage, $sDimensionID)
Local $tGUID = _WinAPI_GUIDFromString($sDimensionID)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipImageGetFrameCount", "handle", $hImage, "struct*", $tGUID, "uint*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[3]
EndFunc
Func _GDIPlus_ImageGetGraphicsContext($hImage)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetImageGraphicsContext", "handle", $hImage, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_ImageGetHeight($hImage)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetImageHeight", "handle", $hImage, "uint*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_ImageGetHorizontalResolution($hImage)
If ($hImage = -1) Or (Not $hImage) Then Return SetError(11, 0, 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetImageHorizontalResolution", "handle", $hImage, "float*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return Round($aCall[2])
EndFunc
Func _GDIPlus_ImageGetPixelFormat($hImage)
Local $aFormat[2] = [0, ""]
If ($hImage = -1) Or (Not $hImage) Then Return SetError(11, 0, $aFormat)
Local $aPixelFormat[14][2] =  [["1 Bpp Indexed", $GDIP_PXF01INDEXED],  ["4 Bpp Indexed", $GDIP_PXF04INDEXED],  ["8 Bpp Indexed", $GDIP_PXF08INDEXED],  ["16 Bpp Grayscale", $GDIP_PXF16GRAYSCALE],  ["16 Bpp RGB 555", $GDIP_PXF16RGB555],  ["16 Bpp RGB 565", $GDIP_PXF16RGB565],  ["16 Bpp ARGB 1555", $GDIP_PXF16ARGB1555],  ["24 Bpp RGB", $GDIP_PXF24RGB],  ["32 Bpp RGB", $GDIP_PXF32RGB],  ["32 Bpp ARGB", $GDIP_PXF32ARGB],  ["32 Bpp PARGB", $GDIP_PXF32PARGB],  ["48 Bpp RGB", $GDIP_PXF48RGB],  ["64 Bpp ARGB", $GDIP_PXF64ARGB],  ["64 Bpp PARGB", $GDIP_PXF64PARGB]]
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetImagePixelFormat", "handle", $hImage, "int*", 0)
If @error Then Return SetError(@error, @extended, $aFormat)
If $aCall[0] Then Return SetError(10, $aCall[0], $aFormat)
For $i = 0 To 13
If $aPixelFormat[$i][1] = $aCall[2] Then
$aFormat[0] = $aPixelFormat[$i][1]
$aFormat[1] = $aPixelFormat[$i][0]
Return $aFormat
EndIf
Next
Return SetError(12, 0, $aFormat)
EndFunc
Func __GDIPlus_ImageGetPropertyCount($hImage)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPropertyCount", "handle", $hImage, "uint*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_ImageGetPropertyIdList($hImage)
Local $iCount = __GDIPlus_ImageGetPropertyCount($hImage)
If @error Then Return SetError(@error, @extended, False)
Local $tProperties = DllStructCreate("uint[" & $iCount & "]")
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPropertyIdList", "handle", $hImage, "int", $iCount, "struct*", $tProperties)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Local $sPropertyTagInfo = "0x0000=GpsVer;0x0001=GpsLatitudeRef;0x0002=GpsLatitude;0x0003=GpsLongitudeRef;0x0004=GpsLongitude;0x0005=GpsAltitudeRef;0x0006=GpsAltitude;0x0007=GpsGpsTime;0x0008=GpsGpsSatellites;0x0009=GpsGpsStatus;0x000A=GpsGpsMeasureMode;0x000B=GpsGpsDop;0x000C=GpsSpeedRef;0x000D=GpsSpeed;0x000E=GpsTrackRef;0x000F=GpsTrack;0x0010=GpsImgDirRef;0x0011=GpsImgDir;0x0012=GpsMapDatum;0x0013=GpsDestLatRef;0x0014=GpsDestLat;0x0015=GpsDestLongRef;0x0016=GpsDestLong;0x0017=GpsDestBearRef;0x0018=GpsDestBear;0x0019=GpsDestDistRef;0x001A=GpsDestDist;0x00FE=NewSubfileType;0x00FF=SubfileType;0x0100=ImageWidth;0x0101=ImageHeight;0x0102=BitsPerSample;0x0103=Compression;0x0106=PhotometricInterp;0x0107=ThreshHolding;0x0108=CellWidth;0x0109=CellHeight;0x010A=FillOrder;0x010D=DocumentName;0x010E=ImageDescription;0x010F=EquipMake;0x0110=EquipModel;0x0111=StripOffsets;0x0112=Orientation;0x0115=SamplesPerPixel;0x0116=RowsPerStrip;0x0117=StripBytesCount;0x0118=MinSampleValue;0x0119=MaxSampleValue;0x011A=XResolution;0x011B=YResolution;0x011C=PlanarConfig;0x011D=PageName;0x011E=XPosition;0x011F=YPosition;0x0120=FreeOffset;0x0121=FreeByteCounts;0x0122=GrayResponseUnit;0x0123=GrayResponseCurve;0x0124=T4Option;0x0125=T6Option;0x0128=ResolutionUnit;0x0129=PageNumber;0x012D=TransferFunction;0x0131=SoftwareUsed;0x0132=DateTime;0x013B=Artist;0x013C=HostComputer;0x013D=Predictor;0x013E=WhitePoint;0x013F=PrimaryChromaticities;0x0140=ColorMap;0x0141=HalftoneHints;0x0142=TileWidth;0x0143=TileLength;0x0144=TileOffset;0x0145=TileByteCounts;0x014C=InkSet;0x014D=InkNames;0x014E=NumberOfInks;0x0150=DotRange;0x0151=TargetPrinter;0x0152=ExtraSamples;0x0153=SampleFormat;0x0154=SMinSampleValue;0x0155=SMaxSampleValue;0x0156=TransferRange;0x0200=JPEGProc;0x0201=JPEGInterFormat;0x0202=JPEGInterLength;0x0203=JPEGRestartInterval;0x0205=JPEGLosslessPredictors;0x0206=JPEGPointTransforms;0x0207=JPEGQTables;0x0208=JPEGDCTables;0x0209=JPEGACTables;0x0211=YCbCrCoefficients;0x0212=YCbCrSubsampling;0x0213=YCbCrPositioning;0x0214=REFBlackWhite;0x0301=Gamma;0x0302=ICCProfileDescriptor;0x0303=SRGBRenderingIntent;0x0320=ImageTitle;0x5001=ResolutionXUnit;0x5002=ResolutionYUnit;0x5003=ResolutionXLengthUnit;0x5004=ResolutionYLengthUnit;0x5005=PrintFlags;0x5006=PrintFlagsVersion;0x5007=PrintFlagsCrop;0x5008=PrintFlagsBleedWidth;0x5009=PrintFlagsBleedWidthScale;0x500A=HalftoneLPI;0x500B=HalftoneLPIUnit;0x500C=HalftoneDegree;" & _
"0x500D=HalftoneShape;0x500E=HalftoneMisc;0x500F=HalftoneScreen;0x5010=JPEGQuality;0x5011=GridSize;0x5012=ThumbnailFormat;0x5013=ThumbnailWidth;0x5014=ThumbnailHeight;0x5015=ThumbnailColorDepth;0x5016=ThumbnailPlanes;0x5017=ThumbnailRawBytes;0x5018=ThumbnailSize;0x5019=ThumbnailCompressedSize;0x501A=ColorTransferFunction;0x501B=ThumbnailData;0x5020=ThumbnailImageWidth;0x5021=ThumbnailImageHeight;0x5022=ThumbnailBitsPerSample;0x5023=ThumbnailCompression;0x5024=ThumbnailPhotometricInterp;0x5025=ThumbnailImageDescription;0x5026=ThumbnailEquipMake;0x5027=ThumbnailEquipModel;0x5028=ThumbnailStripOffsets;0x5029=ThumbnailOrientation;0x502A=ThumbnailSamplesPerPixel;0x502B=ThumbnailRowsPerStrip;0x502C=ThumbnailStripBytesCount;0x502D=ThumbnailResolutionX;0x502E=ThumbnailResolutionY;0x502F=ThumbnailPlanarConfig;0x5030=ThumbnailResolutionUnit;0x5031=ThumbnailTransferFunction;0x5032=ThumbnailSoftwareUsed;0x5033=ThumbnailDateTime;0x5034=ThumbnailArtist;0x5035=ThumbnailWhitePoint;0x5036=ThumbnailPrimaryChromaticities;0x5037=ThumbnailYCbCrCoefficients;0x5038=ThumbnailYCbCrSubsampling;0x5039=ThumbnailYCbCrPositioning;0x503A=ThumbnailRefBlackWhite;0x503B=ThumbnailCopyRight;0x5090=LuminanceTable;0x5091=ChrominanceTable;0x5100=FrameDelay;0x5101=LoopCount;0x5102=GlobalPalette;0x5103=IndexBackground;0x5104=IndexTransparent;0x5110=PixelUnit;0x5111=PixelPerUnitX;0x5112=PixelPerUnitY;0x5113=PaletteHistogram;0x8298=Copyright;0x829A=ExifExposureTime;0x829D=ExifFNumber;0x8769=ExifIFD;0x8773=ICCProfile;0x8822=ExifExposureProg;0x8824=ExifSpectralSense;0x8825=GpsIFD;0x8827=ExifISOSpeed;0x8828=ExifOECF;0x9000=ExifVer;0x9003=ExifDTOrig;0x9004=ExifDTDigitized;0x9101=ExifCompConfig;0x9102=ExifCompBPP;0x9201=ExifShutterSpeed;0x9202=ExifAperture;0x9203=ExifBrightness;0x9204=ExifExposureBias;0x9205=ExifMaxAperture;0x9206=ExifSubjectDist;0x9207=ExifMeteringMode;0x9208=ExifLightSource;0x9209=ExifFlash;0x920A=ExifFocalLength;0x927C=ExifMakerNote;0x9286=ExifUserComment;0x9290=ExifDTSubsec;0x9291=ExifDTOrigSS;0x9292=ExifDTDigSS;0xA000=ExifFPXVer;0xA001=ExifColorSpace;0xA002=ExifPixXDim;0xA003=ExifPixYDim;0xA004=ExifRelatedWav;0xA005=ExifInterop;0xA20B=ExifFlashEnergy;0xA20C=ExifSpatialFR;0xA20E=ExifFocalXRes;0xA20F=ExifFocalYRes;0xA210=ExifFocalResUnit;0xA214=ExifSubjectLoc;0xA215=ExifExposureIndex;0xA217=ExifSensingMethod;0xA300=ExifFileSource;0xA301=ExifSceneType;0xA302=ExifCfaPattern"
Local $aProperties[$iCount + 1][2] = [[$iCount]]
Local $aRegExp
For $i = 1 To $iCount
$aProperties[$i][0] = DllStructGetData($tProperties, 1, $i)
$aRegExp = StringRegExp($sPropertyTagInfo, "(?i)" & Hex(DllStructGetData($tProperties, 1, $i), 4) & "=(\w+)", $STR_REGEXPARRAYGLOBALMATCH)
Switch IsArray($aRegExp)
Case True
$aProperties[$i][1] = $aRegExp[0]
Case Else
$aProperties[$i][1] = "PropertyTagUnKnown"
EndSwitch
Next
Return $aProperties
EndFunc
Func __GDIPlus_ImageGetPropertyItemSize($hImage, $iPropID)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPropertyItemSize", "handle", $hImage, "uint", $iPropID, "uint*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[3]
EndFunc
Func _GDIPlus_ImageGetPropertyItem($hImage, $iPropID)
Local $iSize = __GDIPlus_ImageGetPropertyItemSize($hImage, $iPropID)
If @error Then Return SetError(@error, @extended, False)
Local $tBuffer = DllStructCreate("byte[" & $iSize & "];")
Local $pBuffer = DllStructGetPtr($tBuffer)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPropertyItem", "handle", $hImage, "uint", $iPropID, "uint", $iSize, "struct*", $tBuffer)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Local $tPropertyItem = DllStructCreate("int id; int length; short type; ptr value;", $pBuffer)
Local $iBytes = DllStructGetData($tPropertyItem, "length")
Local $pValue = DllStructGetData($tPropertyItem, "value")
Local $tValues, $iValues
Switch DllStructGetData($tPropertyItem, "type")
Case 2
$iValues = 1
$tValues = DllStructCreate("char[" & $iBytes & "];", $pValue)
Case 3
$iValues = Int($iBytes / 2)
$tValues = DllStructCreate("ushort[" & $iValues & "];", $pValue)
Case 4, 5
$iValues = Int($iBytes / 4)
$tValues = DllStructCreate("uint[" & $iValues & "];", $pValue)
Case 9, 10
$iValues = Int($iBytes / 4)
$tValues = DllStructCreate("int[" & $iValues & "];", $pValue)
Case Else
$iValues = 1
$tValues = DllStructCreate("byte[" & $iBytes & "];", $pValue)
EndSwitch
Local $aValues[$iValues + 1] = [$iValues]
Switch DllStructGetData($tPropertyItem, "type")
Case 5, 10
$iValues = Int($iValues / 2)
ReDim $aValues[$iValues + 1]
$aValues[0] = $iValues
For $j = 1 To $iValues
$aValues[$j] = DllStructGetData($tValues, 1, ($j - 1) * 2 + 1) / DllStructGetData($tValues, 1, ($j - 1) * 2 + 2)
Next
Case 3, 4, 9
For $j = 1 To $iValues
$aValues[$j] = DllStructGetData($tValues, 1, $j)
Next
Case Else
$aValues[1] = DllStructGetData($tValues, 1)
EndSwitch
Return $aValues
EndFunc
Func _GDIPlus_ImageGetRawFormat($hImage)
Local $aGuid[2]
If ($hImage = -1) Or (Not $hImage) Then Return SetError(11, 0, $aGuid)
Local $aImageType[11][2] =  [["UNDEFINED", $GDIP_IMAGEFORMAT_UNDEFINED],  ["MEMORYBMP", $GDIP_IMAGEFORMAT_MEMORYBMP],  ["BMP", $GDIP_IMAGEFORMAT_BMP],  ["EMF", $GDIP_IMAGEFORMAT_EMF],  ["WMF", $GDIP_IMAGEFORMAT_WMF],  ["JPEG", $GDIP_IMAGEFORMAT_JPEG],  ["PNG", $GDIP_IMAGEFORMAT_PNG],  ["GIF", $GDIP_IMAGEFORMAT_GIF],  ["TIFF", $GDIP_IMAGEFORMAT_TIFF],  ["EXIF", $GDIP_IMAGEFORMAT_EXIF],  ["ICON", $GDIP_IMAGEFORMAT_ICON]]
Local $tStruct = DllStructCreate("byte[16]")
Local $aCall1 = DllCall($__g_hGDIPDll, "int", "GdipGetImageRawFormat", "handle", $hImage, "struct*", $tStruct)
If @error Then Return SetError(@error, @extended, $aGuid)
If $aCall1[0] Then Return SetError(10, $aCall1[0], $aGuid)
Local $sResult2 = _WinAPI_StringFromGUID($aCall1[2])
If @error Then Return SetError(@error + 20, @extended, $aGuid)
If $sResult2 = "" Then Return SetError(12, 0, $aGuid)
For $i = 0 To 10
If $aImageType[$i][1] == $sResult2 Then
$aGuid[0] = $aImageType[$i][1]
$aGuid[1] = $aImageType[$i][0]
Return $aGuid
EndIf
Next
Return SetError(13, 0, $aGuid)
EndFunc
Func _GDIPlus_ImageGetThumbnail($hImage, $iWidth = 0, $iHeight = 0, $bKeepRatio = True, $hCallback = Null, $hCallbackData = Null)
If $bKeepRatio Then
Local $aImgDim = _GDIPlus_ImageGetDimension($hImage)
If @error Then Return SetError(@error + 20, @extended, False)
Local $f
If $iWidth < 1 Or $iHeight < 1 Then
$iWidth = 0
$iHeight = 0
Else
If ($aImgDim[0] / $aImgDim[1]) > 1 Then
$f = $aImgDim[0] / $iWidth
Else
$f = $aImgDim[1] / $iHeight
EndIf
$iWidth = Int($aImgDim[0] / $f)
$iHeight = Int($aImgDim[1] / $f)
EndIf
EndIf
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetImageThumbnail", "handle", $hImage, "uint", $iWidth, "uint", $iHeight, "ptr*", 0, "ptr", $hCallback, "ptr", $hCallbackData)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return $aCall[4]
EndFunc
Func _GDIPlus_ImageGetType($hImage)
If ($hImage = -1) Or (Not $hImage) Then Return SetError(11, 0, -1)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetImageType", "handle", $hImage, "int*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_ImageGetVerticalResolution($hImage)
If ($hImage = -1) Or (Not $hImage) Then Return SetError(11, 0, 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetImageVerticalResolution", "handle", $hImage, "float*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return Round($aCall[2])
EndFunc
Func _GDIPlus_ImageGetWidth($hImage)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetImageWidth", "handle", $hImage, "uint*", -1)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_ImageLoadFromFile($sFileName)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipLoadImageFromFile", "wstr", $sFileName, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_ImageLoadFromStream($pStream)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipLoadImageFromStream", "ptr", $pStream, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_ImageRotateFlip($hImage, $iRotateFlipType)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipImageRotateFlip", "handle", $hImage, "int", $iRotateFlipType)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ImageSaveAdd($hImage, $tParams)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSaveAdd", "handle", $hImage, "struct*", $tParams)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ImageSaveAddImage($hImage, $hImageNew, $tParams)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSaveAddImage", "handle", $hImage, "handle", $hImageNew, "struct*", $tParams)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ImageSaveToFile($hImage, $sFileName)
Local $sExt = __GDIPlus_ExtractFileExt($sFileName)
Local $sCLSID = _GDIPlus_EncodersGetCLSID($sExt)
If $sCLSID = "" Then Return SetError(-1, 0, False)
Local $bRet = _GDIPlus_ImageSaveToFileEx($hImage, $sFileName, $sCLSID, 0)
Return SetError(@error, @extended, $bRet)
EndFunc
Func _GDIPlus_ImageSaveToFileEx($hImage, $sFileName, $sEncoder, $tParams = 0)
Local $tGUID = _WinAPI_GUIDFromString($sEncoder)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSaveImageToFile", "handle", $hImage, "wstr", $sFileName, "struct*", $tGUID, "struct*", $tParams)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ImageSaveToStream($hImage, $pStream, $tEncoder, $tParams = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSaveImageToStream", "handle", $hImage, "ptr", $pStream, "struct*", $tEncoder, "struct*", $tParams)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ImageScale($hImage, $iScaleW, $iScaleH, $iInterpolationMode = $GDIP_INTERPOLATIONMODE_HIGHQUALITYBICUBIC)
Local $iWidth = _GDIPlus_ImageGetWidth($hImage)
If @error Then Return SetError(1, 0, 0)
Local $iHeight = _GDIPlus_ImageGetHeight($hImage)
If @error Then Return SetError(2, 0, 0)
Local $iNewWidth = $iWidth * $iScaleW
Local $iNewHeight = $iHeight * $iScaleH
Local $hBitmap = _GDIPlus_BitmapCreateFromScan0($iNewWidth, $iNewHeight)
If @error Then Return SetError(3, 0, 0)
Local $hBmpCtxt = _GDIPlus_ImageGetGraphicsContext($hBitmap)
_GDIPlus_GraphicsSetInterpolationMode($hBmpCtxt, $iInterpolationMode)
_GDIPlus_GraphicsSetPixelOffsetMode($hBmpCtxt, $GDIP_PIXELOFFSETMODE_HIGHQUALITY)
Local $hIA = _GDIPlus_ImageAttributesCreate()
__GDIPlus_ImageAttributesSetImageWrapMode($hIA)
If @error Then
_GDIPlus_ImageAttributesDispose($hIA)
_GDIPlus_GraphicsDispose($hBmpCtxt)
_GDIPlus_BitmapDispose($hBitmap)
Return SetError(4, 0, 0)
EndIf
_GDIPlus_GraphicsDrawImageRectRect($hBmpCtxt, $hImage, 0, 0, $iWidth, $iHeight, 0, 0, $iNewWidth, $iNewHeight, $hIA)
_GDIPlus_ImageAttributesDispose($hIA)
_GDIPlus_GraphicsDispose($hBmpCtxt)
Return $hBitmap
EndFunc
Func __GDIPlus_ImageAttributesSetImageWrapMode($hImageAttributes, $iWrapMode = $GDIP_WrapModeTileFlipXY, $iColor = 0xFF000000)
Local $aResult = DllCall($__g_hGDIPDll, "int", "GdipSetImageAttributesWrapMode", "handle", $hImageAttributes,  "long", $iWrapMode, "uint", $iColor, "bool", False)
If @error Then Return SetError(@error, @extended, False)
If $aResult[0] Then Return SetError(10, $aResult[0], False)
Return True
EndFunc
Func _GDIPlus_ImageSelectActiveFrame($hImage, $sDimensionID, $iFrameIndex)
Local $tGUID = _WinAPI_GUIDFromString($sDimensionID)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipImageSelectActiveFrame", "handle", $hImage, "struct*", $tGUID, "uint", $iFrameIndex)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ImageResize($hImage, $iNewWidth, $iNewHeight, $iInterpolationMode = $GDIP_INTERPOLATIONMODE_HIGHQUALITYBICUBIC)
Local $iWidth = _GDIPlus_ImageGetWidth($hImage)
If @error Then Return SetError(1, 0, 0)
Local $iHeight = _GDIPlus_ImageGetHeight($hImage)
If @error Then Return SetError(2, 0, 0)
Local $hBitmap = _GDIPlus_BitmapCreateFromScan0($iNewWidth, $iNewHeight)
If @error Then Return SetError(3, 0, 0)
Local $hBmpCtxt = _GDIPlus_ImageGetGraphicsContext($hBitmap)
_GDIPlus_GraphicsSetInterpolationMode($hBmpCtxt, $iInterpolationMode)
_GDIPlus_GraphicsSetPixelOffsetMode($hBmpCtxt, $GDIP_PIXELOFFSETMODE_HIGHQUALITY)
Local $hIA = _GDIPlus_ImageAttributesCreate()
__GDIPlus_ImageAttributesSetImageWrapMode($hIA)
If @error Then
_GDIPlus_ImageAttributesDispose($hIA)
_GDIPlus_GraphicsDispose($hBmpCtxt)
_GDIPlus_BitmapDispose($hBitmap)
Return SetError(4, 0, 0)
EndIf
_GDIPlus_GraphicsDrawImageRectRect($hBmpCtxt, $hImage, 0, 0, $iWidth, $iHeight, 0, 0, $iNewWidth, $iNewHeight, $hIA)
_GDIPlus_GraphicsDispose($hBmpCtxt)
Return $hBitmap
EndFunc
Func _GDIPlus_LineBrushCreate($nX1, $nY1, $nX2, $nY2, $iARGBClr1, $iARGBClr2, $iWrapMode = 0)
Local $tPointF1, $tPointF2, $aCall
$tPointF1 = DllStructCreate("float;float")
$tPointF2 = DllStructCreate("float;float")
DllStructSetData($tPointF1, 1, $nX1)
DllStructSetData($tPointF1, 2, $nY1)
DllStructSetData($tPointF2, 1, $nX2)
DllStructSetData($tPointF2, 2, $nY2)
$aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateLineBrush", "struct*", $tPointF1, "struct*", $tPointF2, "uint", $iARGBClr1, "uint", $iARGBClr2, "int", $iWrapMode, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[6]
EndFunc
Func _GDIPlus_LineBrushCreateFromRect($tRECTF, $iARGBClr1, $iARGBClr2, $iGradientMode = 0, $iWrapMode = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateLineBrushFromRect", "struct*", $tRECTF, "uint", $iARGBClr1, "uint", $iARGBClr2, "int", $iGradientMode, "int", $iWrapMode, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[6]
EndFunc
Func _GDIPlus_LineBrushCreateFromRectWithAngle($tRECTF, $iARGBClr1, $iARGBClr2, $fAngle, $bIsAngleScalable = True, $iWrapMode = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateLineBrushFromRectWithAngle", "struct*", $tRECTF, "uint", $iARGBClr1, "uint", $iARGBClr2, "float", $fAngle, "int", $bIsAngleScalable, "int", $iWrapMode, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[7]
EndFunc
Func _GDIPlus_LineBrushGetColors($hLineGradientBrush)
Local $tARGBs, $aARGBs[2], $aCall
$tARGBs = DllStructCreate("uint;uint")
$aCall = DllCall($__g_hGDIPDll, "uint", "GdipGetLineColors", "handle", $hLineGradientBrush, "struct*", $tARGBs)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
$aARGBs[0] = DllStructGetData($tARGBs, 1)
$aARGBs[1] = DllStructGetData($tARGBs, 2)
Return $aARGBs
EndFunc
Func _GDIPlus_LineBrushGetRect($hLineGradientBrush)
Local $tRECTF = DllStructCreate($tagGDIPRECTF)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetLineRect", "handle", $hLineGradientBrush, "struct*", $tRECTF)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Local $aRectF[4]
For $iI = 1 To 4
$aRectF[$iI - 1] = DllStructGetData($tRECTF, $iI)
Next
Return $aRectF
EndFunc
Func _GDIPlus_LineBrushMultiplyTransform($hLineGradientBrush, $hMatrix, $iOrder = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipMultiplyLineTransform", "handle", $hLineGradientBrush, "handle", $hMatrix, "int", $iOrder)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_LineBrushResetTransform($hLineGradientBrush)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipResetLineTransform", "handle", $hLineGradientBrush)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_LineBrushSetBlend($hLineGradientBrush, $aBlends)
Local $iI, $iCount, $tFactors, $tPositions, $aCall
$iCount = $aBlends[0][0]
$tFactors = DllStructCreate("float[" & $iCount & "]")
$tPositions = DllStructCreate("float[" & $iCount & "]")
For $iI = 1 To $iCount
DllStructSetData($tFactors, 1, $aBlends[$iI][0], $iI)
DllStructSetData($tPositions, 1, $aBlends[$iI][1], $iI)
Next
$aCall = DllCall($__g_hGDIPDll, "int", "GdipSetLineBlend", "handle", $hLineGradientBrush, "struct*", $tFactors, "struct*", $tPositions, "int", $iCount)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_LineBrushSetColors($hLineGradientBrush, $iARGBStart, $iARGBEnd)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetLineColors", "handle", $hLineGradientBrush, "uint", $iARGBStart, "uint", $iARGBEnd)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_LineBrushSetGammaCorrection($hLineGradientBrush, $bUseGammaCorrection = True)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetLineGammaCorrection", "handle", $hLineGradientBrush, "int", $bUseGammaCorrection)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_LineBrushSetLinearBlend($hLineGradientBrush, $fFocus, $fScale = 1)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetLineLinearBlend", "handle", $hLineGradientBrush, "float", $fFocus, "float", $fScale)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_LineBrushSetPresetBlend($hLineGradientBrush, $aInterpolations)
Local $iI, $iCount, $tColors, $tPositions, $aCall
$iCount = $aInterpolations[0][0]
$tColors = DllStructCreate("uint[" & $iCount & "]")
$tPositions = DllStructCreate("float[" & $iCount & "]")
For $iI = 1 To $iCount
DllStructSetData($tColors, 1, $aInterpolations[$iI][0], $iI)
DllStructSetData($tPositions, 1, $aInterpolations[$iI][1], $iI)
Next
$aCall = DllCall($__g_hGDIPDll, "int", "GdipSetLinePresetBlend", "handle", $hLineGradientBrush, "struct*", $tColors, "struct*", $tPositions, "int", $iCount)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_LineBrushSetSigmaBlend($hLineGradientBrush, $fFocus, $fScale = 1)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetLineSigmaBlend", "handle", $hLineGradientBrush, "float", $fFocus, "float", $fScale)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_LineBrushSetTransform($hLineGradientBrush, $hMatrix)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetLineTransform", "handle", $hLineGradientBrush, "handle", $hMatrix)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_MatrixCreate()
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateMatrix", "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[1]
EndFunc
Func _GDIPlus_MatrixCreate2($nM11 = 1, $nM12 = 1, $nM21 = 1, $nM22 = 1, $nDX = 0, $nDY = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateMatrix2", "float", $nM11, "float", $nM12, "float", $nM21, "float", $nM22, "float", $nDX, "float", $nDY, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[7]
EndFunc
Func _GDIPlus_MatrixClone($hMatrix)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCloneMatrix", "handle", $hMatrix, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_MatrixDispose($hMatrix)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDeleteMatrix", "handle", $hMatrix)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_MatrixGetElements($hMatrix)
Local $tElements = DllStructCreate("float[6]")
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetMatrixElements", "handle", $hMatrix, "struct*", $tElements)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Local $aElements[6]
For $iI = 1 To 6
$aElements[$iI - 1] = DllStructGetData($tElements, 1, $iI)
Next
Return $aElements
EndFunc
Func _GDIPlus_MatrixInvert($hMatrix)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipInvertMatrix", "handle", $hMatrix)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_MatrixMultiply($hMatrix1, $hMatrix2, $iOrder = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipMultiplyMatrix", "handle", $hMatrix1, "handle", $hMatrix2, "int", $iOrder)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_MatrixRotate($hMatrix, $fAngle, $bAppend = False)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipRotateMatrix", "handle", $hMatrix, "float", $fAngle, "int", $bAppend)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_MatrixScale($hMatrix, $fScaleX, $fScaleY, $bOrder = False)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipScaleMatrix", "handle", $hMatrix, "float", $fScaleX, "float", $fScaleY, "int", $bOrder)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_MatrixSetElements($hMatrix, $nM11 = 1, $nM12 = 0, $nM21 = 0, $nM22 = 1, $nDX = 0, $nDY = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetMatrixElements", "handle", $hMatrix, "float", $nM11, "float", $nM12,  "float", $nM21, "float", $nM22, "float", $nDX, "float", $nDY)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_MatrixShear($hMatrix, $fShearX, $fShearY, $iOrder = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipShearMatrix", "handle", $hMatrix, "float", $fShearX, "float", $fShearY, "int", $iOrder)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_MatrixTransformPoints($hMatrix, ByRef $aPoints)
Local $iCount = $aPoints[0][0]
Local $tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], ($iI - 1) * 2 + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], ($iI - 1) * 2 + 2)
Next
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipTransformMatrixPoints", "handle", $hMatrix, "struct*", $tPoints, "int", $iCount)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
For $iI = 1 To $iCount
$aPoints[$iI][0] = DllStructGetData($tPoints, 1, ($iI - 1) * 2 + 1)
$aPoints[$iI][1] = DllStructGetData($tPoints, 1, ($iI - 1) * 2 + 2)
Next
Return True
EndFunc
Func _GDIPlus_MatrixTranslate($hMatrix, $fOffsetX, $fOffsetY, $bAppend = False)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipTranslateMatrix", "handle", $hMatrix, "float", $fOffsetX, "float", $fOffsetY, "int", $bAppend)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_ParamAdd(ByRef $tParams, $sGUID, $iNbOfValues, $iType, $pValues)
Local $iCount = DllStructGetData($tParams, "Count")
Local $pGUID = DllStructGetPtr($tParams, "GUID") + ($iCount * _GDIPlus_ParamSize())
Local $tParam = DllStructCreate($tagGDIPENCODERPARAM, $pGUID)
_WinAPI_GUIDFromStringEx($sGUID, $pGUID)
DllStructSetData($tParam, "Type", $iType)
DllStructSetData($tParam, "NumberOfValues", $iNbOfValues)
DllStructSetData($tParam, "Values", $pValues)
DllStructSetData($tParams, "Count", $iCount + 1)
EndFunc
Func _GDIPlus_ParamInit($iCount)
Local $sStruct = $tagGDIPENCODERPARAMS
For $i = 2 To $iCount
$sStruct &= ";struct;byte[16];ulong;ulong;ptr;endstruct"
Next
Return DllStructCreate($sStruct)
EndFunc
Func _GDIPlus_ParamSize()
Local $tParam = DllStructCreate($tagGDIPENCODERPARAM)
Return DllStructGetSize($tParam)
EndFunc
Func _GDIPlus_PathAddArc($hPath, $nX, $nY, $nWidth, $nHeight, $fStartAngle, $fSweepAngle)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipAddPathArc", "handle", $hPath, "float", $nX, "float", $nY,  "float", $nWidth, "float", $nHeight, "float", $fStartAngle, "float", $fSweepAngle)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathAddBezier($hPath, $nX1, $nY1, $nX2, $nY2, $nX3, $nY3, $nX4, $nY4)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipAddPathBezier", "handle", $hPath, "float", $nX1, "float", $nY1, "float", $nX2, "float", $nY2, "float", $nX3, "float", $nY3, "float", $nX4, "float", $nY4)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathAddClosedCurve($hPath, $aPoints)
Local $iCount = $aPoints[0][0]
Local $tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], (($iI - 1) * 2) + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], (($iI - 1) * 2) + 2)
Next
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipAddPathClosedCurve", "handle", $hPath, "struct*", $tPoints, "int", $iCount)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathAddClosedCurve2($hPath, $aPoints, $nTension = 0.5)
Local $iCount = $aPoints[0][0]
Local $tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], (($iI - 1) * 2) + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], (($iI - 1) * 2) + 2)
Next
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipAddPathClosedCurve2", "handle", $hPath, "struct*", $tPoints, "int", $iCount, "float", $nTension)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathAddCurve($hPath, $aPoints)
Local $iCount = $aPoints[0][0]
Local $tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], (($iI - 1) * 2) + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], (($iI - 1) * 2) + 2)
Next
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipAddPathCurve", "handle", $hPath, "struct*", $tPoints, "int", $iCount)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathAddCurve2($hPath, $aPoints, $nTension = 0.5)
Local $iCount = $aPoints[0][0]
Local $tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], (($iI - 1) * 2) + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], (($iI - 1) * 2) + 2)
Next
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipAddPathCurve2", "handle", $hPath, "struct*", $tPoints, "int", $iCount, "float", $nTension)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathAddCurve3($hPath, $aPoints, $iOffset, $iNumOfSegments, $nTension = 0.5)
Local $iCount = $aPoints[0][0]
Local $tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], (($iI - 1) * 2) + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], (($iI - 1) * 2) + 2)
Next
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipAddPathCurve3", "handle", $hPath, "struct*", $tPoints, "int", $iCount, "int", $iOffset, "int", $iNumOfSegments, "float", $nTension)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathAddEllipse($hPath, $nX, $nY, $nWidth, $nHeight)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipAddPathEllipse", "handle", $hPath, "float", $nX, "float", $nY, "float", $nWidth, "float", $nHeight)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathAddLine($hPath, $nX1, $nY1, $nX2, $nY2)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipAddPathLine", "handle", $hPath, "float", $nX1, "float", $nY1, "float", $nX2, "float", $nY2)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathAddLine2($hPath, $aPoints)
Local $iCount = $aPoints[0][0]
Local $tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], (($iI - 1) * 2) + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], (($iI - 1) * 2) + 2)
Next
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipAddPathLine2", "handle", $hPath, "struct*", $tPoints, "int", $iCount)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathAddPath($hPath1, $hPath2, $bConnect = True)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipAddPathPath", "handle", $hPath1, "handle", $hPath2, "int", $bConnect)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathAddPie($hPath, $nX, $nY, $nWidth, $nHeight, $fStartAngle, $fSweepAngle)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipAddPathPie", "handle", $hPath, "float", $nX, "float", $nY,  "float", $nWidth, "float", $nHeight, "float", $fStartAngle, "float", $fSweepAngle)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathAddPolygon($hPath, $aPoints)
Local $iCount = $aPoints[0][0]
Local $tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], (($iI - 1) * 2) + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], (($iI - 1) * 2) + 2)
Next
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipAddPathPolygon", "handle", $hPath, "struct*", $tPoints, "int", $iCount)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathAddRectangle($hPath, $nX, $nY, $nWidth, $nHeight)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipAddPathRectangle", "handle", $hPath, "float", $nX, "float", $nY, "float", $nWidth, "float", $nHeight)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathAddString($hPath, $sString, $tLayout, $hFamily, $iStyle = 0, $fSize = 8.5, $hFormat = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipAddPathString", "handle", $hPath, "wstr", $sString, "int", -1,  "handle", $hFamily, "int", $iStyle, "float", $fSize, "struct*", $tLayout, "handle", $hFormat)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathBrushCreate($aPoints, $iWrapMode = 0)
Local $iCount = $aPoints[0][0]
Local $tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], (($iI - 1) * 2) + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], (($iI - 1) * 2) + 2)
Next
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreatePathGradient", "struct*", $tPoints, "int", $iCount, "int", $iWrapMode, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[4]
EndFunc
Func _GDIPlus_PathBrushCreateFromPath($hPath)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreatePathGradientFromPath", "handle", $hPath, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_PathBrushGetCenterPoint($hPathGradientBrush)
Local $tPointF = DllStructCreate("float;float")
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPathGradientCenterPoint", "handle", $hPathGradientBrush, "struct*", $tPointF)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Local $aPointF[2]
$aPointF[0] = DllStructGetData($tPointF, 1)
$aPointF[1] = DllStructGetData($tPointF, 2)
Return $aPointF
EndFunc
Func _GDIPlus_PathBrushGetFocusScales($hPathGradientBrush)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPathGradientFocusScales", "handle", $hPathGradientBrush, "float*", 0, "float*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Local $aScales[2]
$aScales[0] = $aCall[2]
$aScales[1] = $aCall[3]
Return $aScales
EndFunc
Func _GDIPlus_PathBrushGetPointCount($hPathGradientBrush)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPathGradientPointCount", "handle", $hPathGradientBrush, "int*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_PathBrushGetRect($hPathGradientBrush)
Local $tRECTF = DllStructCreate($tagGDIPRECTF)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPathGradientRect", "handle", $hPathGradientBrush, "struct*", $tRECTF)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Local $aRectF[4]
For $iI = 1 To 4
$aRectF[$iI - 1] = DllStructGetData($tRECTF, $iI)
Next
Return $aRectF
EndFunc
Func _GDIPlus_PathBrushGetWrapMode($hPathGradientBrush)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPathGradientWrapMode", "handle", $hPathGradientBrush, "int*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_PathBrushMultiplyTransform($hPathGradientBrush, $hMatrix, $iOrder = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipMultiplyPathGradientTransform", "handle", $hPathGradientBrush, "handle", $hMatrix, "int", $iOrder)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathBrushResetTransform($hPathGradientBrush)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipResetPathGradientTransform", "handle", $hPathGradientBrush)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathBrushSetBlend($hPathGradientBrush, $aBlends)
Local $iCount = $aBlends[0][0]
Local $tFactors = DllStructCreate("float[" & $iCount & "]")
Local $tPositions = DllStructCreate("float[" & $iCount & "]")
For $iI = 1 To $iCount
DllStructSetData($tFactors, 1, $aBlends[$iI][0], $iI)
DllStructSetData($tPositions, 1, $aBlends[$iI][1], $iI)
Next
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPathGradientBlend", "handle", $hPathGradientBrush, "struct*", $tFactors, "struct*", $tPositions, "int", $iCount)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathBrushSetCenterColor($hPathGradientBrush, $iARGB)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPathGradientCenterColor", "handle", $hPathGradientBrush, "uint", $iARGB)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathBrushSetCenterPoint($hPathGradientBrush, $nX, $nY)
Local $tPointF = DllStructCreate("float;float")
DllStructSetData($tPointF, 1, $nX)
DllStructSetData($tPointF, 2, $nY)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPathGradientCenterPoint", "handle", $hPathGradientBrush, "struct*", $tPointF)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathBrushSetFocusScales($hPathGradientBrush, $fScaleX, $fScaleY)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPathGradientFocusScales", "handle", $hPathGradientBrush, "float", $fScaleX, "float", $fScaleY)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathBrushSetGammaCorrection($hPathGradientBrush, $bUseGammaCorrection)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPathGradientGammaCorrection", "handle", $hPathGradientBrush, "int", $bUseGammaCorrection)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathBrushSetLinearBlend($hPathGradientBrush, $fFocus, $fScale = 1)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPathGradientLinearBlend", "handle", $hPathGradientBrush, "float", $fFocus, "float", $fScale)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathBrushSetPresetBlend($hPathGradientBrush, $aInterpolations)
Local $iCount = $aInterpolations[0][0]
Local $tColors = DllStructCreate("uint[" & $iCount & "]")
Local $tPositions = DllStructCreate("float[" & $iCount & "]")
For $iI = 1 To $iCount
DllStructSetData($tColors, 1, $aInterpolations[$iI][0], $iI)
DllStructSetData($tPositions, 1, $aInterpolations[$iI][1], $iI)
Next
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPathGradientPresetBlend", "handle", $hPathGradientBrush, "struct*", $tColors, "struct*", $tPositions, "int", $iCount)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathBrushSetSigmaBlend($hPathGradientBrush, $fFocus, $fScale = 1)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPathGradientSigmaBlend", "handle", $hPathGradientBrush, "float", $fFocus, "float", $fScale)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathBrushSetSurroundColor($hPathGradientBrush, $iARGB)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPathGradientSurroundColorsWithCount", "handle", $hPathGradientBrush, "uint*", $iARGB, "int*", 1)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathBrushSetSurroundColorsWithCount($hPathGradientBrush, $aColors)
Local $iCount = $aColors[0]
Local $iColors = _GDIPlus_PathBrushGetPointCount($hPathGradientBrush)
If $iColors < $iCount Then $iCount = $iColors
Local $tColors = DllStructCreate("uint[" & $iCount & "]")
For $iI = 1 To $iCount
DllStructSetData($tColors, 1, $aColors[$iI], $iI)
Next
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPathGradientSurroundColorsWithCount", "handle", $hPathGradientBrush, "struct*", $tColors, "int*", $iCount)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _GDIPlus_PathBrushSetTransform($hPathGradientBrush, $hMatrix)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPathGradientTransform", "handle", $hPathGradientBrush, "handle", $hMatrix)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathBrushSetWrapMode($hPathGradientBrush, $iWrapMode)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPathGradientWrapMode", "handle", $hPathGradientBrush, "int", $iWrapMode)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathClone($hPath)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipClonePath", "handle", $hPath, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_PathCloseFigure($hPath)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipClosePathFigure", "handle", $hPath)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathCreate($iFillMode = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreatePath", "int", $iFillMode, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_PathCreate2($aPathData, $iFillMode = 0)
Local $iCount = $aPathData[0][0]
Local $tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
Local $tTypes = DllStructCreate("byte[" & $iCount & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPathData[$iI][0], (($iI - 1) * 2) + 1)
DllStructSetData($tPoints, 1, $aPathData[$iI][1], (($iI - 1) * 2) + 2)
DllStructSetData($tTypes, 1, $aPathData[$iI][2], $iI)
Next
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreatePath2", "struct*", $tPoints, "struct*", $tTypes, "int", $iCount, "int", $iFillMode, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[5]
EndFunc
Func _GDIPlus_PathDispose($hPath)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDeletePath", "handle", $hPath)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathFlatten($hPath, $fFlatness = 0.25, $hMatrix = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipFlattenPath", "handle", $hPath, "handle", $hMatrix, "float", $fFlatness)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathGetData($hPath)
Local $iCount = _GDIPlus_PathGetPointCount($hPath)
Local $tPathData = DllStructCreate("int Count; ptr Points; ptr Types;")
Local $tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
Local $tTypes = DllStructCreate("byte[" & $iCount & "]")
DllStructSetData($tPathData, "Count", $iCount)
DllStructSetData($tPathData, "Points", DllStructGetPtr($tPoints))
DllStructSetData($tPathData, "Types", DllStructGetPtr($tTypes))
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPathData", "handle", $hPath, "struct*", $tPathData)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError($aCall[0], $aCall[0], -1)
Local $aData[$iCount + 1][3]
$aData[0][0] = $iCount
For $iI = 1 To $iCount
$aData[$iI][0] = DllStructGetData($tPoints, 1, (($iI - 1) * 2) + 1)
$aData[$iI][1] = DllStructGetData($tPoints, 1, (($iI - 1) * 2) + 2)
$aData[$iI][2] = DllStructGetData($tTypes, 1, $iI)
Next
Return $aData
EndFunc
Func _GDIPlus_PathGetFillMode($hPath)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPathFillMode", "handle", $hPath, "int*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_PathGetLastPoint($hPath)
Local $tPointF = DllStructCreate("float;float")
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPathLastPoint", "handle", $hPath, "struct*", $tPointF)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Local $aPointF[2]
$aPointF[0] = DllStructGetData($tPointF, 1)
$aPointF[1] = DllStructGetData($tPointF, 2)
Return $aPointF
EndFunc
Func _GDIPlus_PathGetPointCount($hPath)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPointCount", "handle", $hPath, "int*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_PathGetPoints($hPath)
Local $iI, $iCount, $tPoints, $aPoints[1][1], $aCall
$iCount = _GDIPlus_PathGetPointCount($hPath)
If @error Then Return SetError(@error + 10, @extended, -1)
$tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
$aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPathPoints", "handle", $hPath, "struct*", $tPoints, "int", $iCount)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Local $aPoints[$iCount + 1][2]
$aPoints[0][0] = $iCount
For $iI = 1 To $iCount
$aPoints[$iI][0] = DllStructGetData($tPoints, 1, (($iI - 1) * 2) + 1)
$aPoints[$iI][1] = DllStructGetData($tPoints, 1, (($iI - 1) * 2) + 2)
Next
Return $aPoints
EndFunc
Func _GDIPlus_PathGetWorldBounds($hPath, $hMatrix = 0, $hPen = 0)
Local $tRECTF = DllStructCreate($tagGDIPRECTF)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPathWorldBounds", "handle", $hPath, "struct*", $tRECTF, "handle", $hMatrix, "handle", $hPen)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Local $aRectF[4]
For $iI = 1 To 4
$aRectF[$iI - 1] = DllStructGetData($tRECTF, $iI)
Next
Return $aRectF
EndFunc
Func _GDIPlus_PathIsOutlineVisiblePoint($hPath, $nX, $nY, $hPen = 0, $hGraphics = 0)
__GDIPlus_PenDefCreate($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipIsOutlineVisiblePathPoint", "handle", $hPath, "float", $nX, "float", $nY, "handle", $hPen, "handle", $hGraphics, "int*", 0)
__GDIPlus_PenDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return $aCall[6] <> 0
EndFunc
Func _GDIPlus_PathIsVisiblePoint($hPath, $nX, $nY, $hGraphics = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipIsVisiblePathPoint", "handle", $hPath, "float", $nX, "float", $nY, "handle", $hGraphics, "int*", 0)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return $aCall[5] <> 0
EndFunc
Func _GDIPlus_PathIterCreate($hPath)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreatePathIter", "handle*", 0, "handle", $hPath)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[1]
EndFunc
Func _GDIPlus_PathIterDispose($hPathIter)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDeletePathIter", "handle", $hPathIter)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathIterGetSubpathCount($hPathIter)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipPathIterGetSubpathCount", "handle", $hPathIter, "int*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_PathIterNextMarkerPath($hPathIter, $hPath)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipPathIterNextMarkerPath", "handle", $hPathIter, "int*", 0, "handle", $hPath)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_PathIterNextSubpathPath($hPathIter, $hPath)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipPathIterNextSubpathPath", "handle", $hPathIter, "int*", 0, "handle", $hPath, "bool*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Local $aRet[2]
$aRet[0] = $aCall[2]
$aRet[1] = $aCall[4]
Return $aRet
EndFunc
Func _GDIPlus_PathIterRewind($hPathIter)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipPathIterRewind", "handle", $hPathIter)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathReset($hPath)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipResetPath", "handle", $hPath)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathReverse($hPath)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipReversePath", "handle", $hPath)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathSetFillMode($hPath, $iFillMode)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPathFillMode", "handle", $hPath, "int", $iFillMode)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathSetMarker($hPath)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPathMarker", "handle", $hPath)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathStartFigure($hPath)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipStartPathFigure", "handle", $hPath)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathTransform($hPath, $hMatrix)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipTransformPath", "handle", $hPath, "handle", $hMatrix)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathWarp($hPath, $hMatrix, $aPoints, $nX, $nY, $nWidth, $nHeight, $iWarpMode = 0, $fFlatness = 0.25)
Local $iCount = $aPoints[0][0]
If $iCount <> 3 And $iCount <> 4 Then Return SetError(11, 0, False)
Local $tPoints = DllStructCreate("float[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tPoints, 1, $aPoints[$iI][0], ($iI - 1) * 2 + 1)
DllStructSetData($tPoints, 1, $aPoints[$iI][1], ($iI - 1) * 2 + 2)
Next
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipWarpPath", "handle", $hPath, "handle", $hMatrix, "struct*", $tPoints, "int", $iCount,  "float", $nX, "float", $nY, "float", $nWidth, "float", $nHeight, "int", $iWarpMode, "float", $fFlatness)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathWiden($hPath, $hPen, $hMatrix = 0, $fFlatness = 0.25)
__GDIPlus_PenDefCreate($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipWidenPath", "handle", $hPath, "handle", $hPen, "handle", $hMatrix, "float", $fFlatness)
__GDIPlus_PenDefDispose()
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PathWindingModeOutline($hPath, $hMatrix = 0, $fFlatness = 0.25)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipWindingModeOutline", "handle", $hPath, "handle", $hMatrix, "float", $fFlatness)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PenCreate($iARGB = 0xFF000000, $nWidth = 1, $iUnit = 2)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreatePen1", "dword", $iARGB, "float", $nWidth, "int", $iUnit, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[4]
EndFunc
Func _GDIPlus_PenCreate2($hBrush, $nWidth = 1, $iUnit = 2)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreatePen2", "handle", $hBrush, "float", $nWidth, "int", $iUnit, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[4]
EndFunc
Func _GDIPlus_PenDispose($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDeletePen", "handle", $hPen)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PenGetAlignment($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPenMode", "handle", $hPen, "int*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_PenGetColor($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPenColor", "handle", $hPen, "dword*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_PenGetCustomEndCap($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPenCustomEndCap", "handle", $hPen, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_PenGetDashCap($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPenDashCap197819", "handle", $hPen, "int*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_PenGetDashStyle($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPenDashStyle", "handle", $hPen, "int*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_PenGetEndCap($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPenEndCap", "handle", $hPen, "int*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_PenGetMiterLimit($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPenMiterLimit", "handle", $hPen, "float*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_PenGetWidth($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetPenWidth", "handle", $hPen, "float*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_PenResetTransform($hPen)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipResetPenTransform", "handle", $hPen)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PenRotateTransform($hPen, $fAngle, $iOrder = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipRotatePenTransform", "handle", $hPen, "float", $fAngle, "int", $iOrder)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PenScaleTransform($hPen, $fScaleX, $fScaleY, $iOrder = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipScalePenTransform", "handle", $hPen, "float", $fScaleX, "float", $fScaleY, "int", $iOrder)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PenSetAlignment($hPen, $iAlignment = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPenMode", "handle", $hPen, "int", $iAlignment)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PenSetColor($hPen, $iARGB)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPenColor", "handle", $hPen, "dword", $iARGB)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PenSetCompound($hPen, $aCompounds)
Local $iCount = $aCompounds[0]
Local $tCompounds = DllStructCreate("float[" & $iCount & "];")
For $i = 1 To $iCount
DllStructSetData($tCompounds, 1, $aCompounds[$i], $i)
Next
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPenCompoundArray", "handle", $hPen, "struct*", $tCompounds, "int", $iCount)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PenSetCustomEndCap($hPen, $hEndCap)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPenCustomEndCap", "handle", $hPen, "handle", $hEndCap)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PenSetDashCap($hPen, $iDash = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPenDashCap197819", "handle", $hPen, "int", $iDash)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PenSetDashStyle($hPen, $iStyle = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPenDashStyle", "handle", $hPen, "int", $iStyle)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PenSetEndCap($hPen, $iEndCap)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPenEndCap", "handle", $hPen, "int", $iEndCap)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PenSetLineCap($hPen, $iStartCap, $iEndCap, $iDashCap)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPenLineCap197819", "handle", $hPen, "int", $iStartCap, "int", $iEndCap, "int", $iDashCap)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PenSetLineJoin($hPen, $iLineJoin)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPenLineJoin", "handle", $hPen, "int", $iLineJoin)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PenSetMiterLimit($hPen, $fMiterLimit)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPenMiterLimit", "handle", $hPen, "float", $fMiterLimit)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PenSetStartCap($hPen, $iLineCap)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPenStartCap", "handle", $hPen, "int", $iLineCap)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PenSetTransform($hPen, $hMatrix)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPenTransform", "handle", $hPen, "handle", $hMatrix)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PenSetWidth($hPen, $fWidth)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetPenWidth", "handle", $hPen, "float", $fWidth)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_RectFCreate($nX = 0, $nY = 0, $nWidth = 0, $nHeight = 0)
Local $tRECTF = DllStructCreate($tagGDIPRECTF)
DllStructSetData($tRECTF, "X", $nX)
DllStructSetData($tRECTF, "Y", $nY)
DllStructSetData($tRECTF, "Width", $nWidth)
DllStructSetData($tRECTF, "Height", $nHeight)
Return $tRECTF
EndFunc
Func _GDIPlus_RegionClone($hRegion)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCloneRegion", "handle", $hRegion, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_RegionCombinePath($hRegion, $hPath, $iCombineMode = 2)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCombineRegionPath", "handle", $hRegion, "handle", $hPath, "int", $iCombineMode)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_RegionCombineRect($hRegion, $nX, $nY, $nWidth, $nHeight, $iCombineMode = 2)
Local $tRECTF = _GDIPlus_RectFCreate($nX, $nY, $nWidth, $nHeight)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCombineRegionRect", "handle", $hRegion, "struct*", $tRECTF, "int", $iCombineMode)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_RegionCombineRegion($hRegionDst, $hRegionSrc, $iCombineMode = 2)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCombineRegionRegion", "handle", $hRegionDst, "handle", $hRegionSrc, "int", $iCombineMode)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_RegionCreate()
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateRegion", "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[1]
EndFunc
Func _GDIPlus_RegionCreateFromPath($hPath)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateRegionPath", "handle", $hPath, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_RegionCreateFromRect($nX, $nY, $nWidth, $nHeight)
Local $tRECTF = _GDIPlus_RectFCreate($nX, $nY, $nWidth, $nHeight)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateRegionRect", "struct*", $tRECTF, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_RegionDispose($hRegion)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDeleteRegion", "handle", $hRegion)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_RegionGetBounds($hRegion, $hGraphics)
Local $tRECTF = DllStructCreate($tagGDIPRECTF)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetRegionBounds", "handle", $hRegion, "handle", $hGraphics, "struct*", $tRECTF)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Local $aBounds[4]
For $iI = 1 To 4
$aBounds[$iI - 1] = DllStructGetData($tRECTF, $iI)
Next
Return $aBounds
EndFunc
Func _GDIPlus_RegionGetHRgn($hRegion, $hGraphics = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetRegionHRgn", "handle", $hRegion, "handle", $hGraphics, "handle*", 0)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return $aCall[3]
EndFunc
Func _GDIPlus_RegionSetEmpty($hRegion)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetEmpty", "handle", $hRegion)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_RegionSetInfinite($hRegion)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetInfinite", "handle", $hRegion)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_RegionTransform($hRegion, $hMatrix)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipTransformRegion", "handle", $hRegion, "handle", $hMatrix)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_RegionTranslate($hRegion, $nDX, $nDY)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipTranslateRegion", "handle", $hRegion, "float", $nDX, "float", $nDY)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_Shutdown()
If $__g_hGDIPDll = 0 Then Return SetError(-1, -1, False)
$__g_iGDIPRef -= 1
If $__g_iGDIPRef = 0 Then
DllCall($__g_hGDIPDll, "none", "GdiplusShutdown", "ulong_ptr", $__g_iGDIPToken)
DllClose($__g_hGDIPDll)
$__g_hGDIPDll = 0
EndIf
Return True
EndFunc
Func _GDIPlus_Startup($sGDIPDLL = Default, $bRetDllHandle = False)
$__g_iGDIPRef += 1
If $__g_iGDIPRef > 1 Then Return True
If $sGDIPDLL = Default Then $sGDIPDLL = "gdiplus.dll"
$__g_hGDIPDll = DllOpen($sGDIPDLL)
If $__g_hGDIPDll = -1 Then
$__g_iGDIPRef = 0
Return SetError(1, 2, False)
EndIf
Local $sVer = FileGetVersion($sGDIPDLL)
$sVer = StringSplit($sVer, ".")
If $sVer[1] > 5 Then $__g_bGDIP_V1_0 = False
Local $tInput = DllStructCreate($tagGDIPSTARTUPINPUT)
Local $tToken = DllStructCreate("ulong_ptr Data")
DllStructSetData($tInput, "Version", 1)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdiplusStartup", "struct*", $tToken, "struct*", $tInput, "ptr", 0)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
$__g_iGDIPToken = DllStructGetData($tToken, "Data")
If $bRetDllHandle Then Return $__g_hGDIPDll
Return SetExtended($sVer[1], True)
EndFunc
Func _GDIPlus_StringFormatCreate($iFormat = 0, $iLangID = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateStringFormat", "int", $iFormat, "word", $iLangID, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _GDIPlus_StringFormatDispose($hFormat)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDeleteStringFormat", "handle", $hFormat)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_StringFormatGetMeasurableCharacterRangeCount($hStringFormat)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetStringFormatMeasurableCharacterRangeCount", "handle", $hStringFormat, "int*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_StringFormatSetAlign($hStringFormat, $iFlag)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetStringFormatAlign", "handle", $hStringFormat, "int", $iFlag)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_StringFormatSetLineAlign($hStringFormat, $iStringAlign)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetStringFormatLineAlign", "handle", $hStringFormat, "int", $iStringAlign)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_StringFormatSetMeasurableCharacterRanges($hStringFormat, $aRanges)
Local $iCount = $aRanges[0][0]
Local $tCharacterRanges = DllStructCreate("int[" & $iCount * 2 & "]")
For $iI = 1 To $iCount
DllStructSetData($tCharacterRanges, 1, $aRanges[$iI][0], (($iI - 1) * 2) + 1)
DllStructSetData($tCharacterRanges, 1, $aRanges[$iI][1], (($iI - 1) * 2) + 2)
Next
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetStringFormatMeasurableCharacterRanges", "handle", $hStringFormat, "int", $iCount, "struct*", $tCharacterRanges)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_TextureCreate($hImage, $iWrapMode = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateTexture", "handle", $hImage, "int", $iWrapMode, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _GDIPlus_TextureCreate2($hImage, $nX, $nY, $nWidth, $nHeight, $iWrapMode = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateTexture2", "handle", $hImage, "int", $iWrapMode, "float", $nX, "float", $nY, "float", $nWidth, "float", $nHeight, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[7]
EndFunc
Func _GDIPlus_TextureCreateIA($hImage, $nX, $nY, $nWidth, $nHeight, $pImageAttributes = 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateTextureIA", "handle", $hImage, "handle", $pImageAttributes, "float", $nX, "float", $nY, "float", $nWidth, "float", $nHeight, "ptr*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[7]
EndFunc
Func __GDIPlus_BrushDefCreate(ByRef $hBrush)
If $hBrush = 0 Then
$__g_hGDIPBrush = _GDIPlus_BrushCreateSolid()
$hBrush = $__g_hGDIPBrush
EndIf
EndFunc
Func __GDIPlus_BrushDefDispose($iCurError = @error, $iCurExtended = @extended)
If $__g_hGDIPBrush <> 0 Then
_GDIPlus_BrushDispose($__g_hGDIPBrush)
$__g_hGDIPBrush = 0
EndIf
Return SetError($iCurError, $iCurExtended)
EndFunc
Func __GDIPlus_ExtractFileExt($sFileName, $bNoDot = True)
Local $iIndex = __GDIPlus_LastDelimiter(".\:", $sFileName)
If ($iIndex > 0) And (StringMid($sFileName, $iIndex, 1) = '.') Then
If $bNoDot Then
Return StringMid($sFileName, $iIndex + 1)
Else
Return StringMid($sFileName, $iIndex)
EndIf
Else
Return ""
EndIf
EndFunc
Func __GDIPlus_LastDelimiter($sDelimiters, $sString)
Local $sDelimiter, $iN
For $iI = 1 To StringLen($sDelimiters)
$sDelimiter = StringMid($sDelimiters, $iI, 1)
$iN = StringInStr($sString, $sDelimiter, $STR_NOCASESENSEBASIC, -1)
If $iN > 0 Then Return $iN
Next
EndFunc
Func __GDIPlus_PenDefCreate(ByRef $hPen)
If $hPen = 0 Then
$__g_hGDIPPen = _GDIPlus_PenCreate()
$hPen = $__g_hGDIPPen
EndIf
EndFunc
Func __GDIPlus_PenDefDispose($iCurError = @error, $iCurExtended = @extended)
If $__g_hGDIPPen <> 0 Then
_GDIPlus_PenDispose($__g_hGDIPPen)
$__g_hGDIPPen = 0
EndIf
Return SetError($iCurError, $iCurExtended)
EndFunc
Func _GDIPlus_BitmapApplyEffect($hBitmap, $hEffect, $tRECT = Null)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, False)
If Not IsPtr($hEffect) Then Return SetError(10, 0, False)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipBitmapApplyEffect", "handle", $hBitmap, "handle", $hEffect, "struct*", $tRECT, "int", 0, "ptr*", 0, "int*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_BitmapApplyEffectEx($hBitmap, $hEffect, $iX = 0, $iY = 0, $iW = 0, $iH = 0)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, False)
Local $tRECT = 0
If BitOR($iX, $iY, $iW, $iH) Then
$tRECT = DllStructCreate("int Left; int Top; int Right; int Bottom;")
DllStructSetData($tRECT, "Right", $iW + DllStructSetData($tRECT, "Left", $iX))
DllStructSetData($tRECT, "Bottom", $iH + DllStructSetData($tRECT, "Top", $iY))
EndIf
Local $iStatus = _GDIPlus_BitmapApplyEffect($hBitmap, $hEffect, $tRECT)
If Not $iStatus Then Return SetError(@error, @extended, False)
Return True
EndFunc
Func _GDIPlus_BitmapConvertFormat($hBitmap, $iPixelFormat, $iDitherType, $iPaletteType, $tPalette, $fAlphaThresholdPercent = 0.0)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, False)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipBitmapConvertFormat", "handle", $hBitmap, "uint", $iPixelFormat, "uint", $iDitherType, "uint", $iPaletteType, "struct*", $tPalette, "float", $fAlphaThresholdPercent)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_BitmapCreateApplyEffect($hBitmap, $hEffect, $tRECT = Null, $tOutRECT = Null)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipBitmapCreateApplyEffect", "handle*", $hBitmap, "int", 1, "handle", $hEffect, "struct*", $tRECT, "struct*", $tOutRECT, "handle*", 0, "int", 0, "ptr*", 0, "int*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[6]
EndFunc
Func _GDIPlus_BitmapCreateApplyEffectEx($hBitmap, $hEffect, $iX = 0, $iY = 0, $iW = 0, $iH = 0)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, 0)
Local $tRECT = 0
If BitOR($iX, $iY, $iW, $iH) Then
$tRECT = DllStructCreate("int Left; int Top; int Right; int Bottom;")
DllStructSetData($tRECT, "Right", $iW + DllStructSetData($tRECT, "Left", $iX))
DllStructSetData($tRECT, "Bottom", $iH + DllStructSetData($tRECT, "Top", $iY))
EndIf
Local $hBitmap_FX = _GDIPlus_BitmapCreateApplyEffect($hBitmap, $hEffect, $tRECT, Null)
Return SetError(@error, @extended, $hBitmap_FX)
EndFunc
Func _GDIPlus_BitmapGetHistogram($hBitmap, $iHistogramFormat, $iHistogramSize, $tChannel_0, $tChannel_1 = 0, $tChannel_2 = 0, $tChannel_3 = 0)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, False)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipBitmapGetHistogram", "handle", $hBitmap, "uint", $iHistogramFormat, "uint", $iHistogramSize, "struct*", $tChannel_0, "struct*", $tChannel_1, "struct*", $tChannel_2, "struct*", $tChannel_3)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_BitmapGetHistogramEx($hBitmap)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, 0)
Local $iSize = _GDIPlus_BitmapGetHistogramSize($GDIP_HistogramFormatARGB)
Local $tHistogram = DllStructCreate("int Size; uint Red[" & $iSize & "]; uint MaxRed; uint Green[" & $iSize & "]; uint MaxGreen; uint Blue[" & $iSize & "]; uint MaxBlue; uint Alpha[" & $iSize & "]; uint MaxAlpha; uint Grey[" & $iSize & "]; uint MaxGrey;")
DllStructSetData($tHistogram, "Size", $iSize)
Local $iStatus = _GDIPlus_BitmapGetHistogram($hBitmap, $GDIP_HistogramFormatARGB, $iSize, DllStructGetPtr($tHistogram, "Alpha"), DllStructGetPtr($tHistogram, "Red"), DllStructGetPtr($tHistogram, "Green"), DllStructGetPtr($tHistogram, "Blue"))
If Not $iStatus Then Return SetError(@error, @extended, 0)
$iStatus = _GDIPlus_BitmapGetHistogram($hBitmap, $GDIP_HistogramFormatGray, $iSize, DllStructGetPtr($tHistogram, "Grey"))
If Not $iStatus Then Return SetError(@error + 10, @extended, 0)
Local $iMaxRed = 0, $iMaxGreen = 0, $iMaxBlue = 0, $iMaxAlpha = 0, $iMaxGrey = 0
For $i = 1 To $iSize
If DllStructGetData($tHistogram, "Red", $i) > $iMaxRed Then $iMaxRed = DllStructGetData($tHistogram, "Red", $i)
If DllStructGetData($tHistogram, "Green", $i) > $iMaxGreen Then $iMaxGreen = DllStructGetData($tHistogram, "Green", $i)
If DllStructGetData($tHistogram, "Blue", $i) > $iMaxBlue Then $iMaxBlue = DllStructGetData($tHistogram, "Blue", $i)
If DllStructGetData($tHistogram, "Alpha", $i) > $iMaxAlpha Then $iMaxAlpha = DllStructGetData($tHistogram, "Alpha", $i)
If DllStructGetData($tHistogram, "Grey", $i) > $iMaxGrey Then $iMaxGrey = DllStructGetData($tHistogram, "Grey", $i)
Next
DllStructSetData($tHistogram, "MaxRed", $iMaxRed)
DllStructSetData($tHistogram, "MaxGreen", $iMaxGreen)
DllStructSetData($tHistogram, "MaxBlue", $iMaxBlue)
DllStructSetData($tHistogram, "MaxAlpha", $iMaxAlpha)
DllStructSetData($tHistogram, "MaxGrey", $iMaxGrey)
Return $tHistogram
EndFunc
Func _GDIPlus_BitmapGetHistogramSize($iFormat)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, 0)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipBitmapGetHistogramSize", "uint", $iFormat, "uint*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _GDIPlus_DrawImageFX($hGraphics, $hImage, $hEffect, $tRECTF = 0, $hMatrix = 0, $hImgAttributes = 0, $iUnit = 2)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, False)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDrawImageFX", "handle", $hGraphics, "handle", $hImage, "struct*", $tRECTF, "handle", $hMatrix, "handle", $hEffect, "handle", $hImgAttributes, "uint", $iUnit)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_DrawImageFXEx($hGraphics, $hImage, $hEffect, $nX = 0, $nY = 0, $nW = 0, $nH = 0, $hMatrix = 0, $hImgAttributes = 0, $iUnit = 2)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, False)
Local $tRECTF = 0
If BitOR($nX, $nY, $nW, $nH) Then $tRECTF = _GDIPlus_RectFCreate($nX, $nY, $nW, $nH)
Local $iStatus = _GDIPlus_DrawImageFX($hGraphics, $hImage, $hEffect, $tRECTF, $hMatrix, $hImgAttributes, $iUnit)
Return SetError(@error, @extended, $iStatus)
EndFunc
Func _GDIPlus_EffectCreate($sEffectGUID)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, 0)
Local $tGUID = _WinAPI_GUIDFromString($sEffectGUID)
Local $aCall
If @AutoItX64 Then
$aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateEffect", "struct*", $tGUID, "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndIf
Local $tElem = DllStructCreate("uint64[2];", DllStructGetPtr($tGUID))
$aCall = DllCall($__g_hGDIPDll, "int", "GdipCreateEffect", "uint64", DllStructGetData($tElem, 1, 1), "uint64", DllStructGetData($tElem, 1, 2), "handle*", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _GDIPlus_EffectCreateBlur($fRadius = 10.0, $bExpandEdge = False)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, 0)
Local $tEffectParameters = DllStructCreate($tagGDIP_EFFECTPARAMS_Blur)
DllStructSetData($tEffectParameters, "Radius", $fRadius)
DllStructSetData($tEffectParameters, "ExpandEdge", $bExpandEdge)
Local $hEffect = _GDIPlus_EffectCreate($GDIP_BlurEffectGuid)
If @error Then Return SetError(@error, @extended, 0)
_GDIPlus_EffectSetParameters($hEffect, $tEffectParameters)
If @error Then Return SetError(@error + 10, @extended, 0)
Return $hEffect
EndFunc
Func _GDIPlus_EffectCreateBrightnessContrast($iBrightnessLevel = 0, $iContrastLevel = 0)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, 0)
Local $tEffectParameters = DllStructCreate($tagGDIP_EFFECTPARAMS_BrightnessContrast)
DllStructSetData($tEffectParameters, "BrightnessLevel", $iBrightnessLevel)
DllStructSetData($tEffectParameters, "ContrastLevel", $iContrastLevel)
Local $hEffect = _GDIPlus_EffectCreate($GDIP_BrightnessContrastEffectGuid)
If @error Then Return SetError(@error, @extended, 0)
_GDIPlus_EffectSetParameters($hEffect, $tEffectParameters)
If @error Then Return SetError(@error + 10, @extended, 0)
Return $hEffect
EndFunc
Func _GDIPlus_EffectCreateColorBalance($iCyanRed = 0, $iMagentaGreen = 0, $iYellowBlue = 0)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, 0)
Local $tEffectParameters = DllStructCreate($tagGDIP_EFFECTPARAMS_ColorBalance)
DllStructSetData($tEffectParameters, "CyanRed", $iCyanRed)
DllStructSetData($tEffectParameters, "MagentaGreen", $iMagentaGreen)
DllStructSetData($tEffectParameters, "YellowBlue", $iYellowBlue)
Local $hEffect = _GDIPlus_EffectCreate($GDIP_ColorBalanceEffectGuid)
If @error Then Return SetError(@error, @extended, 0)
_GDIPlus_EffectSetParameters($hEffect, $tEffectParameters)
If @error Then Return SetError(@error + 10, @extended, 0)
Return $hEffect
EndFunc
Func _GDIPlus_EffectCreateColorCurve($iAdjustment, $iChannel, $iAdjustValue)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, 0)
Local $tEffectParameters = DllStructCreate($tagGDIP_EFFECTPARAMS_ColorCurve)
DllStructSetData($tEffectParameters, "Adjustment", $iAdjustment)
DllStructSetData($tEffectParameters, "Channel", $iChannel)
DllStructSetData($tEffectParameters, "AdjustValue", $iAdjustValue)
Local $hEffect = _GDIPlus_EffectCreate($GDIP_ColorCurveEffectGuid)
If @error Then Return SetError(@error, @extended, 0)
_GDIPlus_EffectSetParameters($hEffect, $tEffectParameters)
If @error Then Return SetError(@error + 10, @extended, 0)
Return $hEffect
EndFunc
Func _GDIPlus_EffectCreateColorLUT($aColorLUT)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, 0)
Local $tEffectParameters = DllStructCreate($tagGDIP_EFFECTPARAMS_ColorLUT)
For $iI = 0 To 255
DllStructSetData($tEffectParameters, "LutA", $aColorLUT[$iI][0], $iI + 1)
DllStructSetData($tEffectParameters, "LutR", $aColorLUT[$iI][1], $iI + 1)
DllStructSetData($tEffectParameters, "LutG", $aColorLUT[$iI][2], $iI + 1)
DllStructSetData($tEffectParameters, "LutB", $aColorLUT[$iI][3], $iI + 1)
Next
Local $hEffect = _GDIPlus_EffectCreate($GDIP_ColorLUTEffectGuid)
If @error Then Return SetError(@error, @extended, 0)
_GDIPlus_EffectSetParameters($hEffect, $tEffectParameters)
If @error Then Return SetError(@error + 10, @extended, 0)
Return $hEffect
EndFunc
Func _GDIPlus_EffectCreateColorMatrix($tColorMatrix)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, 0)
Local $hEffect = _GDIPlus_EffectCreate($GDIP_ColorMatrixEffectGuid)
If @error Then Return SetError(@error, @extended, 0)
_GDIPlus_EffectSetParameters($hEffect, $tColorMatrix)
If @error Then Return SetError(@error + 10, @extended, 0)
Return $hEffect
EndFunc
Func _GDIPlus_EffectCreateHueSaturationLightness($iHueLevel = 0, $iSaturationLevel = 0, $iLightnessLevel = 0)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, 0)
Local $tEffectParameters = DllStructCreate($tagGDIP_EFFECTPARAMS_HueSaturationLightness)
DllStructSetData($tEffectParameters, "HueLevel", $iHueLevel)
DllStructSetData($tEffectParameters, "SaturationLevel", $iSaturationLevel)
DllStructSetData($tEffectParameters, "LightnessLevel", $iLightnessLevel)
Local $hEffect = _GDIPlus_EffectCreate($GDIP_HueSaturationLightnessEffectGuid)
If @error Then Return SetError(@error, @extended, 0)
_GDIPlus_EffectSetParameters($hEffect, $tEffectParameters)
If @error Then Return SetError(@error + 10, @extended, 0)
Return $hEffect
EndFunc
Func _GDIPlus_EffectCreateLevels($iHighlight = 100, $iMidtone = 0, $iShadow = 0)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, 0)
Local $tEffectParameters = DllStructCreate($tagGDIP_EFFECTPARAMS_Levels)
DllStructSetData($tEffectParameters, "Highlight", $iHighlight)
DllStructSetData($tEffectParameters, "Midtone", $iMidtone)
DllStructSetData($tEffectParameters, "Shadow", $iShadow)
Local $hEffect = _GDIPlus_EffectCreate($GDIP_LevelsEffectGuid)
If @error Then Return SetError(@error, @extended, 0)
_GDIPlus_EffectSetParameters($hEffect, $tEffectParameters)
If @error Then Return SetError(@error + 10, @extended, 0)
Return $hEffect
EndFunc
Func _GDIPlus_EffectCreateRedEyeCorrection($aAreas)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, 0)
Local $iCount = $aAreas[0][0]
Local $tAreas = DllStructCreate("long[" & $iCount * 4 & "]")
For $iI = 1 To $iCount
DllStructSetData($tAreas, 1, DllStructSetData($tAreas, 1, $aAreas[$iI][0], (($iI - 1) * 4) + 1) + $aAreas[$iI][2], (($iI - 1) * 4) + 3)
DllStructSetData($tAreas, 1, DllStructSetData($tAreas, 1, $aAreas[$iI][1], (($iI - 1) * 4) + 2) + $aAreas[$iI][3], (($iI - 1) * 4) + 4)
Next
Local $tEffectParameters = DllStructCreate($tagGDIP_EFFECTPARAMS_RedEyeCorrection)
DllStructSetData($tEffectParameters, "NumberOfAreas", $iCount)
DllStructSetData($tEffectParameters, "Areas", DllStructGetPtr($tAreas))
Local $hEffect = _GDIPlus_EffectCreate($GDIP_RedEyeCorrectionEffectGuid)
If @error Then Return SetError(@error, @extended, 0)
_GDIPlus_EffectSetParameters($hEffect, $tEffectParameters, (DllStructGetSize($tAreas) + DllStructGetSize($tEffectParameters)) / DllStructGetSize($tEffectParameters))
If @error Then Return SetError(@error + 10, @extended, 0)
Return $hEffect
EndFunc
Func _GDIPlus_EffectCreateSharpen($fRadius = 10.0, $fAmount = 50.0)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, 0)
Local $tEffectParameters = DllStructCreate($tagGDIP_EFFECTPARAMS_Sharpen)
DllStructSetData($tEffectParameters, "Radius", $fRadius)
DllStructSetData($tEffectParameters, "Amount", $fAmount)
Local $hEffect = _GDIPlus_EffectCreate($GDIP_SharpenEffectGuid)
If @error Then Return SetError(@error, @extended, 0)
_GDIPlus_EffectSetParameters($hEffect, $tEffectParameters)
If @error Then Return SetError(@error + 10, @extended, 0)
Return $hEffect
EndFunc
Func _GDIPlus_EffectCreateTint($iHue = 0, $iAmount = 0)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, 0)
Local $tEffectParameters = DllStructCreate($tagGDIP_EFFECTPARAMS_Tint)
DllStructSetData($tEffectParameters, "Hue", $iHue)
DllStructSetData($tEffectParameters, "Amount", $iAmount)
Local $hEffect = _GDIPlus_EffectCreate($GDIP_TintEffectGuid)
If @error Then Return SetError(@error, @extended, 0)
_GDIPlus_EffectSetParameters($hEffect, $tEffectParameters)
If @error Then Return SetError(@error + 10, @extended, 0)
Return $hEffect
EndFunc
Func _GDIPlus_EffectDispose($hEffect)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, False)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipDeleteEffect", "handle", $hEffect)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_EffectGetParameters($hEffect, $tEffectParameters)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, False)
If DllStructGetSize($tEffectParameters) < __GDIPlus_EffectGetParameterSize($hEffect) Then Return SetError(2, 5, False)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetEffectParameters", "handle", $hEffect, "uint*", DllStructGetSize($tEffectParameters), "struct*", $tEffectParameters)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func __GDIPlus_EffectGetParameterSize($hEffect)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, -1)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipGetEffectParameterSize", "handle", $hEffect, "uint*", 0)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] Then Return SetError(10, $aCall[0], -1)
Return $aCall[2]
EndFunc
Func _GDIPlus_EffectSetParameters($hEffect, $tEffectParameters, $iSizeAdjust = 1)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, False)
Local $iSize = __GDIPlus_EffectGetParameterSize($hEffect)
If @error Then Return SetError(@error, @extended, False)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipSetEffectParameters", "handle", $hEffect, "struct*", $tEffectParameters, "uint", $iSize * $iSizeAdjust)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] Then Return SetError(10, $aCall[0], False)
Return True
EndFunc
Func _GDIPlus_PaletteInitialize($iEntries, $iPaletteType = $GDIP_PaletteTypeOptimal, $iOptimalColors = 0, $bUseTransparentColor = True, $hBitmap = Null)
If $__g_bGDIP_V1_0 Then Return SetError(-1, 0, 0)
If $iOptimalColors > 0 Then $iPaletteType = $GDIP_PaletteTypeOptimal
Local $tPalette = DllStructCreate("uint Flags; uint Count; uint ARGB[" & $iEntries & "];")
DllStructSetData($tPalette, "Flags", $iPaletteType)
DllStructSetData($tPalette, "Count", $iEntries)
Local $aCall = DllCall($__g_hGDIPDll, "int", "GdipInitializePalette", "struct*", $tPalette, "uint", $iPaletteType, "uint", $iOptimalColors, "bool", $bUseTransparentColor, "handle", $hBitmap)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $tPalette
EndFunc
Global Const $GMEM_FIXED = 0x0000
Global Const $GMEM_MOVEABLE = 0x0002
Global Const $GMEM_NOCOMPACT = 0x0010
Global Const $GMEM_NODISCARD = 0x0020
Global Const $GMEM_ZEROINIT = 0x0040
Global Const $GMEM_MODIFY = 0x0080
Global Const $GMEM_DISCARDABLE = 0x0100
Global Const $GMEM_NOT_BANKED = 0x1000
Global Const $GMEM_SHARE = 0x2000
Global Const $GMEM_DDESHARE = 0x2000
Global Const $GMEM_NOTIFY = 0x4000
Global Const $GMEM_LOWER = 0x1000
Global Const $GMEM_VALID_FLAGS = 0x7F72
Global Const $GMEM_INVALID_HANDLE = 0x8000
Global Const $GPTR = BitOR($GMEM_FIXED, $GMEM_ZEROINIT)
Global Const $GHND = BitOR($GMEM_MOVEABLE, $GMEM_ZEROINIT)
Global Const $MEM_COMMIT = 0x00001000
Global Const $MEM_RESERVE = 0x00002000
Global Const $MEM_TOP_DOWN = 0x00100000
Global Const $MEM_SHARED = 0x08000000
Global Const $PAGE_NOACCESS = 0x00000001
Global Const $PAGE_READONLY = 0x00000002
Global Const $PAGE_READWRITE = 0x00000004
Global Const $PAGE_EXECUTE = 0x00000010
Global Const $PAGE_EXECUTE_READ = 0x00000020
Global Const $PAGE_EXECUTE_READWRITE = 0x00000040
Global Const $PAGE_EXECUTE_WRITECOPY = 0x00000080
Global Const $PAGE_GUARD = 0x00000100
Global Const $PAGE_NOCACHE = 0x00000200
Global Const $PAGE_WRITECOMBINE = 0x00000400
Global Const $PAGE_WRITECOPY = 0x00000008
Global Const $MEM_DECOMMIT = 0x00004000
Global Const $MEM_RELEASE = 0x00008000
Global Enum $MEM_LOAD, $MEM_TOTALPHYSRAM, $MEM_AVAILPHYSRAM, $MEM_TOTALPAGEFILE, $MEM_AVAILPAGEFILE, $MEM_TOTALVIRTUAL, $MEM_AVAILVIRTUAL
Global Const $PROCESS_TERMINATE = 0x00000001
Global Const $PROCESS_CREATE_THREAD = 0x00000002
Global Const $PROCESS_SET_SESSIONID = 0x00000004
Global Const $PROCESS_VM_OPERATION = 0x00000008
Global Const $PROCESS_VM_READ = 0x00000010
Global Const $PROCESS_VM_WRITE = 0x00000020
Global Const $PROCESS_DUP_HANDLE = 0x00000040
Global Const $PROCESS_CREATE_PROCESS = 0x00000080
Global Const $PROCESS_SET_QUOTA = 0x00000100
Global Const $PROCESS_SET_INFORMATION = 0x00000200
Global Const $PROCESS_QUERY_INFORMATION = 0x00000400
Global Const $PROCESS_QUERY_LIMITED_INFORMATION = 0x1000
Global Const $PROCESS_SUSPEND_RESUME = 0x00000800
Global Const $PROCESS_ALL_ACCESS = 0x001F0FFF
Global Const $SE_ASSIGNPRIMARYTOKEN_NAME = "SeAssignPrimaryTokenPrivilege"
Global Const $SE_AUDIT_NAME = "SeAuditPrivilege"
Global Const $SE_BACKUP_NAME = "SeBackupPrivilege"
Global Const $SE_CHANGE_NOTIFY_NAME = "SeChangeNotifyPrivilege"
Global Const $SE_CREATE_GLOBAL_NAME = "SeCreateGlobalPrivilege"
Global Const $SE_CREATE_PAGEFILE_NAME = "SeCreatePagefilePrivilege"
Global Const $SE_CREATE_PERMANENT_NAME = "SeCreatePermanentPrivilege"
Global Const $SE_CREATE_SYMBOLIC_LINK_NAME = 'SeCreateSymbolicLinkPrivilege'
Global Const $SE_CREATE_TOKEN_NAME = "SeCreateTokenPrivilege"
Global Const $SE_DEBUG_NAME = "SeDebugPrivilege"
Global Const $SE_ENABLE_DELEGATION_NAME = "SeEnableDelegationPrivilege"
Global Const $SE_IMPERSONATE_NAME = "SeImpersonatePrivilege"
Global Const $SE_INC_BASE_PRIORITY_NAME = "SeIncreaseBasePriorityPrivilege"
Global Const $SE_INC_WORKING_SET_NAME = 'SeIncreaseWorkingSetPrivilege'
Global Const $SE_INCREASE_QUOTA_NAME = "SeIncreaseQuotaPrivilege"
Global Const $SE_LOAD_DRIVER_NAME = "SeLoadDriverPrivilege"
Global Const $SE_LOCK_MEMORY_NAME = "SeLockMemoryPrivilege"
Global Const $SE_MACHINE_ACCOUNT_NAME = "SeMachineAccountPrivilege"
Global Const $SE_MANAGE_VOLUME_NAME = "SeManageVolumePrivilege"
Global Const $SE_PROF_SINGLE_PROCESS_NAME = "SeProfileSingleProcessPrivilege"
Global Const $SE_RELABEL_NAME = 'SeRelabelPrivilege'
Global Const $SE_REMOTE_SHUTDOWN_NAME = "SeRemoteShutdownPrivilege"
Global Const $SE_RESTORE_NAME = "SeRestorePrivilege"
Global Const $SE_SECURITY_NAME = "SeSecurityPrivilege"
Global Const $SE_SHUTDOWN_NAME = "SeShutdownPrivilege"
Global Const $SE_SYNC_AGENT_NAME = "SeSyncAgentPrivilege"
Global Const $SE_SYSTEM_ENVIRONMENT_NAME = "SeSystemEnvironmentPrivilege"
Global Const $SE_SYSTEM_PROFILE_NAME = "SeSystemProfilePrivilege"
Global Const $SE_SYSTEMTIME_NAME = "SeSystemtimePrivilege"
Global Const $SE_TAKE_OWNERSHIP_NAME = "SeTakeOwnershipPrivilege"
Global Const $SE_TCB_NAME = "SeTcbPrivilege"
Global Const $SE_TIME_ZONE_NAME = 'SeTimeZonePrivilege'
Global Const $SE_TRUSTED_CREDMAN_ACCESS_NAME = 'SeTrustedCredManAccessPrivilege'
Global Const $SE_UNSOLICITED_INPUT_NAME = "SeUnsolicitedInputPrivilege"
Global Const $SE_UNDOCK_NAME = "SeUndockPrivilege"
Global Const $SE_PRIVILEGE_ENABLED_BY_DEFAULT = 0x00000001
Global Const $SE_PRIVILEGE_ENABLED = 0x00000002
Global Const $SE_PRIVILEGE_REMOVED = 0x00000004
Global Const $SE_PRIVILEGE_USED_FOR_ACCESS = 0x80000000
Global Const $SE_GROUP_MANDATORY = 0x00000001
Global Const $SE_GROUP_ENABLED_BY_DEFAULT = 0x00000002
Global Const $SE_GROUP_ENABLED = 0x00000004
Global Const $SE_GROUP_OWNER = 0x00000008
Global Const $SE_GROUP_USE_FOR_DENY_ONLY = 0x00000010
Global Const $SE_GROUP_INTEGRITY = 0x00000020
Global Const $SE_GROUP_INTEGRITY_ENABLED = 0x00000040
Global Const $SE_GROUP_RESOURCE = 0x20000000
Global Const $SE_GROUP_LOGON_ID = 0xC0000000
Global Enum $TOKENPRIMARY = 1, $TOKENIMPERSONATION
Global Enum $SECURITYANONYMOUS = 0, $SECURITYIDENTIFICATION, $SECURITYIMPERSONATION, $SECURITYDELEGATION
Global Enum $TOKENUSER = 1, $TOKENGROUPS, $TOKENPRIVILEGES, $TOKENOWNER, $TOKENPRIMARYGROUP, $TOKENDEFAULTDACL, $TOKENSOURCE, $TOKENTYPE, $TOKENIMPERSONATIONLEVEL, $TOKENSTATISTICS, $TOKENRESTRICTEDSIDS, $TOKENSESSIONID, $TOKENGROUPSANDPRIVILEGES, $TOKENSESSIONREFERENCE, $TOKENSANDBOXINERT, $TOKENAUDITPOLICY, $TOKENORIGIN, $TOKENELEVATIONTYPE, $TOKENLINKEDTOKEN, $TOKENELEVATION, $TOKENHASRESTRICTIONS, $TOKENACCESSINFORMATION, $TOKENVIRTUALIZATIONALLOWED, $TOKENVIRTUALIZATIONENABLED, $TOKENINTEGRITYLEVEL, $TOKENUIACCESS, $TOKENMANDATORYPOLICY, $TOKENLOGONSID
Global Const $TOKEN_ASSIGN_PRIMARY = 0x00000001
Global Const $TOKEN_DUPLICATE = 0x00000002
Global Const $TOKEN_IMPERSONATE = 0x00000004
Global Const $TOKEN_QUERY = 0x00000008
Global Const $TOKEN_QUERY_SOURCE = 0x00000010
Global Const $TOKEN_ADJUST_PRIVILEGES = 0x00000020
Global Const $TOKEN_ADJUST_GROUPS = 0x00000040
Global Const $TOKEN_ADJUST_DEFAULT = 0x00000080
Global Const $TOKEN_ADJUST_SESSIONID = 0x00000100
Global Const $TOKEN_ALL_ACCESS = 0x000F01FF
Global Const $TOKEN_READ = 0x00020008
Global Const $TOKEN_WRITE = 0x000200E0
Global Const $TOKEN_EXECUTE = 0x00020000
Global Const $TOKEN_HAS_TRAVERSE_PRIVILEGE = 0x00000001
Global Const $TOKEN_HAS_BACKUP_PRIVILEGE = 0x00000002
Global Const $TOKEN_HAS_RESTORE_PRIVILEGE = 0x00000004
Global Const $TOKEN_HAS_ADMIN_GROUP = 0x00000008
Global Const $TOKEN_IS_RESTRICTED = 0x00000010
Global Const $TOKEN_SESSION_NOT_REFERENCED = 0x00000020
Global Const $TOKEN_SANDBOX_INERT = 0x00000040
Global Const $TOKEN_HAS_IMPERSONATE_PRIVILEGE = 0x00000080
Global Const $STANDARD_RIGHTS_DELETE = 0x00010000
Global Const $READ_CONTROL = 0x00020000
Global Const $WRITE_DAC = 0x00040000
Global Const $WRITE_OWNER = 0x00080000
Global Const $STANDARD_RIGHTS_SYNCHRONIZE = 0x00100000
Global Const $ACCESS_SYSTEM_SECURITY = 0x01000000
Global Const $STANDARD_RIGHTS_REQUIRED = 0x000f0000
Global Const $STANDARD_RIGHTS_READ = $READ_CONTROL
Global Const $STANDARD_RIGHTS_WRITE = $READ_CONTROL
Global Const $STANDARD_RIGHTS_EXECUTE = $READ_CONTROL
Global Const $STANDARD_RIGHTS_ALL = 0x001F0000
Global Const $SPECIFIC_RIGHTS_ALL = 0x0000FFFF
Global Enum $NOT_USED_ACCESS = 0, $GRANT_ACCESS, $SET_ACCESS, $DENY_ACCESS, $REVOKE_ACCESS, $SET_AUDIT_SUCCESS, $SET_AUDIT_FAILURE
Global Enum $TRUSTEE_IS_UNKNOWN = 0, $TRUSTEE_IS_USER, $TRUSTEE_IS_GROUP, $TRUSTEE_IS_DOMAIN, $TRUSTEE_IS_ALIAS, $TRUSTEE_IS_WELL_KNOWN_GROUP, $TRUSTEE_IS_DELETED, $TRUSTEE_IS_INVALID, $TRUSTEE_IS_COMPUTER
Global Const $LOGON_WITH_PROFILE = 0x00000001
Global Const $LOGON_NETCREDENTIALS_ONLY = 0x00000002
Global Enum $SIDTYPEUSER = 1, $SIDTYPEGROUP, $SIDTYPEDOMAIN, $SIDTYPEALIAS, $SIDTYPEWELLKNOWNGROUP, $SIDTYPEDELETEDACCOUNT, $SIDTYPEINVALID, $SIDTYPEUNKNOWN, $SIDTYPECOMPUTER, $SIDTYPELABEL
Global Const $SID_ADMINISTRATORS = "S-1-5-32-544"
Global Const $SID_USERS = "S-1-5-32-545"
Global Const $SID_GUESTS = "S-1-5-32-546"
Global Const $SID_ACCOUNT_OPERATORS = "S-1-5-32-548"
Global Const $SID_SERVER_OPERATORS = "S-1-5-32-549"
Global Const $SID_PRINT_OPERATORS = "S-1-5-32-550"
Global Const $SID_BACKUP_OPERATORS = "S-1-5-32-551"
Global Const $SID_REPLICATOR = "S-1-5-32-552"
Global Const $SID_OWNER = "S-1-3-0"
Global Const $SID_EVERYONE = "S-1-1-0"
Global Const $SID_NETWORK = "S-1-5-2"
Global Const $SID_INTERACTIVE = "S-1-5-4"
Global Const $SID_SYSTEM = "S-1-5-18"
Global Const $SID_AUTHENTICATED_USERS = "S-1-5-11"
Global Const $SID_SCHANNEL_AUTHENTICATION = "S-1-5-64-14"
Global Const $SID_DIGEST_AUTHENTICATION = "S-1-5-64-21"
Global Const $SID_NT_SERVICE = "S-1-5-80"
Global Const $SID_UNTRUSTED_MANDATORY_LEVEL = "S-1-16-0"
Global Const $SID_LOW_MANDATORY_LEVEL = "S-1-16-4096"
Global Const $SID_MEDIUM_MANDATORY_LEVEL = "S-1-16-8192"
Global Const $SID_MEDIUM_PLUS_MANDATORY_LEVEL = "S-1-16-8448"
Global Const $SID_HIGH_MANDATORY_LEVEL = "S-1-16-12288"
Global Const $SID_SYSTEM_MANDATORY_LEVEL = "S-1-16-16384"
Global Const $SID_PROTECTED_PROCESS_MANDATORY_LEVEL = "S-1-16-20480"
Global Const $SID_SECURE_PROCESS_MANDATORY_LEVEL = "S-1-16-28672"
Global Const $SID_ALL_SERVICES = "S-1-5-80-0"
Func _Security__AdjustTokenPrivileges($hToken, $bDisableAll, $tNewState, $iBufferLen, $tPrevState = 0, $pRequired = 0)
Local $aCall = DllCall("advapi32.dll", "bool", "AdjustTokenPrivileges", "handle", $hToken, "bool", $bDisableAll, "struct*", $tNewState, "dword", $iBufferLen, "struct*", $tPrevState, "struct*", $pRequired)
If @error Then Return SetError(@error, @extended, False)
Return Not ($aCall[0] = 0)
EndFunc
Func _Security__CreateProcessWithToken($hToken, $iLogonFlags, $sCommandLine, $iCreationFlags, $sCurDir, $tSTARTUPINFO, $tPROCESS_INFORMATION)
Local $aCall = DllCall("advapi32.dll", "bool", "CreateProcessWithTokenW", "handle", $hToken, "dword", $iLogonFlags, "ptr", 0, "wstr", $sCommandLine, "dword", $iCreationFlags, "struct*", 0, "wstr", $sCurDir, "struct*", $tSTARTUPINFO, "struct*", $tPROCESS_INFORMATION)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, False)
Return True
EndFunc
Func _Security__DuplicateTokenEx($hExistingToken, $iDesiredAccess, $iImpersonationLevel, $iTokenType)
Local $aCall = DllCall("advapi32.dll", "bool", "DuplicateTokenEx", "handle", $hExistingToken, "dword", $iDesiredAccess, "struct*", 0, "int", $iImpersonationLevel, "int", $iTokenType, "handle*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[6]
EndFunc
Func _Security__GetAccountSid($sAccount, $sSystem = "")
Local $aAcct = _Security__LookupAccountName($sAccount, $sSystem)
If @error Then Return SetError(@error, @extended, 0)
If IsArray($aAcct) Then Return _Security__StringSidToSid($aAcct[0])
Return ''
EndFunc
Func _Security__GetLengthSid($pSID)
If Not _Security__IsValidSid($pSID) Then Return SetError(@error + 10, @extended, 0)
Local $aCall = DllCall("advapi32.dll", "dword", "GetLengthSid", "struct*", $pSID)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _Security__GetTokenInformation($hToken, $iClass)
Local $aCall = DllCall("advapi32.dll", "bool", "GetTokenInformation", "handle", $hToken, "int", $iClass, "struct*", 0, "dword", 0, "dword*", 0)
If @error Or Not $aCall[5] Then Return SetError(@error + 20, @extended, 0)
Local $iLen = $aCall[5]
Local $tBuffer = DllStructCreate("byte[" & $iLen & "]")
$aCall = DllCall("advapi32.dll", "bool", "GetTokenInformation", "handle", $hToken, "int", $iClass, "struct*", $tBuffer, "dword", DllStructGetSize($tBuffer), "dword*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tBuffer
EndFunc
Func _Security__ImpersonateSelf($iLevel = $SECURITYIMPERSONATION)
Local $aCall = DllCall("advapi32.dll", "bool", "ImpersonateSelf", "int", $iLevel)
If @error Then Return SetError(@error, @extended, False)
Return Not ($aCall[0] = 0)
EndFunc
Func _Security__IsValidSid($pSID)
Local $aCall = DllCall("advapi32.dll", "bool", "IsValidSid", "struct*", $pSID)
If @error Then Return SetError(@error, @extended, False)
Return Not ($aCall[0] = 0)
EndFunc
Func _Security__LookupAccountName($sAccount, $sSystem = "")
Local $tData = DllStructCreate("byte SID[256]")
Local $aCall = DllCall("advapi32.dll", "bool", "LookupAccountNameW", "wstr", $sSystem, "wstr", $sAccount, "struct*", $tData, "dword*", DllStructGetSize($tData), "wstr", "", "dword*", DllStructGetSize($tData), "int*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aAcct[3]
$aAcct[0] = _Security__SidToStringSid(DllStructGetPtr($tData, "SID"))
$aAcct[1] = $aCall[5]
$aAcct[2] = $aCall[7]
Return $aAcct
EndFunc
Func _Security__LookupAccountSid($vSID, $sSystem = "")
Local $pSID, $aAcct[3]
If IsString($vSID) Then
$pSID = _Security__StringSidToSid($vSID)
Else
$pSID = $vSID
EndIf
If Not _Security__IsValidSid($pSID) Then Return SetError(@error + 20, @extended, 0)
If $sSystem = "" Then $sSystem = Null
Local $aCall = DllCall("advapi32.dll", "bool", "LookupAccountSidW", "wstr", $sSystem, "struct*", $pSID, "wstr", "", "dword*", 65536, "wstr", "", "dword*", 65536, "int*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aAcct[3]
$aAcct[0] = $aCall[3]
$aAcct[1] = $aCall[5]
$aAcct[2] = $aCall[7]
Return $aAcct
EndFunc
Func _Security__LookupPrivilegeValue($sSystem, $sName)
Local $aCall = DllCall("advapi32.dll", "bool", "LookupPrivilegeValueW", "wstr", $sSystem, "wstr", $sName, "int64*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[3]
EndFunc
Func _Security__OpenProcessToken($hProcess, $iAccess)
Local $aCall = DllCall("advapi32.dll", "bool", "OpenProcessToken", "handle", $hProcess, "dword", $iAccess, "handle*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[3]
EndFunc
Func _Security__OpenThreadToken($iAccess, $hThread = 0, $bOpenAsSelf = False)
Local $aCall
If $hThread = 0 Then
$aCall = DllCall("kernel32.dll", "handle", "GetCurrentThread")
If @error Then Return SetError(@error + 20, @extended, 0)
$hThread = $aCall[0]
EndIf
$aCall = DllCall("advapi32.dll", "bool", "OpenThreadToken", "handle", $hThread, "dword", $iAccess, "bool", $bOpenAsSelf, "handle*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[4]
EndFunc
Func _Security__OpenThreadTokenEx($iAccess, $hThread = 0, $bOpenAsSelf = False)
Local $hToken = _Security__OpenThreadToken($iAccess, $hThread, $bOpenAsSelf)
If $hToken = 0 Then
Local Const $ERROR_NO_TOKEN = 1008
If _WinAPI_GetLastError() <> $ERROR_NO_TOKEN Then Return SetError(20, _WinAPI_GetLastError(), 0)
If Not _Security__ImpersonateSelf() Then Return SetError(@error + 10, _WinAPI_GetLastError(), 0)
$hToken = _Security__OpenThreadToken($iAccess, $hThread, $bOpenAsSelf)
If $hToken = 0 Then Return SetError(@error, _WinAPI_GetLastError(), 0)
EndIf
Return $hToken
EndFunc
Func _Security__SetPrivilege($hToken, $sPrivilege, $bEnable)
Local $iLUID = _Security__LookupPrivilegeValue("", $sPrivilege)
If $iLUID = 0 Then Return SetError(@error + 10, @extended, False)
Local Const $tagTOKEN_PRIVILEGES = "dword Count;align 4;int64 LUID;dword Attributes"
Local $tCurrState = DllStructCreate($tagTOKEN_PRIVILEGES)
Local $iCurrState = DllStructGetSize($tCurrState)
Local $tPrevState = DllStructCreate($tagTOKEN_PRIVILEGES)
Local $iPrevState = DllStructGetSize($tPrevState)
Local $tRequired = DllStructCreate("int Data")
DllStructSetData($tCurrState, "Count", 1)
DllStructSetData($tCurrState, "LUID", $iLUID)
If Not _Security__AdjustTokenPrivileges($hToken, False, $tCurrState, $iCurrState, $tPrevState, $tRequired) Then Return SetError(2, @error, False)
DllStructSetData($tPrevState, "Count", 1)
DllStructSetData($tPrevState, "LUID", $iLUID)
Local $iAttributes = DllStructGetData($tPrevState, "Attributes")
If $bEnable Then
$iAttributes = BitOR($iAttributes, $SE_PRIVILEGE_ENABLED)
Else
$iAttributes = BitAND($iAttributes, BitNOT($SE_PRIVILEGE_ENABLED))
EndIf
DllStructSetData($tPrevState, "Attributes", $iAttributes)
If Not _Security__AdjustTokenPrivileges($hToken, False, $tPrevState, $iPrevState, $tCurrState, $tRequired) Then  Return SetError(3, @error, False)
Return True
EndFunc
Func _Security__SetTokenInformation($hToken, $iTokenInformation, $vTokenInformation, $iTokenInformationLength)
Local $aCall = DllCall("advapi32.dll", "bool", "SetTokenInformation", "handle", $hToken, "int", $iTokenInformation, "struct*", $vTokenInformation, "dword", $iTokenInformationLength)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, False)
Return True
EndFunc
Func _Security__SidToStringSid($pSID)
If Not _Security__IsValidSid($pSID) Then Return SetError(@error + 10, 0, "")
Local $aCall = DllCall("advapi32.dll", "bool", "ConvertSidToStringSidW", "struct*", $pSID, "ptr*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, "")
Local $pStringSid = $aCall[2]
Local $aLen = DllCall("kernel32.dll", "int", "lstrlenW", "struct*", $pStringSid)
Local $sSID = DllStructGetData(DllStructCreate("wchar Text[" & $aLen[0] + 1 & "]", $pStringSid), "Text")
DllCall("kernel32.dll", "handle", "LocalFree", "handle", $pStringSid)
Return $sSID
EndFunc
Func _Security__SidTypeStr($iType)
Switch $iType
Case $SIDTYPEUSER
Return "User"
Case $SIDTYPEGROUP
Return "Group"
Case $SIDTYPEDOMAIN
Return "Domain"
Case $SIDTYPEALIAS
Return "Alias"
Case $SIDTYPEWELLKNOWNGROUP
Return "Well Known Group"
Case $SIDTYPEDELETEDACCOUNT
Return "Deleted Account"
Case $SIDTYPEINVALID
Return "Invalid"
Case $SIDTYPEUNKNOWN
Return "Unknown Type"
Case $SIDTYPECOMPUTER
Return "Computer"
Case $SIDTYPELABEL
Return "A mandatory integrity label SID"
Case Else
Return "Unknown SID Type"
EndSwitch
EndFunc
Func _Security__StringSidToSid($sSID)
Local $aCall = DllCall("advapi32.dll", "bool", "ConvertStringSidToSidW", "wstr", $sSID, "ptr*", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $pSID = $aCall[2]
Local $tBuffer = DllStructCreate("byte Data[" & _Security__GetLengthSid($pSID) & "]", $pSID)
Local $tSID = DllStructCreate("byte Data[" & DllStructGetSize($tBuffer) & "]")
DllStructSetData($tSID, "Data", DllStructGetData($tBuffer, "Data"))
DllCall("kernel32.dll", "handle", "LocalFree", "handle", $pSID)
Return $tSID
EndFunc
Global Const $tagMEMMAP = "handle hProc;ulong_ptr Size;ptr Mem"
Func _MemFree(ByRef $tMemMap)
Local $pMemory = DllStructGetData($tMemMap, "Mem")
Local $hProcess = DllStructGetData($tMemMap, "hProc")
Local $bResult = _MemVirtualFreeEx($hProcess, $pMemory, 0, $MEM_RELEASE)
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hProcess)
If @error Then Return SetError(@error, @extended, False)
Return $bResult
EndFunc
Func _MemGlobalAlloc($iBytes, $iFlags = 0)
Local $aCall = DllCall("kernel32.dll", "handle", "GlobalAlloc", "uint", $iFlags, "ulong_ptr", $iBytes)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _MemGlobalFree($hMemory)
Local $aCall = DllCall("kernel32.dll", "ptr", "GlobalFree", "handle", $hMemory)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _MemGlobalLock($hMemory)
Local $aCall = DllCall("kernel32.dll", "ptr", "GlobalLock", "handle", $hMemory)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _MemGlobalRealloc($hMemory, $iBytes, $iFlags = 0)
Local $aResult = DllCall("kernel32.dll", "handle", "GlobalReAlloc", "handle", $hMemory, "ulong_ptr", $iBytes, "uint", $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aResult[0]
EndFunc
Func _MemGlobalSize($hMemory)
Local $aCall = DllCall("kernel32.dll", "ulong_ptr", "GlobalSize", "handle", $hMemory)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _MemGlobalUnlock($hMemory)
Local $aCall = DllCall("kernel32.dll", "bool", "GlobalUnlock", "handle", $hMemory)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _MemInit($hWnd, $iSize, ByRef $tMemMap)
Local $aCall = DllCall("user32.dll", "dword", "GetWindowThreadProcessId", "hwnd", $hWnd, "dword*", 0)
If @error Then Return SetError(@error + 10, @extended, 0)
Local $iProcessID = $aCall[2]
If $iProcessID = 0 Then Return SetError(1, 0, 0)
Local $iAccess = BitOR($PROCESS_VM_OPERATION, $PROCESS_VM_READ, $PROCESS_VM_WRITE)
Local $hProcess = __Mem_OpenProcess($iAccess, False, $iProcessID, True)
Local $iAlloc = BitOR($MEM_RESERVE, $MEM_COMMIT)
Local $pMemory = _MemVirtualAllocEx($hProcess, 0, $iSize, $iAlloc, $PAGE_READWRITE)
If $pMemory = 0 Then Return SetError(2, 0, 0)
$tMemMap = DllStructCreate($tagMEMMAP)
DllStructSetData($tMemMap, "hProc", $hProcess)
DllStructSetData($tMemMap, "Size", $iSize)
DllStructSetData($tMemMap, "Mem", $pMemory)
Return $pMemory
EndFunc
Func _MemMoveMemory($pSource, $pDest, $iLength)
DllCall("kernel32.dll", "none", "RtlMoveMemory", "struct*", $pDest, "struct*", $pSource, "ulong_ptr", $iLength)
If @error Then Return SetError(@error, @extended)
EndFunc
Func _MemRead(ByRef $tMemMap, $pSrce, $pDest, $iSize)
Local $aCall = DllCall("kernel32.dll", "bool", "ReadProcessMemory", "handle", DllStructGetData($tMemMap, "hProc"),  "ptr", $pSrce, "struct*", $pDest, "ulong_ptr", $iSize, "ulong_ptr*", 0)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _MemWrite(ByRef $tMemMap, $pSrce, $pDest = 0, $iSize = 0, $sSrce = "struct*")
If $pDest = 0 Then $pDest = DllStructGetData($tMemMap, "Mem")
If $iSize = 0 Then $iSize = DllStructGetData($tMemMap, "Size")
Local $aCall = DllCall("kernel32.dll", "bool", "WriteProcessMemory", "handle", DllStructGetData($tMemMap, "hProc"),  "ptr", $pDest, $sSrce, $pSrce, "ulong_ptr", $iSize, "ulong_ptr*", 0)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _MemVirtualAlloc($pAddress, $iSize, $iAllocation, $iProtect)
Local $aCall = DllCall("kernel32.dll", "ptr", "VirtualAlloc", "ptr", $pAddress, "ulong_ptr", $iSize, "dword", $iAllocation, "dword", $iProtect)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _MemVirtualAllocEx($hProcess, $pAddress, $iSize, $iAllocation, $iProtect)
Local $aCall = DllCall("kernel32.dll", "ptr", "VirtualAllocEx", "handle", $hProcess, "ptr", $pAddress, "ulong_ptr", $iSize, "dword", $iAllocation, "dword", $iProtect)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _MemVirtualFree($pAddress, $iSize, $iFreeType)
Local $aCall = DllCall("kernel32.dll", "bool", "VirtualFree", "ptr", $pAddress, "ulong_ptr", $iSize, "dword", $iFreeType)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _MemVirtualFreeEx($hProcess, $pAddress, $iSize, $iFreeType)
Local $aCall = DllCall("kernel32.dll", "bool", "VirtualFreeEx", "handle", $hProcess, "ptr", $pAddress, "ulong_ptr", $iSize, "dword", $iFreeType)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func __Mem_OpenProcess($iAccess, $bInherit, $iPID, $bDebugPriv = False)
Local $aCall = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $iAccess, "bool", $bInherit, "dword", $iPID)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return $aCall[0]
If Not $bDebugPriv Then Return SetError(100, 0, 0)
Local $hToken = _Security__OpenThreadTokenEx(BitOR($TOKEN_ADJUST_PRIVILEGES, $TOKEN_QUERY))
If @error Then Return SetError(@error + 10, @extended, 0)
_Security__SetPrivilege($hToken, $SE_DEBUG_NAME, True)
Local $iError = @error
Local $iExtended = @extended
Local $iRet = 0
If Not @error Then
$aCall = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $iAccess, "bool", $bInherit, "dword", $iPID)
$iError = @error
$iExtended = @extended
If $aCall[0] Then $iRet = $aCall[0]
_Security__SetPrivilege($hToken, $SE_DEBUG_NAME, False)
If @error Then
$iError = @error + 20
$iExtended = @extended
EndIf
Else
$iError = @error + 30
EndIf
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hToken)
Return SetError($iError, $iExtended, $iRet)
EndFunc
Global $__g_hGUICtrl_LastWnd
Func __GUICtrl_SendMsg($hWnd, $iMsg, $iIndex, ByRef $tItem, $tBuffer = 0, $bRetItem = False, $iElement = -1, $bRetBuffer = False, $iElementMax = $iElement)
If $iElement > 0 Then
DllStructSetData($tItem, $iElement, DllStructGetPtr($tBuffer))
If $iElement = $iElementMax Then DllStructSetData($tItem, $iElement + 1, DllStructGetSize($tBuffer))
EndIf
Local $iRet
If IsHWnd($hWnd) Then
If _WinAPI_InProcess($hWnd, $__g_hGUICtrl_LastWnd) Then
$iRet = DllCall("user32.dll", "lresult", "SendMessageW", "hwnd", $hWnd, "uint", $iMsg, "wparam", $iIndex, "struct*", $tItem)[0]
Else
Local $iItem = DllStructGetSize($tItem)
Local $tMemMap, $pText
Local $iBuffer = 0
If ($iElement > 0) Or ($iElementMax = 0) Then $iBuffer = DllStructGetSize($tBuffer)
Local $pMemory = _MemInit($hWnd, $iItem + $iBuffer, $tMemMap)
If $iBuffer Then
$pText = $pMemory + $iItem
If $iElementMax Then
DllStructSetData($tItem, $iElement, $pText)
Else
$iIndex = $pText
EndIf
_MemWrite($tMemMap, $tBuffer, $pText, $iBuffer)
EndIf
_MemWrite($tMemMap, $tItem, $pMemory, $iItem)
$iRet = DllCall("user32.dll", "lresult", "SendMessageW", "hwnd", $hWnd, "uint", $iMsg, "wparam", $iIndex, "ptr", $pMemory)[0]
If $iBuffer And $bRetBuffer Then _MemRead($tMemMap, $pText, $tBuffer, $iBuffer)
If $bRetItem Then _MemRead($tMemMap, $pMemory, $tItem, $iItem)
_MemFree($tMemMap)
EndIf
Else
$iRet = GUICtrlSendMsg($hWnd, $iMsg, $iIndex, DllStructGetPtr($tItem))
EndIf
Return $iRet
EndFunc
Func __GUICtrl_SendMsg_Init($hWnd, $iMsg, $iIndex, ByRef $tItem, $tBuffer = 0, $bRetItem = False, $iElement = -1, $bRetBuffer = False, $iElementMax = $iElement)
#forceref $iMsg, $iIndex, $bRetItem, $bRetBuffer
DllStructSetData($tItem, $iElement, DllStructGetPtr($tBuffer))
If $iElement = $iElementMax Then DllStructSetData($tItem, $iElement + 1, DllStructGetSize($tBuffer))
Local $pFunc
If IsHWnd($hWnd) Then
If _WinAPI_InProcess($hWnd, $__g_hGUICtrl_LastWnd) Then
$pFunc = __GUICtrl_SendMsg_InProcess
SetExtended(1)
Else
$pFunc = __GUICtrl_SendMsg_OutProcess
SetExtended(2)
EndIf
Else
$pFunc = __GUICtrl_SendMsg_Internal
SetExtended(3)
EndIf
Return $pFunc
EndFunc
Func __GUICtrl_SendMsg_InProcess($hWnd, $iMsg, $iIndex, ByRef $tItem, $tBuffer = 0, $bRetItem = False, $iElement = -1, $bRetBuffer = False, $iElementMax = $iElement)
#forceref $tBuffer, $bRetItem, $bRetBuffer, $iElementMax
Return DllCall("user32.dll", "lresult", "SendMessageW", "hwnd", $hWnd, "uint", $iMsg, "wparam", $iIndex, "struct*", $tItem)[0]
EndFunc
Func __GUICtrl_SendMsg_OutProcess($hWnd, $iMsg, $iIndex, ByRef $tItem, $tBuffer = 0, $bRetItem = False, $iElement = -1, $bRetBuffer = False, $iElementMax = $iElement)
Local $iItem = DllStructGetSize($tItem)
Local $tMemMap, $pText
Local $iBuffer = 0
If ($iElement > 0) Or ($iElementMax = 0) Then $iBuffer = DllStructGetSize($tBuffer)
Local $pMemory = _MemInit($hWnd, $iItem + $iBuffer, $tMemMap)
If $iBuffer Then
$pText = $pMemory + $iItem
If $iElementMax Then
DllStructSetData($tItem, $iElement, $pText)
Else
$iIndex = $pText
EndIf
_MemWrite($tMemMap, $tBuffer, $pText, $iBuffer)
EndIf
_MemWrite($tMemMap, $tItem, $pMemory, $iItem)
Local $iRet = DllCall("user32.dll", "lresult", "SendMessageW", "hwnd", $hWnd, "uint", $iMsg, "wparam", $iIndex, "ptr", $pMemory)[0]
If $iBuffer And $bRetBuffer Then _MemRead($tMemMap, $pText, $tBuffer, $iBuffer)
If $bRetItem Then _MemRead($tMemMap, $pMemory, $tItem, $iItem)
_MemFree($tMemMap)
Return $iRet
EndFunc
Func __GUICtrl_SendMsg_Internal($hWnd, $iMsg, $iIndex, ByRef $tItem, $tBuffer = 0, $bRetItem = False, $iElement = -1, $bRetBuffer = False, $iElementMax = $iElement)
#forceref $tBuffer, $bRetItem, $bRetBuffer, $iElementMax
Return GUICtrlSendMsg($hWnd, $iMsg, $iIndex, DllStructGetPtr($tItem))
EndFunc
Global Const $TTF_IDISHWND = 0x00000001
Global Const $TTF_CENTERTIP = 0x00000002
Global Const $TTF_RTLREADING = 0x00000004
Global Const $TTF_SUBCLASS = 0x00000010
Global Const $TTF_TRACK = 0x00000020
Global Const $TTF_ABSOLUTE = 0x00000080
Global Const $TTF_TRANSPARENT = 0x00000100
Global Const $TTF_PARSELINKS = 0x00001000
Global Const $TTF_DI_SETITEM = 0x00008000
Global Const $__TOOLTIPCONSTANTS_WM_USER = 0X400
Global Const $TTM_ACTIVATE = $__TOOLTIPCONSTANTS_WM_USER + 1
Global Const $TTM_SETDELAYTIME = $__TOOLTIPCONSTANTS_WM_USER + 3
Global Const $TTM_ADDTOOL = $__TOOLTIPCONSTANTS_WM_USER + 4
Global Const $TTM_DELTOOL = $__TOOLTIPCONSTANTS_WM_USER + 5
Global Const $TTM_NEWTOOLRECT = $__TOOLTIPCONSTANTS_WM_USER + 6
Global Const $TTM_GETTOOLINFO = $__TOOLTIPCONSTANTS_WM_USER + 8
Global Const $TTM_SETTOOLINFO = $__TOOLTIPCONSTANTS_WM_USER + 9
Global Const $TTM_HITTEST = $__TOOLTIPCONSTANTS_WM_USER + 10
Global Const $TTM_GETTEXT = $__TOOLTIPCONSTANTS_WM_USER + 11
Global Const $TTM_UPDATETIPTEXT = $__TOOLTIPCONSTANTS_WM_USER + 12
Global Const $TTM_GETTOOLCOUNT = $__TOOLTIPCONSTANTS_WM_USER + 13
Global Const $TTM_ENUMTOOLS = $__TOOLTIPCONSTANTS_WM_USER + 14
Global Const $TTM_GETCURRENTTOOL = $__TOOLTIPCONSTANTS_WM_USER + 15
Global Const $TTM_WINDOWFROMPOINT = $__TOOLTIPCONSTANTS_WM_USER + 16
Global Const $TTM_TRACKACTIVATE = $__TOOLTIPCONSTANTS_WM_USER + 17
Global Const $TTM_TRACKPOSITION = $__TOOLTIPCONSTANTS_WM_USER + 18
Global Const $TTM_SETTIPBKCOLOR = $__TOOLTIPCONSTANTS_WM_USER + 19
Global Const $TTM_SETTIPTEXTCOLOR = $__TOOLTIPCONSTANTS_WM_USER + 20
Global Const $TTM_GETDELAYTIME = $__TOOLTIPCONSTANTS_WM_USER + 21
Global Const $TTM_GETTIPBKCOLOR = $__TOOLTIPCONSTANTS_WM_USER + 22
Global Const $TTM_GETTIPTEXTCOLOR = $__TOOLTIPCONSTANTS_WM_USER + 23
Global Const $TTM_SETMAXTIPWIDTH = $__TOOLTIPCONSTANTS_WM_USER + 24
Global Const $TTM_GETMAXTIPWIDTH = $__TOOLTIPCONSTANTS_WM_USER + 25
Global Const $TTM_SETMARGIN = $__TOOLTIPCONSTANTS_WM_USER + 26
Global Const $TTM_GETMARGIN = $__TOOLTIPCONSTANTS_WM_USER + 27
Global Const $TTM_POP = $__TOOLTIPCONSTANTS_WM_USER + 28
Global Const $TTM_UPDATE = $__TOOLTIPCONSTANTS_WM_USER + 29
Global Const $TTM_GETBUBBLESIZE = $__TOOLTIPCONSTANTS_WM_USER + 30
Global Const $TTM_ADJUSTRECT = $__TOOLTIPCONSTANTS_WM_USER + 31
Global Const $TTM_SETTITLE = $__TOOLTIPCONSTANTS_WM_USER + 32
Global Const $TTM_SETTITLEW = $__TOOLTIPCONSTANTS_WM_USER + 33
Global Const $TTM_POPUP = $__TOOLTIPCONSTANTS_WM_USER + 34
Global Const $TTM_GETTITLE = $__TOOLTIPCONSTANTS_WM_USER + 35
Global Const $TTM_ADDTOOLW = $__TOOLTIPCONSTANTS_WM_USER + 50
Global Const $TTM_DELTOOLW = $__TOOLTIPCONSTANTS_WM_USER + 51
Global Const $TTM_NEWTOOLRECTW = $__TOOLTIPCONSTANTS_WM_USER + 52
Global Const $TTM_GETTOOLINFOW = $__TOOLTIPCONSTANTS_WM_USER + 53
Global Const $TTM_SETTOOLINFOW = $__TOOLTIPCONSTANTS_WM_USER + 54
Global Const $TTM_HITTESTW = $__TOOLTIPCONSTANTS_WM_USER + 55
Global Const $TTM_GETTEXTW = $__TOOLTIPCONSTANTS_WM_USER + 56
Global Const $TTM_UPDATETIPTEXTW = $__TOOLTIPCONSTANTS_WM_USER + 57
Global Const $TTM_ENUMTOOLSW = $__TOOLTIPCONSTANTS_WM_USER + 58
Global Const $TTM_GETCURRENTTOOLW = $__TOOLTIPCONSTANTS_WM_USER + 59
Global Const $TTM_SETWINDOWTHEME = 0x2000 + 11
Global Const $TTN_FIRST = -520
Global Const $TTN_GETDISPINFO = $TTN_FIRST - 0
Global Const $TTN_SHOW = $TTN_FIRST - 1
Global Const $TTN_POP = $TTN_FIRST - 2
Global Const $TTN_LINKCLICK = $TTN_FIRST - 3
Global Const $TTN_GETDISPINFOW = $TTN_FIRST - 10
Global Const $TTS_ALWAYSTIP = 0x00000001
Global Const $TTS_NOPREFIX = 0x00000002
Global Const $TTS_NOANIMATE = 0x00000010
Global Const $TTS_NOFADE = 0x00000020
Global Const $TTS_BALLOON = 0x00000040
Global Const $TTS_CLOSE = 0x00000080
Global Const $TTS_USEVISUALSTYLE = 0x00000100
Global Const $TTDT_AUTOMATIC = 0
Global Const $TTDT_RESHOW = 1
Global Const $TTDT_AUTOPOP = 2
Global Const $TTDT_INITIAL = 3
Global Enum $TTI_NONE, $TTI_INFO, $TTI_WARNING, $TTI_ERROR, $TTI_INFO_LARGE, $TTI_WARNING_LARGE, $TTI_ERROR_LARGE
Global $__g_tTTBuffer = DllStructCreate("wchar Text[4096]")
Global Const $_TOOLTIPCONSTANTS_ClassName = "tooltips_class32"
Global Const $_TT_ghTTDefaultStyle = BitOR($TTS_ALWAYSTIP, $TTS_NOPREFIX)
Global Const $tagNMTTDISPINFO = $tagNMHDR & ";ptr pText;wchar aText[80];ptr Instance;uint Flags;lparam Param"
Global Const $tagTOOLINFO = "struct; uint Size;uint Flags;hwnd hWnd;uint_ptr ID;" & $tagRECT & ";handle hInst;ptr Text;lparam Param;ptr Reserved ; endstruct"
Global Const $tagTTGETTITLE = "dword Size;uint Bitmap;uint TitleMax;ptr Title"
Global Const $tagTTHITTESTINFO = "hwnd Tool;" & $tagPOINT & ";" & $tagTOOLINFO
Func _GUIToolTip_Activate($hWnd)
_SendMessage($hWnd, $TTM_ACTIVATE, True)
EndFunc
Func _GUIToolTip_AddTool($hTool, $hWnd, $sText, $iID = 0, $iLeft = 0, $iTop = 0, $iRight = 0, $iBottom = 0, $iFlags = Default, $iParam = 0)
Local $tBuffer, $pBuffer
If $iFlags = Default Then $iFlags = BitOR($TTF_SUBCLASS, $TTF_IDISHWND)
If $sText <> -1 Then
$tBuffer = $__g_tTTBuffer
$pBuffer = DllStructGetPtr($tBuffer)
DllStructSetData($tBuffer, "Text", $sText)
Else
$tBuffer = 0
$pBuffer = -1
EndIf
Local $tToolInfo = DllStructCreate($tagTOOLINFO)
Local $iToolInfo = DllStructGetSize($tToolInfo)
DllStructSetData($tToolInfo, "Size", $iToolInfo)
DllStructSetData($tToolInfo, "Flags", $iFlags)
DllStructSetData($tToolInfo, "hWnd", $hWnd)
DllStructSetData($tToolInfo, "ID", $iID)
DllStructSetData($tToolInfo, "Left", $iLeft)
DllStructSetData($tToolInfo, "Top", $iTop)
DllStructSetData($tToolInfo, "Right", $iRight)
DllStructSetData($tToolInfo, "Bottom", $iBottom)
DllStructSetData($tToolInfo, "Param", $iParam)
DllStructSetData($tToolInfo, "Text", $pBuffer)
Local $iRet = __GUICtrl_SendMsg($hTool, $TTM_ADDTOOLW, 0, $tToolInfo, $tBuffer, False, -1)
Return $iRet <> 0
EndFunc
Func _GUIToolTip_AdjustRect($hWnd, ByRef $tRECT, $bLarger = True)
__GUICtrl_SendMsg($hWnd, $TTM_ADJUSTRECT, $bLarger, $tRECT, 0, True)
Return $tRECT
EndFunc
Func _GUIToolTip_BitsToTTF($iFlags)
Local $iN = ""
If BitAND($iFlags, $TTF_IDISHWND) <> 0 Then $iN &= "TTF_IDISHWND,"
If BitAND($iFlags, $TTF_CENTERTIP) <> 0 Then $iN &= "TTF_CENTERTIP,"
If BitAND($iFlags, $TTF_RTLREADING) <> 0 Then $iN &= "TTF_RTLREADING,"
If BitAND($iFlags, $TTF_SUBCLASS) <> 0 Then $iN &= "TTF_SUBCLASS,"
If BitAND($iFlags, $TTF_TRACK) <> 0 Then $iN &= "TTF_TRACK,"
If BitAND($iFlags, $TTF_ABSOLUTE) <> 0 Then $iN &= "TTF_ABSOLUTE,"
If BitAND($iFlags, $TTF_TRANSPARENT) <> 0 Then $iN &= "TTF_TRANSPARENT,"
If BitAND($iFlags, $TTF_PARSELINKS) <> 0 Then $iN &= "TTF_PARSELINKS,"
Return StringTrimRight($iN, 1)
EndFunc
Func _GUIToolTip_Create($hWnd, $iStyle = $_TT_ghTTDefaultStyle)
Return _WinAPI_CreateWindowEx(0, $_TOOLTIPCONSTANTS_ClassName, "", $iStyle, 0, 0, 0, 0, $hWnd)
EndFunc
Func _GUIToolTip_Deactivate($hWnd)
_SendMessage($hWnd, $TTM_ACTIVATE, False)
EndFunc
Func _GUIToolTip_DelTool($hWnd, $hTool, $iID = 0)
Local $tToolInfo = DllStructCreate($tagTOOLINFO)
Local $iToolInfo = DllStructGetSize($tToolInfo)
DllStructSetData($tToolInfo, "Size", $iToolInfo)
DllStructSetData($tToolInfo, "ID", $iID)
DllStructSetData($tToolInfo, "hWnd", $hTool)
__GUICtrl_SendMsg($hWnd, $TTM_DELTOOLW, 0, $tToolInfo)
EndFunc
Func _GUIToolTip_Destroy(ByRef $hWnd)
If Not _WinAPI_IsClassName($hWnd, $_TOOLTIPCONSTANTS_ClassName) Then Return SetError(2, 2, False)
Local $iDestroyed = 0
If IsHWnd($hWnd) Then
If _WinAPI_InProcess($hWnd, $__g_hGUICtrl_LastWnd) Then
$iDestroyed = _WinAPI_DestroyWindow($hWnd)
Else
Return SetError(1, 1, False)
EndIf
EndIf
If $iDestroyed Then $hWnd = 0
Return $iDestroyed <> 0
EndFunc
Func _GUIToolTip_EnumTools($hWnd, $iIndex)
Local $tToolInfo = DllStructCreate($tagTOOLINFO)
Local $iToolInfo = DllStructGetSize($tToolInfo)
DllStructSetData($tToolInfo, "Size", $iToolInfo)
Local $bResult = __GUICtrl_SendMsg($hWnd, $TTM_ENUMTOOLSW, $iIndex, $tToolInfo, 0, True)
Return _GUIToolTip_ToolToArray($hWnd, $tToolInfo, ($bResult = True))
EndFunc
Func _GUIToolTip_GetBubbleHeight($hWnd, $hTool, $iID, $iFlags = Default)
If $iFlags = Default Then $iFlags = BitOR($TTF_IDISHWND, $TTF_SUBCLASS)
Return _WinAPI_HiWord(_GUIToolTip_GetBubbleSize($hWnd, $hTool, $iID, $iFlags))
EndFunc
Func _GUIToolTip_GetBubbleSize($hWnd, $hTool, $iID, $iFlags = Default)
If $iFlags = Default Then $iFlags = BitOR($TTF_IDISHWND, $TTF_SUBCLASS)
Local $tToolInfo = DllStructCreate($tagTOOLINFO)
Local $iToolInfo = DllStructGetSize($tToolInfo)
DllStructSetData($tToolInfo, "Size", $iToolInfo)
DllStructSetData($tToolInfo, "hWnd", $hTool)
DllStructSetData($tToolInfo, "ID", $iID)
DllStructSetData($tToolInfo, "Flags", $iFlags)
Local $iRet = __GUICtrl_SendMsg($hWnd, $TTM_GETBUBBLESIZE, 0, $tToolInfo)
Return $iRet
EndFunc
Func _GUIToolTip_GetBubbleWidth($hWnd, $hTool, $iID, $iFlags = Default)
If $iFlags = Default Then $iFlags = BitOR($TTF_IDISHWND, $TTF_SUBCLASS)
Return _WinAPI_LoWord(_GUIToolTip_GetBubbleSize($hWnd, $hTool, $iID, $iFlags))
EndFunc
Func _GUIToolTip_GetCurrentTool($hWnd)
Local $tToolInfo = DllStructCreate($tagTOOLINFO)
Local $iToolInfo = DllStructGetSize($tToolInfo)
DllStructSetData($tToolInfo, "Size", $iToolInfo)
Local $bResult = __GUICtrl_SendMsg($hWnd, $TTM_GETCURRENTTOOLW, 0, $tToolInfo, 0, True)
Return _GUIToolTip_ToolToArray($hWnd, $tToolInfo, $bResult = True)
EndFunc
Func _GUIToolTip_GetDelayTime($hWnd, $iDuration)
Return _SendMessage($hWnd, $TTM_GETDELAYTIME, $iDuration)
EndFunc
Func _GUIToolTip_GetMargin($hWnd)
Local $aMargin[4]
Local $tRECT = _GUIToolTip_GetMarginEx($hWnd)
$aMargin[0] = DllStructGetData($tRECT, "Left")
$aMargin[1] = DllStructGetData($tRECT, "Top")
$aMargin[2] = DllStructGetData($tRECT, "Right")
$aMargin[3] = DllStructGetData($tRECT, "Bottom")
Return $aMargin
EndFunc
Func _GUIToolTip_GetMarginEx($hWnd)
Local $tRECT = DllStructCreate($tagRECT)
__GUICtrl_SendMsg($hWnd, $TTM_GETMARGIN, 0, $tRECT, 0, True)
Return $tRECT
EndFunc
Func _GUIToolTip_GetMaxTipWidth($hWnd)
Return _SendMessage($hWnd, $TTM_GETMAXTIPWIDTH)
EndFunc
Func _GUIToolTip_GetText($hWnd, $hTool, $iID)
Local $tBuffer = $__g_tTTBuffer
Local $tToolInfo = DllStructCreate($tagTOOLINFO)
Local $iToolInfo = DllStructGetSize($tToolInfo)
DllStructSetData($tToolInfo, "Size", $iToolInfo)
DllStructSetData($tToolInfo, "hWnd", $hTool)
DllStructSetData($tToolInfo, "ID", $iID)
__GUICtrl_SendMsg($hWnd, $TTM_GETTEXTW, 0, $tToolInfo, $tBuffer, False, 10, True, -1)
Return DllStructGetData($tBuffer, "Text")
EndFunc
Func _GUIToolTip_GetTipBkColor($hWnd)
Return _SendMessage($hWnd, $TTM_GETTIPBKCOLOR)
EndFunc
Func _GUIToolTip_GetTipTextColor($hWnd)
Return _SendMessage($hWnd, $TTM_GETTIPTEXTCOLOR)
EndFunc
Func _GUIToolTip_GetTitleBitMap($hWnd)
Local $tBuffer = $__g_tTTBuffer
Local $tTitle = DllStructCreate($tagTTGETTITLE)
Local $iTitle = DllStructGetSize($tTitle)
DllStructSetData($tTitle, "TitleMax", DllStructGetSize($tBuffer))
DllStructSetData($tTitle, "Size", $iTitle)
__GUICtrl_SendMsg($hWnd, $TTM_GETTITLE, 0, $tTitle, $tBuffer, False, 4, True, -1)
Return DllStructGetData($tTitle, "Bitmap")
EndFunc
Func _GUIToolTip_GetTitleText($hWnd)
Local $tBuffer = $__g_tTTBuffer
Local $tTitle = DllStructCreate($tagTTGETTITLE)
Local $iTitle = DllStructGetSize($tTitle)
DllStructSetData($tTitle, "TitleMax", DllStructGetSize($tBuffer))
DllStructSetData($tTitle, "Size", $iTitle)
__GUICtrl_SendMsg($hWnd, $TTM_GETTITLE, 0, $tTitle, $tBuffer, False, 4, True, -1)
Return DllStructGetData($tBuffer, "Text")
EndFunc
Func _GUIToolTip_GetToolCount($hWnd)
Return _SendMessage($hWnd, $TTM_GETTOOLCOUNT)
EndFunc
Func _GUIToolTip_GetToolInfo($hWnd, $hTool, $iID)
Local $tToolInfo = DllStructCreate($tagTOOLINFO)
Local $iToolInfo = DllStructGetSize($tToolInfo)
DllStructSetData($tToolInfo, "Size", $iToolInfo)
DllStructSetData($tToolInfo, "hWnd", $hTool)
DllStructSetData($tToolInfo, "ID", $iID)
Local $bResult = _SendMessage($hWnd, $TTM_GETTOOLINFOW, 0, $tToolInfo, 0, True)
Return _GUIToolTip_ToolToArray($hWnd, $tToolInfo, ($bResult = True))
EndFunc
Func _GUIToolTip_HitTest($hWnd, $hTool, $iX, $iY)
Local $tHitTest = DllStructCreate($tagTTHITTESTINFO)
Local $tToolInfo = DllStructCreate($tagTOOLINFO)
Local $iToolInfo = DllStructGetSize($tToolInfo)
DllStructSetData($tHitTest, "Tool", $hTool)
DllStructSetData($tHitTest, "X", $iX)
DllStructSetData($tHitTest, "Y", $iY)
DllStructSetData($tHitTest, "Size", $iToolInfo)
Local $bResult = __GUICtrl_SendMsg($hWnd, $TTM_HITTESTW, 0, $tHitTest, 0, True)
DllStructSetData($tToolInfo, "Size", DllStructGetData($tHitTest, "Size"))
DllStructSetData($tToolInfo, "Flags", DllStructGetData($tHitTest, "Flags"))
DllStructSetData($tToolInfo, "hWnd", DllStructGetData($tHitTest, "hWnd"))
DllStructSetData($tToolInfo, "ID", DllStructGetData($tHitTest, "ID"))
DllStructSetData($tToolInfo, "Left", DllStructGetData($tHitTest, "Left"))
DllStructSetData($tToolInfo, "Top", DllStructGetData($tHitTest, "Top"))
DllStructSetData($tToolInfo, "Right", DllStructGetData($tHitTest, "Right"))
DllStructSetData($tToolInfo, "Bottom", DllStructGetData($tHitTest, "Bottom"))
DllStructSetData($tToolInfo, "hInst", DllStructGetData($tHitTest, "hInst"))
DllStructSetData($tToolInfo, "Param", DllStructGetData($tHitTest, "Param"))
Return _GUIToolTip_ToolToArray($hWnd, $tToolInfo, $bResult = True)
EndFunc
Func _GUIToolTip_NewToolRect($hWnd, $hTool, $iID, $iLeft, $iTop, $iRight, $iBottom)
Local $tToolInfo = DllStructCreate($tagTOOLINFO)
Local $iToolInfo = DllStructGetSize($tToolInfo)
DllStructSetData($tToolInfo, "Size", $iToolInfo)
DllStructSetData($tToolInfo, "hwnd", $hTool)
DllStructSetData($tToolInfo, "ID", $iID)
DllStructSetData($tToolInfo, "Left", $iLeft)
DllStructSetData($tToolInfo, "Top", $iTop)
DllStructSetData($tToolInfo, "Right", $iRight)
DllStructSetData($tToolInfo, "Bottom", $iBottom)
__GUICtrl_SendMsg($hWnd, $TTM_NEWTOOLRECTW, 0, $tToolInfo)
EndFunc
Func _GUIToolTip_Pop($hWnd)
_SendMessage($hWnd, $TTM_POP)
EndFunc
Func _GUIToolTip_PopUp($hWnd)
_SendMessage($hWnd, $TTM_POPUP)
EndFunc
Func _GUIToolTip_SetDelayTime($hWnd, $iDuration, $iTime)
_SendMessage($hWnd, $TTM_SETDELAYTIME, $iDuration, $iTime)
EndFunc
Func _GUIToolTip_SetMargin($hWnd, $iLeft, $iTop, $iRight, $iBottom)
Local $tRECT = DllStructCreate($tagRECT)
DllStructSetData($tRECT, "Left", $iLeft)
DllStructSetData($tRECT, "Top", $iTop)
DllStructSetData($tRECT, "Right", $iRight)
DllStructSetData($tRECT, "Bottom", $iBottom)
__GUICtrl_SendMsg($hWnd, $TTM_SETMARGIN, 0, $tRECT)
EndFunc
Func _GUIToolTip_SetMaxTipWidth($hWnd, $iWidth)
Return _SendMessage($hWnd, $TTM_SETMAXTIPWIDTH, 0, $iWidth)
EndFunc
Func _GUIToolTip_SetTipBkColor($hWnd, $iColor)
_SendMessage($hWnd, $TTM_SETTIPBKCOLOR, $iColor)
EndFunc
Func _GUIToolTip_SetTipTextColor($hWnd, $iColor)
_SendMessage($hWnd, $TTM_SETTIPTEXTCOLOR, $iColor)
EndFunc
Func _GUIToolTip_SetTitle($hWnd, $sTitle, $iIcon = 0)
Local $tBuffer = $__g_tTTBuffer
DllStructSetData($tBuffer, "Text", $sTitle)
Local $iRet = __GUICtrl_SendMsg($hWnd, $TTM_SETTITLEW, $iIcon, $tBuffer)
Return $iRet <> 0
EndFunc
Func _GUIToolTip_SetToolInfo($hWnd, $sText, $iID = 0, $iLeft = 0, $iTop = 0, $iRight = 0, $iBottom = 0, $iFlags = Default, $iParam = 0)
If $iFlags = Default Then $iFlags = BitOR($TTF_SUBCLASS, $TTF_IDISHWND)
Local $tBuffer = $__g_tTTBuffer
Local $tToolInfo = DllStructCreate($tagTOOLINFO)
Local $iToolInfo = DllStructGetSize($tToolInfo)
DllStructSetData($tBuffer, "Text", $sText)
DllStructSetData($tToolInfo, "Size", $iToolInfo)
DllStructSetData($tToolInfo, "Flags", $iFlags)
DllStructSetData($tToolInfo, "hWnd", $hWnd)
DllStructSetData($tToolInfo, "ID", $iID)
DllStructSetData($tToolInfo, "Left", $iLeft)
DllStructSetData($tToolInfo, "Top", $iTop)
DllStructSetData($tToolInfo, "Right", $iRight)
DllStructSetData($tToolInfo, "Bottom", $iBottom)
DllStructSetData($tToolInfo, "Param", $iParam)
__GUICtrl_SendMsg($hWnd, $TTM_SETTOOLINFOW, 0, $tToolInfo, $tBuffer, False, 10, False, -1)
EndFunc
Func _GUIToolTip_SetWindowTheme($hWnd, $sStyle)
Local $tBuffer = _WinAPI_MultiByteToWideChar($sStyle)
__GUICtrl_SendMsg($hWnd, $TTM_SETWINDOWTHEME, 0, $tBuffer)
EndFunc
Func _GUIToolTip_ToolExists($hWnd)
Return _SendMessage($hWnd, $TTM_GETCURRENTTOOL) <> 0
EndFunc
Func _GUIToolTip_ToolToArray($hWnd, ByRef $tToolInfo, $iError)
Local $aTool[10]
$aTool[0] = DllStructGetData($tToolInfo, "Flags")
$aTool[1] = DllStructGetData($tToolInfo, "hWnd")
$aTool[2] = DllStructGetData($tToolInfo, "ID")
$aTool[3] = DllStructGetData($tToolInfo, "Left")
$aTool[4] = DllStructGetData($tToolInfo, "Top")
$aTool[5] = DllStructGetData($tToolInfo, "Right")
$aTool[6] = DllStructGetData($tToolInfo, "Bottom")
$aTool[7] = DllStructGetData($tToolInfo, "hInst")
$aTool[8] = _GUIToolTip_GetText($hWnd, $aTool[1], $aTool[2])
$aTool[9] = DllStructGetData($tToolInfo, "Param")
Return SetError($iError, 0, $aTool)
EndFunc
Func _GUIToolTip_TrackActivate($hWnd, $bActivate = True, $hTool = 0, $iID = 0)
Local $tToolInfo = DllStructCreate($tagTOOLINFO)
Local $iToolInfo = DllStructGetSize($tToolInfo)
DllStructSetData($tToolInfo, "Size", $iToolInfo)
DllStructSetData($tToolInfo, "hWnd", $hTool)
DllStructSetData($tToolInfo, "ID", $iID)
__GUICtrl_SendMsg($hWnd, $TTM_TRACKACTIVATE, $bActivate, $tToolInfo)
EndFunc
Func _GUIToolTip_TrackPosition($hWnd, $iX, $iY)
_SendMessage($hWnd, $TTM_TRACKPOSITION, 0, _WinAPI_MakeLong($iX, $iY))
EndFunc
Func _GUIToolTip_Update($hWnd)
_SendMessage($hWnd, $TTM_UPDATE)
EndFunc
Func _GUIToolTip_UpdateTipText($hWnd, $hTool, $iID, $sText)
Local $tBuffer = $__g_tTTBuffer
Local $tToolInfo = DllStructCreate($tagTOOLINFO)
Local $iToolInfo = DllStructGetSize($tToolInfo)
DllStructSetData($tBuffer, "Text", $sText)
DllStructSetData($tToolInfo, "Size", $iToolInfo)
DllStructSetData($tToolInfo, "hWnd", $hTool)
DllStructSetData($tToolInfo, "ID", $iID)
__GUICtrl_SendMsg($hWnd, $TTM_UPDATETIPTEXTW, 0, $tToolInfo, $tBuffer, False, 10, False, -1)
EndFunc
Global Const $CF_TEXT = 1
Global Const $CF_BITMAP = 2
Global Const $CF_METAFILEPICT = 3
Global Const $CF_SYLK = 4
Global Const $CF_DIF = 5
Global Const $CF_TIFF = 6
Global Const $CF_OEMTEXT = 7
Global Const $CF_DIB = 8
Global Const $CF_PALETTE = 9
Global Const $CF_PENDATA = 10
Global Const $CF_RIFF = 11
Global Const $CF_WAVE = 12
Global Const $CF_UNICODETEXT = 13
Global Const $CF_ENHMETAFILE = 14
Global Const $CF_HDROP = 15
Global Const $CF_LOCALE = 16
Global Const $CF_DIBV5 = 17
Global Const $CF_OWNERDISPLAY = 0x0080
Global Const $CF_DSPTEXT = 0x0081
Global Const $CF_DSPBITMAP = 0x0082
Global Const $CF_DSPMETAFILEPICT = 0x0083
Global Const $CF_DSPENHMETAFILE = 0x008E
Global Const $CF_PRIVATEFIRST = 0x0200
Global Const $CF_PRIVATELAST = 0x02FF
Global Const $CF_GDIOBJFIRST = 0x0300
Global Const $CF_GDIOBJLAST = 0x03FF
Func _ClipBoard_ChangeChain($hRemove, $hNewNext)
DllCall("user32.dll", "bool", "ChangeClipboardChain", "hwnd", $hRemove, "hwnd", $hNewNext)
If @error Then Return SetError(@error, @extended)
EndFunc
Func _ClipBoard_Close()
Local $aCall = DllCall("user32.dll", "bool", "CloseClipboard")
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _ClipBoard_CountFormats()
Local $aCall = DllCall("user32.dll", "int", "CountClipboardFormats")
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _ClipBoard_Empty()
Local $aCall = DllCall("user32.dll", "bool", "EmptyClipboard")
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _ClipBoard_EnumFormats($iFormat)
Local $aCall = DllCall("user32.dll", "uint", "EnumClipboardFormats", "uint", $iFormat)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _ClipBoard_FormatStr($iFormat)
Local $aFormat[18] = [17, "Text", "Bitmap", "Metafile Picture", "SYLK", "DIF", "TIFF", "OEM Text", "DIB", "Palette",  "Pen Data", "RIFF", "WAVE", "Unicode Text", "Enhanced Metafile", "HDROP", "Locale", "DIB V5"]
If $iFormat >= 1 And $iFormat <= 17 Then Return $aFormat[$iFormat]
Switch $iFormat
Case $CF_OWNERDISPLAY
Return "Owner Display"
Case $CF_DSPTEXT
Return "Private Text"
Case $CF_DSPBITMAP
Return "Private Bitmap"
Case $CF_DSPMETAFILEPICT
Return "Private Metafile Picture"
Case $CF_DSPENHMETAFILE
Return "Private Enhanced Metafile"
Case Else
Return _ClipBoard_GetFormatName($iFormat)
EndSwitch
EndFunc
Func _ClipBoard_GetData($iFormat = 1)
If Not _ClipBoard_IsFormatAvailable($iFormat) Then Return SetError(-1, 0, 0)
If Not _ClipBoard_Open(0) Then Return SetError(-2, 0, 0)
Local $hMemory = _ClipBoard_GetDataEx($iFormat)
If $hMemory = 0 Then
_ClipBoard_Close()
Return SetError(-3, 0, 0)
EndIf
Local $pMemoryBlock = _MemGlobalLock($hMemory)
If $pMemoryBlock = 0 Then
_ClipBoard_Close()
Return SetError(-4, 0, 0)
EndIf
Local $iDataSize = _MemGlobalSize($hMemory)
If $iDataSize = 0 Then
_MemGlobalUnlock($hMemory)
_ClipBoard_Close()
Return SetError(-5, 0, "")
EndIf
Local $tData
Switch $iFormat
Case $CF_TEXT, $CF_OEMTEXT
$tData = DllStructCreate("char[" & $iDataSize & "]", $pMemoryBlock)
Case $CF_UNICODETEXT
$iDataSize = Round($iDataSize / 2)
$tData = DllStructCreate("wchar[" & $iDataSize & "]", $pMemoryBlock)
Case Else
$tData = DllStructCreate("byte[" & $iDataSize & "]", $pMemoryBlock)
EndSwitch
Local $vReturn = DllStructGetData($tData, 1)
_MemGlobalUnlock($hMemory)
_ClipBoard_Close()
Return SetExtended($iDataSize, $vReturn)
EndFunc
Func _ClipBoard_GetDataEx($iFormat = 1)
Local $aCall = DllCall("user32.dll", "handle", "GetClipboardData", "uint", $iFormat)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _ClipBoard_GetFormatName($iFormat)
Local $aCall = DllCall("user32.dll", "int", "GetClipboardFormatNameW", "uint", $iFormat, "wstr", "", "int", 4096)
If @error Then Return SetError(@error, @extended, "")
Return $aCall[2]
EndFunc
Func _ClipBoard_GetOpenWindow()
Local $aCall = DllCall("user32.dll", "hwnd", "GetOpenClipboardWindow")
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _ClipBoard_GetOwner()
Local $aCall = DllCall("user32.dll", "hwnd", "GetClipboardOwner")
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _ClipBoard_GetPriorityFormat($aFormats)
If Not IsArray($aFormats) Then Return SetError(-1, 0, 0)
If $aFormats[0] <= 0 Then Return SetError(-2, 0, 0)
Local $tData = DllStructCreate("uint[" & $aFormats[0] & "]")
For $iI = 1 To $aFormats[0]
DllStructSetData($tData, 1, $aFormats[$iI], $iI)
Next
Local $aCall = DllCall("user32.dll", "int", "GetPriorityClipboardFormat", "struct*", $tData, "int", $aFormats[0])
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _ClipBoard_GetSequenceNumber()
Local $aCall = DllCall("user32.dll", "dword", "GetClipboardSequenceNumber")
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _ClipBoard_GetViewer()
Local $aCall = DllCall("user32.dll", "hwnd", "GetClipboardViewer")
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _ClipBoard_IsFormatAvailable($iFormat)
Local $aCall = DllCall("user32.dll", "bool", "IsClipboardFormatAvailable", "uint", $iFormat)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _ClipBoard_Open($hOwner)
Local $aCall = DllCall("user32.dll", "bool", "OpenClipboard", "hwnd", $hOwner)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _ClipBoard_RegisterFormat($sFormat)
Local $aCall = DllCall("user32.dll", "uint", "RegisterClipboardFormatW", "wstr", $sFormat)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _ClipBoard_SetData($vData, $iFormat = 1)
Local $tData, $hLock, $hMemory, $iSize
If IsNumber($vData) And $vData = 0 Then
$hMemory = $vData
Else
If IsBinary($vData) Then
$iSize = BinaryLen($vData)
ElseIf IsString($vData) Then
$iSize = StringLen($vData)
Else
Return SetError(2, 0, 0)
EndIf
$iSize += 1
If $iFormat = $CF_UNICODETEXT Then
$hMemory = _MemGlobalAlloc($iSize * 2, $GHND)
Else
$hMemory = _MemGlobalAlloc($iSize, $GHND)
EndIf
If $hMemory = 0 Then Return SetError(-1, 0, 0)
$hLock = _MemGlobalLock($hMemory)
If $hLock = 0 Then Return SetError(-2, 0, 0)
Switch $iFormat
Case $CF_TEXT, $CF_OEMTEXT
$tData = DllStructCreate("char[" & $iSize & "]", $hLock)
Case $CF_UNICODETEXT
$tData = DllStructCreate("wchar[" & $iSize & "]", $hLock)
Case Else
$tData = DllStructCreate("byte[" & $iSize & "]", $hLock)
EndSwitch
DllStructSetData($tData, 1, $vData)
_MemGlobalUnlock($hMemory)
EndIf
If Not _ClipBoard_Open(0) Then Return SetError(-5, 0, 0)
If Not _ClipBoard_Empty() Then
_ClipBoard_Close()
Return SetError(-6, 0, 0)
EndIf
If Not _ClipBoard_SetDataEx($hMemory, $iFormat) Then
_ClipBoard_Close()
Return SetError(-7, 0, 0)
EndIf
_ClipBoard_Close()
Return $hMemory
EndFunc
Func _ClipBoard_SetDataEx(ByRef $hMemory, $iFormat = 1)
Local $aCall = DllCall("user32.dll", "handle", "SetClipboardData", "uint", $iFormat, "handle", $hMemory)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _ClipBoard_SetViewer($hViewer)
Local $aCall = DllCall("user32.dll", "hwnd", "SetClipboardViewer", "hwnd", $hViewer)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Global Const $DLLVER_PLATFORM_WINDOWS = 0x01
Global Const $DLLVER_PLATFORM_NT = 0x02
Global Const $SHCNE_ALLEVENTS = 0x7FFFFFFF
Global Const $SHCNE_ASSOCCHANGED = 0x8000000
Global Const $SHCNE_ATTRIBUTES = 0x00000800
Global Const $SHCNE_CREATE = 0x00000002
Global Const $SHCNE_DELETE = 0x00000004
Global Const $SHCNE_DRIVEADD = 0x00000100
Global Const $SHCNE_DRIVEADDGUI = 0x00010000
Global Const $SHCNE_DRIVEREMOVED = 0x00000080
Global Const $SHCNE_EXTENDED_EVENT = 0x04000000
Global Const $SHCNE_FREESPACE = 0x00040000
Global Const $SHCNE_MEDIAINSERTED = 0x00000020
Global Const $SHCNE_MEDIAREMOVED = 0x00000040
Global Const $SHCNE_MKDIR = 0x00000008
Global Const $SHCNE_NETSHARE = 0x00000200
Global Const $SHCNE_NETUNSHARE = 0x00000400
Global Const $SHCNE_RENAMEFOLDER = 0x00020000
Global Const $SHCNE_RENAMEITEM = 0x00000001
Global Const $SHCNE_RMDIR = 0x00000010
Global Const $SHCNE_SERVERDISCONNECT = 0x00004000
Global Const $SHCNE_UPDATEDIR = 0x00001000
Global Const $SHCNE_UPDATEIMAGE = 0x00008000
Global Const $SHCNE_UPDATEITEM = 0x00002000
Global Const $SHCNE_DISKEVENTS = 0x0002381F
Global Const $SHCNE_GLOBALEVENTS = 0x0C0581E0
Global Const $SHCNE_INTERRUPT = 0x80000000
Global Const $SHCNF_DWORD = 0x00000003
Global Const $SHCNF_IDLIST = 0x00000000
Global Const $SHCNF_PATH = 0x00000001
Global Const $SHCNF_PRINTER = 0x00000002
Global Const $SHCNF_FLUSH = 0x00001000
Global Const $SHCNF_FLUSHNOWAIT = 0x00002000
Global Const $SHCNF_NOTIFYRECURSIVE = 0x00010000
Global Const $SHCNRF_INTERRUPTLEVEL = 0x0001
Global Const $SHCNRF_SHELLLEVEL = 0x0002
Global Const $SHCNRF_RECURSIVEINTERRUPT = 0x1000
Global Const $SHCNRF_NEWDELIVERY = 0x8000
Global Const $SHERB_NOCONFIRMATION = 0x01
Global Const $SHERB_NOPROGRESSUI = 0x02
Global Const $SHERB_NOSOUND = 0x04
Global Const $SHERB_NO_UI = BitOR($SHERB_NOCONFIRMATION, $SHERB_NOPROGRESSUI, $SHERB_NOSOUND)
Global Const $SEE_MASK_DEFAULT = 0x00000000
Global Const $SEE_MASK_CLASSNAME = 0x00000001
Global Const $SEE_MASK_CLASSKEY = 0x00000003
Global Const $SEE_MASK_IDLIST = 0x00000004
Global Const $SEE_MASK_INVOKEIDLIST = 0x0000000C
Global Const $SEE_MASK_ICON = 0x00000010
Global Const $SEE_MASK_HOTKEY = 0x00000020
Global Const $SEE_MASK_NOCLOSEPROCESS = 0x00000040
Global Const $SEE_MASK_CONNECTNETDRV = 0x00000080
Global Const $SEE_MASK_NOASYNC = 0x00000100
Global Const $SEE_MASK_FLAG_DDEWAIT = $SEE_MASK_NOASYNC
Global Const $SEE_MASK_DOENVSUBST = 0x00000200
Global Const $SEE_MASK_FLAG_NO_UI = 0x00000400
Global Const $SEE_MASK_UNICODE = 0x00004000
Global Const $SEE_MASK_NO_CONSOLE = 0x00008000
Global Const $SEE_MASK_ASYNCOK = 0x00100000
Global Const $SEE_MASK_NOQUERYCLASSSTORE = 0x01000000
Global Const $SEE_MASK_HMONITOR = 0x00200000
Global Const $SEE_MASK_NOZONECHECKS = 0x00800000
Global Const $SEE_MASK_WAITFORINPUTIDLE = 0x02000000
Global Const $SEE_MASK_FLAG_LOG_USAGE = 0x04000000
Global Const $SE_ERR_ACCESSDENIED = 5
Global Const $SE_ERR_ASSOCINCOMPLETE = 27
Global Const $SE_ERR_DDEBUSY = 30
Global Const $SE_ERR_DDEFAIL = 29
Global Const $SE_ERR_DDETIMEOUT = 28
Global Const $SE_ERR_DLLNOTFOUND = 32
Global Const $SE_ERR_FNF = 2
Global Const $SE_ERR_NOASSOC = 31
Global Const $SE_ERR_OOM = 8
Global Const $SE_ERR_PNF = 3
Global Const $SE_ERR_SHARE = 26
Global Const $FO_COPY = 2
Global Const $FO_DELETE = 3
Global Const $FO_MOVE = 1
Global Const $FO_RENAME = 4
Global Const $FOF_ALLOWUNDO = 0x0040
Global Const $FOF_CONFIRMMOUSE = 0x0002
Global Const $FOF_FILESONLY = 0x0080
Global Const $FOF_MULTIDESTFILES = 0x0001
Global Const $FOF_NOCONFIRMATION = 0x0010
Global Const $FOF_NOCONFIRMMKDIR = 0x0200
Global Const $FOF_NO_CONNECTED_ELEMENTS = 0x2000
Global Const $FOF_NOCOPYSECURITYATTRIBS = 0x0800
Global Const $FOF_NOERRORUI = 0x0400
Global Const $FOF_NORECURSEREPARSE = 0x8000
Global Const $FOF_NORECURSION = 0x1000
Global Const $FOF_RENAMEONCOLLISION = 0x0008
Global Const $FOF_SILENT = 0x0004
Global Const $FOF_SIMPLEPROGRESS = 0x0100
Global Const $FOF_WANTMAPPINGHANDLE = 0x0020
Global Const $FOF_WANTNUKEWARNING = 0x4000
Global Const $FOF_NO_UI = BitOR($FOF_NOCONFIRMATION, $FOF_NOCONFIRMMKDIR, $FOF_NOERRORUI, $FOF_SILENT)
Global Const $SHGFI_ADDOVERLAYS = 0x00000020
Global Const $SHGFI_ATTR_SPECIFIED = 0x00020000
Global Const $SHGFI_ATTRIBUTES = 0x00000800
Global Const $SHGFI_DISPLAYNAME = 0x00000200
Global Const $SHGFI_EXETYPE = 0x00002000
Global Const $SHGFI_ICON = 0x00000100
Global Const $SHGFI_ICONLOCATION = 0x00001000
Global Const $SHGFI_LARGEICON = 0x00000000
Global Const $SHGFI_LINKOVERLAY = 0x00008000
Global Const $SHGFI_OPENICON = 0x00000002
Global Const $SHGFI_OVERLAYINDEX = 0x00000040
Global Const $SHGFI_PIDL = 0x00000008
Global Const $SHGFI_SELECTED = 0x00010000
Global Const $SHGFI_SHELLICONSIZE = 0x00000004
Global Const $SHGFI_SMALLICON = 0x00000001
Global Const $SHGFI_SYSICONINDEX = 0x00004000
Global Const $SHGFI_TYPENAME = 0x00000400
Global Const $SHGFI_USEFILEATTRIBUTES = 0x00000010
Global Const $SFGAO_CANCOPY = 0x00000001
Global Const $SFGAO_CANMOVE = 0x00000002
Global Const $SFGAO_CANLINK = 0x00000004
Global Const $SFGAO_STORAGE = 0x00000008
Global Const $SFGAO_CANRENAME = 0x00000010
Global Const $SFGAO_CANDELETE = 0x00000020
Global Const $SFGAO_HASPROPSHEET = 0x00000040
Global Const $SFGAO_DROPTARGET = 0x00000100
Global Const $SFGAO_CAPABILITYMASK = BitOR($SFGAO_CANCOPY, $SFGAO_CANMOVE, $SFGAO_CANLINK, $SFGAO_CANRENAME, $SFGAO_CANDELETE, $SFGAO_HASPROPSHEET, $SFGAO_DROPTARGET)
Global Const $SFGAO_SYSTEM = 0x00001000
Global Const $SFGAO_ENCRYPTED = 0x00002000
Global Const $SFGAO_ISSLOW = 0x00004000
Global Const $SFGAO_GHOSTED = 0x00008000
Global Const $SFGAO_LINK = 0x00010000
Global Const $SFGAO_SHARE = 0x00020000
Global Const $SFGAO_READONLY = 0x00040000
Global Const $SFGAO_HIDDEN = 0x00080000
Global Const $SFGAO_DISPLAYATTRMASK = BitOR($SFGAO_ISSLOW, $SFGAO_GHOSTED, $SFGAO_LINK, $SFGAO_SHARE, $SFGAO_READONLY, $SFGAO_HIDDEN)
Global Const $SFGAO_NONENUMERATED = 0x00100000
Global Const $SFGAO_NEWCONTENT = 0x00200000
Global Const $SFGAO_STREAM = 0x00400000
Global Const $SFGAO_STORAGEANCESTOR = 0x00800000
Global Const $SFGAO_VALIDATE = 0x01000000
Global Const $SFGAO_REMOVABLE = 0x02000000
Global Const $SFGAO_COMPRESSED = 0x04000000
Global Const $SFGAO_BROWSABLE = 0x08000000
Global Const $SFGAO_FILESYSANCESTOR = 0x10000000
Global Const $SFGAO_FOLDER = 0x20000000
Global Const $SFGAO_FILESYSTEM = 0x40000000
Global Const $SFGAO_STORAGECAPMASK = BitOR($SFGAO_STORAGE, $SFGAO_LINK, $SFGAO_READONLY, $SFGAO_STREAM, $SFGAO_STORAGEANCESTOR, $SFGAO_FILESYSANCESTOR, $SFGAO_FOLDER, $SFGAO_FILESYSTEM)
Global Const $SFGAO_HASSUBFOLDER = 0x80000000
Global Const $SFGAO_CONTENTSMASK = $SFGAO_HASSUBFOLDER
Global Const $SFGAO_PKEYSFGAOMASK = BitOR($SFGAO_ISSLOW, $SFGAO_READONLY, $SFGAO_HASSUBFOLDER, $SFGAO_VALIDATE)
Global Const $IDO_SHGIOI_DEFAULT = 0x0FFFFFFC
Global Const $IDO_SHGIOI_LINK = 0x0FFFFFFE
Global Const $IDO_SHGIOI_SHARE = 0x0FFFFFFF
Global Const $IDO_SHGIOI_SLOWFILE = 0x0FFFFFFD
Global Const $FCSM_VIEWID = 0x0001
Global Const $FCSM_WEBVIEWTEMPLATE = 0x0002
Global Const $FCSM_INFOTIP = 0x0004
Global Const $FCSM_CLSID = 0x0008
Global Const $FCSM_ICONFILE = 0x0010
Global Const $FCSM_LOGO = 0x0020
Global Const $FCSM_FLAGS = 0x0040
Global Const $FCS_READ = 0x0001
Global Const $FCS_FORCEWRITE = 0x0002
Global Const $FCS_WRITE = BitOR($FCS_READ, $FCS_FORCEWRITE)
Global Const $SSF_AUTOCHECKSELECT = 0x00800000
Global Const $SSF_DESKTOPHTML = 0x00000200
Global Const $SSF_DONTPRETTYPATH = 0x00000800
Global Const $SSF_DOUBLECLICKINWEBVIEW = 0x00000080
Global Const $SSF_HIDEICONS = 0x00004000
Global Const $SSF_ICONSONLY = 0x01000000
Global Const $SSF_MAPNETDRVBUTTON = 0x00001000
Global Const $SSF_NOCONFIRMRECYCLE = 0x00008000
Global Const $SSF_NONETCRAWLING = 0x00100000
Global Const $SSF_SEPPROCESS = 0x00080000
Global Const $SSF_SHOWALLOBJECTS = 0x00000001
Global Const $SSF_SHOWCOMPCOLOR = 0x00000008
Global Const $SSF_SHOWEXTENSIONS = 0x00000002
Global Const $SSF_SHOWINFOTIP = 0x00002000
Global Const $SSF_SHOWSUPERHIDDEN = 0x00040000
Global Const $SSF_SHOWSYSFILES = 0x00000020
Global Const $SSF_SHOWTYPEOVERLAY = 0x02000000
Global Const $SSF_STARTPANELON = 0x00200000
Global Const $SSF_WIN95CLASSIC = 0x00000400
Global Const $SSF_WEBVIEW = 0x00020000
Global Const $CSIDL_ADMINTOOLS = 0x0030
Global Const $CSIDL_ALTSTARTUP = 0x001D
Global Const $CSIDL_APPDATA = 0x001A
Global Const $CSIDL_BITBUCKET = 0x000A
Global Const $CSIDL_CDBURN_AREA = 0x003B
Global Const $CSIDL_COMMON_ADMINTOOLS = 0x002F
Global Const $CSIDL_COMMON_ALTSTARTUP = 0x001E
Global Const $CSIDL_COMMON_APPDATA = 0x0023
Global Const $CSIDL_COMMON_DESKTOPDIRECTORY = 0x0019
Global Const $CSIDL_COMMON_DOCUMENTS = 0x002E
Global Const $CSIDL_COMMON_FAVORITES = 0x001F
Global Const $CSIDL_COMMON_MUSIC = 0x0035
Global Const $CSIDL_COMMON_PICTURES = 0x0036
Global Const $CSIDL_COMMON_PROGRAMS = 0x0017
Global Const $CSIDL_COMMON_STARTMENU = 0x0016
Global Const $CSIDL_COMMON_STARTUP = 0x0018
Global Const $CSIDL_COMMON_TEMPLATES = 0x002D
Global Const $CSIDL_COMMON_VIDEO = 0x0037
Global Const $CSIDL_COMPUTERSNEARME = 0x003D
Global Const $CSIDL_CONNECTIONS = 0x0031
Global Const $CSIDL_CONTROLS = 0x0003
Global Const $CSIDL_COOKIES = 0x0021
Global Const $CSIDL_DESKTOP = 0x0000
Global Const $CSIDL_DESKTOPDIRECTORY = 0x0010
Global Const $CSIDL_DRIVES = 0x0011
Global Const $CSIDL_FAVORITES = 0x0006
Global Const $CSIDL_FONTS = 0x0014
Global Const $CSIDL_INTERNET_CACHE = 0x0020
Global Const $CSIDL_HISTORY = 0x0022
Global Const $CSIDL_LOCAL_APPDATA = 0x001C
Global Const $CSIDL_MYMUSIC = 0x000D
Global Const $CSIDL_MYPICTURES = 0x0027
Global Const $CSIDL_MYVIDEO = 0x000E
Global Const $CSIDL_NETHOOD = 0x0013
Global Const $CSIDL_PERSONAL = 0x0005
Global Const $CSIDL_PRINTERS = 0x0004
Global Const $CSIDL_PRINTHOOD = 0x001B
Global Const $CSIDL_PROFILE = 0x0028
Global Const $CSIDL_PROGRAM_FILES = 0x0026
Global Const $CSIDL_PROGRAM_FILES_COMMON = 0x002B
Global Const $CSIDL_PROGRAM_FILES_COMMONX86 = 0x002C
Global Const $CSIDL_PROGRAM_FILESX86 = 0x002A
Global Const $CSIDL_PROGRAMS = 0x0002
Global Const $CSIDL_RECENT = 0x0008
Global Const $CSIDL_SENDTO = 0x0009
Global Const $CSIDL_STARTMENU = 0x000B
Global Const $CSIDL_STARTUP = 0x0007
Global Const $CSIDL_SYSTEM = 0x0025
Global Const $CSIDL_SYSTEMX86 = 0x0029
Global Const $CSIDL_TEMPLATES = 0x0015
Global Const $CSIDL_WINDOWS = 0x0024
Global Const $SIID_DOCNOASSOC = 0
Global Const $SIID_DOCASSOC = 1
Global Const $SIID_APPLICATION = 2
Global Const $SIID_FOLDER = 3
Global Const $SIID_FOLDEROPEN = 4
Global Const $SIID_DRIVE525 = 5
Global Const $SIID_DRIVE35 = 6
Global Const $SIID_DRIVEREMOVE = 7
Global Const $SIID_DRIVEFIXED = 8
Global Const $SIID_DRIVENET = 9
Global Const $SIID_DRIVENETDISABLED = 10
Global Const $SIID_DRIVECD = 11
Global Const $SIID_DRIVERAM = 12
Global Const $SIID_WORLD = 13
Global Const $SIID_SERVER = 15
Global Const $SIID_PRINTER = 16
Global Const $SIID_MYNETWORK = 17
Global Const $SIID_FIND = 22
Global Const $SIID_HELP = 23
Global Const $SIID_SHARE = 28
Global Const $SIID_LINK = 29
Global Const $SIID_SLOWFILE = 30
Global Const $SIID_RECYCLER = 31
Global Const $SIID_RECYCLERFULL = 32
Global Const $SIID_MEDIACDAUDIO = 40
Global Const $SIID_LOCK = 47
Global Const $SIID_AUTOLIST = 49
Global Const $SIID_PRINTERNET = 50
Global Const $SIID_SERVERSHARE = 51
Global Const $SIID_PRINTERFAX = 52
Global Const $SIID_PRINTERFAXNET = 53
Global Const $SIID_PRINTERFILE = 54
Global Const $SIID_STACK = 55
Global Const $SIID_MEDIASVCD = 56
Global Const $SIID_STUFFEDFOLDER = 57
Global Const $SIID_DRIVEUNKNOWN = 58
Global Const $SIID_DRIVEDVD = 59
Global Const $SIID_MEDIADVD = 60
Global Const $SIID_MEDIADVDRAM = 61
Global Const $SIID_MEDIADVDRW = 62
Global Const $SIID_MEDIADVDR = 63
Global Const $SIID_MEDIADVDROM = 64
Global Const $SIID_MEDIACDAUDIOPLUS = 65
Global Const $SIID_MEDIACDRW = 66
Global Const $SIID_MEDIACDR = 67
Global Const $SIID_MEDIACDBURN = 68
Global Const $SIID_MEDIABLANKCD = 69
Global Const $SIID_MEDIACDROM = 70
Global Const $SIID_AUDIOFILES = 71
Global Const $SIID_IMAGEFILES = 72
Global Const $SIID_VIDEOFILES = 73
Global Const $SIID_MIXEDFILES = 74
Global Const $SIID_FOLDERBACK = 75
Global Const $SIID_FOLDERFRONT = 76
Global Const $SIID_SHIELD = 77
Global Const $SIID_WARNING = 78
Global Const $SIID_INFO = 79
Global Const $SIID_ERROR = 80
Global Const $SIID_KEY = 81
Global Const $SIID_SOFTWARE = 82
Global Const $SIID_RENAME = 83
Global Const $SIID_DELETE = 84
Global Const $SIID_MEDIAAUDIODVD = 85
Global Const $SIID_MEDIAMOVIEDVD = 86
Global Const $SIID_MEDIAENHANCEDCD = 87
Global Const $SIID_MEDIAENHANCEDDVD = 88
Global Const $SIID_MEDIAHDDVD = 89
Global Const $SIID_MEDIABLURAY = 90
Global Const $SIID_MEDIAVCD = 91
Global Const $SIID_MEDIADVDPLUSR = 92
Global Const $SIID_MEDIADVDPLUSRW = 93
Global Const $SIID_DESKTOPPC = 94
Global Const $SIID_MOBILEPC = 95
Global Const $SIID_USERS = 96
Global Const $SIID_MEDIASMARTMEDIA = 97
Global Const $SIID_MEDIACOMPACTFLASH = 98
Global Const $SIID_DEVICECELLPHONE = 99
Global Const $SIID_DEVICECAMERA = 100
Global Const $SIID_DEVICEVIDEOCAMERA = 101
Global Const $SIID_DEVICEAUDIOPLAYER = 102
Global Const $SIID_NETWORKCONNECT = 103
Global Const $SIID_INTERNET = 104
Global Const $SIID_ZIPFILE = 105
Global Const $SIID_SETTINGS = 106
Global Const $SIID_DRIVEHDDVD = 132
Global Const $SIID_DRIVEBD = 133
Global Const $SIID_MEDIAHDDVDROM = 134
Global Const $SIID_MEDIAHDDVDR = 135
Global Const $SIID_MEDIAHDDVDRAM = 136
Global Const $SIID_MEDIABDROM = 137
Global Const $SIID_MEDIABDR = 138
Global Const $SIID_MEDIABDRE = 139
Global Const $SIID_CLUSTEREDDRIVE = 140
Global Const $SIID_MAX_ICONS = 174
Global Const $SHGSI_ICONLOCATION = 0
Global Const $SHGSI_ICON = $SHGFI_ICON
Global Const $SHGSI_SYSICONINDEX = $SHGFI_SYSICONINDEX
Global Const $SHGSI_LINKOVERLAY = $SHGFI_LINKOVERLAY
Global Const $SHGSI_SELECTED = $SHGFI_SELECTED
Global Const $SHGSI_LARGEICON = $SHGFI_LARGEICON
Global Const $SHGSI_SMALLICON = $SHGFI_SMALLICON
Global Const $SHGSI_SHELLICONSIZE = $SHGFI_SHELLICONSIZE
Global Const $NIM_ADD = 0x00
Global Const $NIM_MODIFY = 0x01
Global Const $NIM_DELETE = 0x02
Global Const $NIM_SETFOCUS = 0x03
Global Const $NIM_SETVERSION = 0x04
Global Const $NIF_MESSAGE = 0x01
Global Const $NIF_ICON = 0x02
Global Const $NIF_TIP = 0x04
Global Const $NIF_STATE = 0x08
Global Const $NIF_INFO = 0x10
Global Const $NIF_GUID = 0x20
Global Const $NIF_REALTIME = 0x40
Global Const $NIF_SHOWTIP = 0x80
Global Const $NIS_HIDDEN = 0x01
Global Const $NIS_SHAREDICON = 0x02
Global Const $NIIF_NONE = 0x00
Global Const $NIIF_INFO = 0x01
Global Const $NIIF_WARNING = 0x02
Global Const $NIIF_ERROR = 0x03
Global Const $NIIF_USER = 0x04
Global Const $NIIF_NOSOUND = 0x10
Global Const $NIIF_LARGE_ICON = 0x10
Global Const $NIIF_RESPECT_QUIET_TIME = 0x80
Global Const $NIIF_ICON_MASK = 0x0F
Global Const $SHOP_PRINTERNAME = 1
Global Const $SHOP_FILEPATH = 2
Global Const $SHOP_VOLUMEGUID = 4
Global Const $OFASI_EDIT = 0x01
Global Const $OFASI_OPENDESKTOP = 0x02
Global Const $QUNS_NOT_PRESENT = 1
Global Const $QUNS_BUSY = 2
Global Const $QUNS_RUNNING_D3D_FULL_SCREEN = 3
Global Const $QUNS_PRESENTATION_MODE = 4
Global Const $QUNS_ACCEPTS_NOTIFICATIONS = 5
Global Const $QUNS_QUIET_TIME = 6
Global Const $REST_NORUN = 1
Global Const $REST_NOCLOSE = 2
Global Const $REST_NOSAVESET = 3
Global Const $REST_NOFILEMENU = 4
Global Const $REST_NOSETFOLDERS = 5
Global Const $REST_NOSETTASKBAR = 6
Global Const $REST_NODESKTOP = 7
Global Const $REST_NOFIND = 8
Global Const $REST_NODRIVES = 9
Global Const $REST_NODRIVEAUTORUN = 10
Global Const $REST_NODRIVETYPEAUTORUN = 11
Global Const $REST_NONETHOOD = 12
Global Const $REST_STARTBANNER = 13
Global Const $REST_RESTRICTRUN = 14
Global Const $REST_NOPRINTERTABS = 15
Global Const $REST_NOPRINTERDELETE = 16
Global Const $REST_NOPRINTERADD = 17
Global Const $REST_NOSTARTMENUSUBFOLDERS = 18
Global Const $REST_MYDOCSONNET = 19
Global Const $REST_NOEXITTODOS = 20
Global Const $REST_ENFORCESHELLEXTSECURITY = 21
Global Const $REST_LINKRESOLVEIGNORELINKINFO = 22
Global Const $REST_NOCOMMONGROUPS = 23
Global Const $REST_SEPARATEDESKTOPPROCESS = 24
Global Const $REST_NOWEB = 25
Global Const $REST_NOTRAYCONTEXTMENU = 26
Global Const $REST_NOVIEWCONTEXTMENU = 27
Global Const $REST_NONETCONNECTDISCONNECT = 28
Global Const $REST_STARTMENULOGOFF = 29
Global Const $REST_NOSETTINGSASSIST = 30
Global Const $REST_NOINTERNETICON = 31
Global Const $REST_NORECENTDOCSHISTORY = 32
Global Const $REST_NORECENTDOCSMENU = 33
Global Const $REST_NOACTIVEDESKTOP = 34
Global Const $REST_NOACTIVEDESKTOPCHANGES = 35
Global Const $REST_NOFAVORITESMENU = 36
Global Const $REST_CLEARRECENTDOCSONEXIT = 37
Global Const $REST_CLASSICSHELL = 38
Global Const $REST_NOCUSTOMIZEWEBVIEW = 39
Global Const $REST_NOHTMLWALLPAPER = 40
Global Const $REST_NOCHANGINGWALLPAPER = 41
Global Const $REST_NODESKCOMP = 42
Global Const $REST_NOADDDESKCOMP = 43
Global Const $REST_NODELDESKCOMP = 44
Global Const $REST_NOCLOSEDESKCOMP = 45
Global Const $REST_NOCLOSE_DRAGDROPBAND = 46
Global Const $REST_NOMOVINGBAND = 47
Global Const $REST_NOEDITDESKCOMP = 48
Global Const $REST_NORESOLVESEARCH = 49
Global Const $REST_NORESOLVETRACK = 50
Global Const $REST_FORCECOPYACLWITHFILE = 51
Global Const $REST_NOLOGO3CHANNELNOTIFY = 52
Global Const $REST_NOFORGETSOFTWAREUPDATE = 53
Global Const $REST_NOSETACTIVEDESKTOP = 54
Global Const $REST_NOUPDATEWINDOWS = 55
Global Const $REST_NOCHANGESTARMENU = 56
Global Const $REST_NOFOLDEROPTIONS = 57
Global Const $REST_HASFINDCOMPUTERS = 58
Global Const $REST_INTELLIMENUS = 59
Global Const $REST_RUNDLGMEMCHECKBOX = 60
Global Const $REST_ARP_ShowPostSetup = 61
Global Const $REST_NOCSC = 62
Global Const $REST_NOCONTROLPANEL = 63
Global Const $REST_ENUMWORKGROUP = 64
Global Const $REST_ARP_NOARP = 65
Global Const $REST_ARP_NOREMOVEPAGE = 66
Global Const $REST_ARP_NOADDPAGE = 67
Global Const $REST_ARP_NOWINSETUPPAGE = 68
Global Const $REST_GREYMSIADS = 69
Global Const $REST_NOCHANGEMAPPEDDRIVELABEL = 70
Global Const $REST_NOCHANGEMAPPEDDRIVECOMMENT = 71
Global Const $REST_MAXRECENTDOCS = 72
Global Const $REST_NONETWORKCONNECTIONS = 73
Global Const $REST_FORCESTARTMENULOGOFF = 74
Global Const $REST_NOWEBVIEW = 75
Global Const $REST_NOCUSTOMIZETHISFOLDER = 76
Global Const $REST_NOENCRYPTION = 77
Global Const $REST_DONTSHOWSUPERHIDDEN = 78
Global Const $REST_NOSHELLSEARCHBUTTON = 79
Global Const $REST_NOHARDWARETAB = 80
Global Const $REST_NORUNASINSTALLPROMPT = 81
Global Const $REST_PROMPTRUNASINSTALLNETPATH = 82
Global Const $REST_NOMANAGEMYCOMPUTERVERB = 83
Global Const $REST_NORECENTDOCSNETHOOD = 84
Global Const $REST_DISALLOWRUN = 85
Global Const $REST_NOWELCOMESCREEN = 86
Global Const $REST_RESTRICTCPL = 87
Global Const $REST_DISALLOWCPL = 88
Global Const $REST_NOSMBALLOONTIP = 89
Global Const $REST_NOSMHELP = 90
Global Const $REST_NOWINKEYS = 91
Global Const $REST_NOENCRYPTONMOVE = 92
Global Const $REST_NOLOCALMACHINERUN = 93
Global Const $REST_NOCURRENTUSERRUN = 94
Global Const $REST_NOLOCALMACHINERUNONCE = 95
Global Const $REST_NOCURRENTUSERRUNONCE = 96
Global Const $REST_FORCEACTIVEDESKTOPON = 97
Global Const $REST_NOCOMPUTERSNEARME = 98
Global Const $REST_NOVIEWONDRIVE = 99
Global Const $REST_NONETCRAWL = 100
Global Const $REST_NOSHAREDDOCUMENTS = 101
Global Const $REST_NOSMMYDOCS = 102
Global Const $REST_NOSMMYPICS = 103
Global Const $REST_ALLOWBITBUCKDRIVES = 104
Global Const $REST_NONLEGACYSHELLMODE = 105
Global Const $REST_NOCONTROLPANELBARRICADE = 106
Global Const $REST_NOSTARTPAGE = 107
Global Const $REST_NOAUTOTRAYNOTIFY = 108
Global Const $REST_NOTASKGROUPING = 109
Global Const $REST_NOCDBURNING = 110
Global Const $REST_MYCOMPNOPROP = 111
Global Const $REST_MYDOCSNOPROP = 112
Global Const $REST_NOSTARTPANEL = 113
Global Const $REST_NODISPLAYAPPEARANCEPAGE = 114
Global Const $REST_NOTHEMESTAB = 115
Global Const $REST_NOVISUALSTYLECHOICE = 116
Global Const $REST_NOSIZECHOICE = 117
Global Const $REST_NOCOLORCHOICE = 118
Global Const $REST_SETVISUALSTYLE = 119
Global Const $REST_STARTRUNNOHOMEPATH = 120
Global Const $REST_NOUSERNAMEINSTARTPANEL = 121
Global Const $REST_NOMYCOMPUTERICON = 122
Global Const $REST_NOSMNETWORKPLACES = 123
Global Const $REST_NOSMPINNEDLIST = 124
Global Const $REST_NOSMMYMUSIC = 125
Global Const $REST_NOSMEJECTPC = 126
Global Const $REST_NOSMMOREPROGRAMS = 127
Global Const $REST_NOSMMFUPROGRAMS = 128
Global Const $REST_NOTRAYITEMSDISPLAY = 129
Global Const $REST_NOTOOLBARSONTASKBAR = 130
Global Const $REST_NOSMCONFIGUREPROGRAMS = 131
Global Const $REST_HIDECLOCK = 132
Global Const $REST_NOLOWDISKSPACECHECKS = 133
Global Const $REST_NOENTIRENETWORK = 134
Global Const $REST_NODESKTOPCLEANUP = 135
Global Const $REST_BITBUCKNUKEONDELETE = 136
Global Const $REST_BITBUCKCONFIRMDELETE = 137
Global Const $REST_BITBUCKNOPROP = 138
Global Const $REST_NODISPBACKGROUND = 139
Global Const $REST_NODISPSCREENSAVEPG = 140
Global Const $REST_NODISPSETTINGSPG = 141
Global Const $REST_NODISPSCREENSAVEPREVIEW = 142
Global Const $REST_NODISPLAYCPL = 143
Global Const $REST_HIDERUNASVERB = 144
Global Const $REST_NOTHUMBNAILCACHE = 145
Global Const $REST_NOSTRCMPLOGICAL = 146
Global Const $REST_NOPUBLISHWIZARD = 147
Global Const $REST_NOONLINEPRINTSWIZARD = 148
Global Const $REST_NOWEBSERVICES = 149
Global Const $REST_ALLOWUNHASHEDWEBVIEW = 150
Global Const $REST_ALLOWLEGACYWEBVIEW = 151
Global Const $REST_REVERTWEBVIEWSECURITY = 152
Global Const $REST_INHERITCONSOLEHANDLES = 153
Global Const $REST_SORTMAXITEMCOUNT = 154
Global Const $REST_NOREMOTERECURSIVEEVENTS = 155
Global Const $REST_NOREMOTECHANGENOTIFY = 156
Global Const $REST_NOSIMPLENETIDLIST = 157
Global Const $REST_NOENUMENTIRENETWORK = 158
Global Const $REST_NODETAILSTHUMBNAILONNETWORK = 159
Global Const $REST_NOINTERNETOPENWITH = 160
Global Const $REST_ALLOWLEGACYLMZBEHAVIOR = 161
Global Const $REST_DONTRETRYBADNETNAME = 162
Global Const $REST_ALLOWFILECLSIDJUNCTIONS = 163
Global Const $REST_NOUPNPINSTALL = 164
Global Const $REST_ARP_DONTGROUPPATCHES = 165
Global Const $REST_ARP_NOCHOOSEPROGRAMSPAGE = 166
Global Const $REST_NODISCONNECT = 167
Global Const $REST_NOSECURITY = 168
Global Const $REST_NOFILEASSOCIATE = 169
Global Const $REST_ALLOWCOMMENTTOGGLE = 170
Global Const $REST_USEDESKTOPINICACHE = 171
Global Const $GIL_DONTCACHE = 0x0010
Global Const $GIL_NOTFILENAME = 0x0008
Global Const $GIL_PERCLASS = 0x0004
Global Const $GIL_PERINSTANCE = 0x0002
Global Const $GIL_SIMULATEDOC = 0x0001
Global Const $GIL_SHIELD = 0x0200
Global Const $GIL_FORCENOSHIELD = 0x0400
Global Const $FOLDERID_AddNewPrograms = '{DE61D971-5EBC-4F02-A3A9-6C82895E5C04}'
Global Const $FOLDERID_AdminTools = '{724EF170-A42D-4FEF-9F26-B60E846FBA4F}'
Global Const $FOLDERID_AppUpdates = '{A305CE99-F527-492B-8B1A-7E76FA98D6E4}'
Global Const $FOLDERID_CDBurning = '{9E52AB10-F80D-49DF-ACB8-4330F5687855}'
Global Const $FOLDERID_ChangeRemovePrograms = '{DF7266AC-9274-4867-8D55-3BD661DE872D}'
Global Const $FOLDERID_CommonAdminTools = '{D0384E7D-BAC3-4797-8F14-CBA229B392B5}'
Global Const $FOLDERID_CommonOEMLinks = '{C1BAE2D0-10DF-4334-BEDD-7AA20B227A9D}'
Global Const $FOLDERID_CommonPrograms = '{0139D44E-6AFE-49F2-8690-3DAFCAE6FFB8}'
Global Const $FOLDERID_CommonStartMenu = '{A4115719-D62E-491D-AA7C-E74B8BE3B067}'
Global Const $FOLDERID_CommonStartup = '{82A5EA35-D9CD-47C5-9629-E15D2F714E6E}'
Global Const $FOLDERID_CommonTemplates = '{B94237E7-57AC-4347-9151-B08C6C32D1F7}'
Global Const $FOLDERID_ComputerFolder = '{0AC0837C-BBF8-452A-850D-79D08E667CA7}'
Global Const $FOLDERID_ConflictFolder = '{4BFEFB45-347D-4006-A5BE-AC0CB0567192}'
Global Const $FOLDERID_ConnectionsFolder = '{6F0CD92B-2E97-45D1-88FF-B0D186B8DEDD}'
Global Const $FOLDERID_Contacts = '{56784854-C6CB-462B-8169-88E350ACB882}'
Global Const $FOLDERID_ControlPanelFolder = '{82A74AEB-AEB4-465C-A014-D097EE346D63}'
Global Const $FOLDERID_Cookies = '{2B0F765D-C0E9-4171-908E-08A611B84FF6}'
Global Const $FOLDERID_Desktop = '{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}'
Global Const $FOLDERID_DeviceMetadataStore = '{5CE4A5E9-E4EB-479D-B89F-130C02886155}'
Global Const $FOLDERID_DocumentsLibrary = '{7B0DB17D-9CD2-4A93-9733-46CC89022E7C}'
Global Const $FOLDERID_Downloads = '{374DE290-123F-4565-9164-39C4925E467B}'
Global Const $FOLDERID_Favorites = '{1777F761-68AD-4D8A-87BD-30B759FA33DD}'
Global Const $FOLDERID_Fonts = '{FD228CB7-AE11-4AE3-864C-16F3910AB8FE}'
Global Const $FOLDERID_Games = '{CAC52C1A-B53D-4EDC-92D7-6B2E8AC19434}'
Global Const $FOLDERID_GameTasks = '{054FAE61-4DD8-4787-80B6-090220C4B700}'
Global Const $FOLDERID_History = '{D9DC8A3B-B784-432E-A781-5A1130A75963}'
Global Const $FOLDERID_HomeGroup = '{52528A6B-B9E3-4ADD-B60D-588C2DBA842D}'
Global Const $FOLDERID_ImplicitAppShortcuts = '{BCB5256F-79F6-4CEE-B725-DC34E402FD46}'
Global Const $FOLDERID_InternetCache = '{352481E8-33BE-4251-BA85-6007CAEDCF9D}'
Global Const $FOLDERID_InternetFolder = '{4D9F7874-4E0C-4904-967B-40B0D20C3E4B}'
Global Const $FOLDERID_Libraries = '{1B3EA5DC-B587-4786-B4EF-BD1DC332AEAE}'
Global Const $FOLDERID_Links = '{BFB9D5E0-C6A9-404C-B2B2-AE6DB6AF4968}'
Global Const $FOLDERID_LocalAppData = '{F1B32785-6FBA-4FCF-9D55-7B8E7F157091}'
Global Const $FOLDERID_LocalAppDataLow = '{A520A1A4-1780-4FF6-BD18-167343C5AF16}'
Global Const $FOLDERID_LocalizedResourcesDir = '{2A00375E-224C-49DE-B8D1-440DF7EF3DDC}'
Global Const $FOLDERID_Music = '{4BD8D571-6D19-48D3-BE97-422220080E43}'
Global Const $FOLDERID_MusicLibrary = '{2112AB0A-C86A-4FFE-A368-0DE96E47012E}'
Global Const $FOLDERID_NetHood = '{C5ABBF53-E17F-4121-8900-86626FC2C973}'
Global Const $FOLDERID_NetworkFolder = '{D20BEEC4-5CA8-4905-AE3B-BF251EA09B53}'
Global Const $FOLDERID_OriginalImages = '{2C36C0AA-5812-4B87-BFD0-4CD0DFB19B39}'
Global Const $FOLDERID_PhotoAlbums = '{69D2CF90-FC33-4FB7-9A0C-EBB0F0FCB43C}'
Global Const $FOLDERID_PicturesLibrary = '{A990AE9F-A03B-4E80-94BC-9912D7504104}'
Global Const $FOLDERID_Pictures = '{33E28130-4E1E-4676-835A-98395C3BC3BB}'
Global Const $FOLDERID_Playlists = '{DE92C1C7-837F-4F69-A3BB-86E631204A23}'
Global Const $FOLDERID_PrintersFolder = '{76FC4E2D-D6AD-4519-A663-37BD56068185}'
Global Const $FOLDERID_PrintHood = '{9274BD8D-CFD1-41C3-B35E-B13F55A758F4}'
Global Const $FOLDERID_Profile = '{5E6C858F-0E22-4760-9AFE-EA3317B67173}'
Global Const $FOLDERID_ProgramData = '{62AB5D82-FDC1-4DC3-A9DD-070D1D495D97}'
Global Const $FOLDERID_ProgramFiles = '{905E63B6-C1BF-494E-B29C-65B732D3D21A}'
Global Const $FOLDERID_ProgramFilesX64 = '{6D809377-6AF0-444B-8957-A3773F02200E}'
Global Const $FOLDERID_ProgramFilesX86 = '{7C5A40EF-A0FB-4BFC-874A-C0F2E0B9FA8E}'
Global Const $FOLDERID_ProgramFilesCommon = '{F7F1ED05-9F6D-47A2-AAAE-29D317C6F066}'
Global Const $FOLDERID_ProgramFilesCommonX64 = '{6365D5A7-0F0D-45E5-87F6-0DA56B6A4F7D}'
Global Const $FOLDERID_ProgramFilesCommonX86 = '{DE974D24-D9C6-4D3E-BF91-F4455120B917}'
Global Const $FOLDERID_Programs = '{A77F5D77-2E2B-44C3-A6A2-ABA601054A51}'
Global Const $FOLDERID_Public = '{DFDF76A2-C82A-4D63-906A-5644AC457385}'
Global Const $FOLDERID_PublicDesktop = '{C4AA340D-F20F-4863-AFEF-F87EF2E6BA25}'
Global Const $FOLDERID_PublicDocuments = '{ED4824AF-DCE4-45A8-81E2-FC7965083634}'
Global Const $FOLDERID_PublicDownloads = '{3D644C9B-1FB8-4F30-9B45-F670235F79C0}'
Global Const $FOLDERID_PublicGameTasks = '{DEBF2536-E1A8-4C59-B6A2-414586476AEA}'
Global Const $FOLDERID_PublicLibraries = '{48DAF80B-E6CF-4F4E-B800-0E69D84EE384}'
Global Const $FOLDERID_PublicMusic = '{3214FAB5-9757-4298-BB61-92A9DEAA44FF}'
Global Const $FOLDERID_PublicPictures = '{B6EBFB86-6907-413C-9AF7-4FC2ABF07CC5}'
Global Const $FOLDERID_PublicRingtones = '{E555AB60-153B-4D17-9F04-A5FE99FC15EC}'
Global Const $FOLDERID_PublicVideos = '{2400183A-6185-49FB-A2D8-4A392A602BA3}'
Global Const $FOLDERID_QuickLaunch = '{52A4F021-7B75-48A9-9F6B-4B87A210BC8F}'
Global Const $FOLDERID_Recent = '{AE50C081-EBD2-438A-8655-8A092E34987A}'
Global Const $FOLDERID_RecordedTVLibrary = '{1A6FDBA2-F42D-4358-A798-B74D745926C5}'
Global Const $FOLDERID_RecycleBinFolder = '{B7534046-3ECB-4C18-BE4E-64CD4CB7D6AC}'
Global Const $FOLDERID_ResourceDir = '{8AD10C31-2ADB-4296-A8F7-E4701232C972}'
Global Const $FOLDERID_Ringtones = '{C870044B-F49E-4126-A9C3-B52A1FF411E8}'
Global Const $FOLDERID_RoamingAppData = '{3EB685DB-65F9-4CF6-A03A-E3EF65729F3D}'
Global Const $FOLDERID_SampleMusic = '{B250C668-F57D-4EE1-A63C-290EE7D1AA1F}'
Global Const $FOLDERID_SamplePictures = '{C4900540-2379-4C75-844B-64E6FAF8716B}'
Global Const $FOLDERID_SamplePlaylists = '{15CA69B3-30EE-49C1-ACE1-6B5EC372AFB5}'
Global Const $FOLDERID_SampleVideos = '{859EAD94-2E85-48AD-A71A-0969CB56A6CD}'
Global Const $FOLDERID_SavedGames = '{4C5C32FF-BB9D-43B0-B5B4-2D72E54EAAA4}'
Global Const $FOLDERID_SavedSearches = '{7D1D3A04-DEBB-4115-95CF-2F29DA2920DA}'
Global Const $FOLDERID_SEARCH_CSC = '{EE32E446-31CA-4ABA-814F-A5EBD2FD6D5E}'
Global Const $FOLDERID_SEARCH_MAPI = '{98EC0E18-2098-4D44-8644-66979315A281}'
Global Const $FOLDERID_SearchHome = '{190337D1-B8CA-4121-A639-6D472D16972A}'
Global Const $FOLDERID_SendTo = '{8983036C-27C0-404B-8F08-102D10DCFD74}'
Global Const $FOLDERID_SidebarDefaultParts = '{7B396E54-9EC5-4300-BE0A-2482EBAE1A26}'
Global Const $FOLDERID_SidebarParts = '{A75D362E-50FC-4FB7-AC2C-A8BEAA314493}'
Global Const $FOLDERID_StartMenu = '{625B53C3-AB48-4EC1-BA1F-A1EF4146FC19}'
Global Const $FOLDERID_Startup = '{B97D20BB-F46A-4C97-BA10-5E3608430854}'
Global Const $FOLDERID_SyncManagerFolder = '{43668BF8-C14E-49B2-97C9-747784D784B7}'
Global Const $FOLDERID_SyncResultsFolder = '{289A9A43-BE44-4057-A41B-587A76D7E7F9}'
Global Const $FOLDERID_SyncSetupFolder = '{0F214138-B1D3-4A90-BBA9-27CBC0C5389A}'
Global Const $FOLDERID_System = '{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}'
Global Const $FOLDERID_SystemX86 = '{D65231B0-B2F1-4857-A4CE-A8E7C6EA7D27}'
Global Const $FOLDERID_Templates = '{A63293E8-664E-48DB-A079-DF759E0509F7}'
Global Const $FOLDERID_UserPinned = '{9E3995AB-1F9C-4F13-B827-48B24B6C7174}'
Global Const $FOLDERID_UserProfiles = '{0762D272-C50A-4BB0-A382-697DCD729B80}'
Global Const $FOLDERID_UserProgramFiles = '{5CD7AEE2-2219-4A67-B85D-6C9CE15660CB}'
Global Const $FOLDERID_UserProgramFilesCommon = '{BCBD3057-CA5C-4622-B42D-BC56DB0AE516}'
Global Const $FOLDERID_UsersFiles = '{F3CE0F7C-4901-4ACC-8648-D5D44B04EF8F}'
Global Const $FOLDERID_UsersLibraries = '{A302545D-DEFF-464B-ABE8-61C8648D939B}'
Global Const $FOLDERID_Videos = '{18989B1D-99B5-455B-841C-AB7C74E4DDFC}'
Global Const $FOLDERID_VideosLibrary = '{491E922F-5643-4AF4-A7EB-4E7A138D8174}'
Global Const $FOLDERID_Windows = '{F38BF404-1D43-42F2-9305-67DE0B28FC23}'
Global Const $KF_FLAG_ALIAS_ONLY = 0x80000000
Global Const $KF_FLAG_CREATE = 0x00008000
Global Const $KF_FLAG_DONT_VERIFY = 0x00004000
Global Const $KF_FLAG_DONT_UNEXPAND = 0x00002000
Global Const $KF_FLAG_NO_ALIAS = 0x00001000
Global Const $KF_FLAG_INIT = 0x00000800
Global Const $KF_FLAG_DEFAULT_PATH = 0x00000400
Global Const $KF_FLAG_NO_APPCONTAINER_REDIRECTION = 0x00010000
Global Const $KF_FLAG_NOT_PARENT_RELATIVE = 0x00000200
Global Const $KF_FLAG_SIMPLE_IDLIST = 0x00000100
Global Const $URL_SCHEME_INVALID = -1
Global Const $URL_SCHEME_UNKNOWN = 0
Global Const $URL_SCHEME_FTP = 1
Global Const $URL_SCHEME_HTTP = 2
Global Const $URL_SCHEME_GOPHER = 3
Global Const $URL_SCHEME_MAILTO = 4
Global Const $URL_SCHEME_NEWS = 5
Global Const $URL_SCHEME_NNTP = 6
Global Const $URL_SCHEME_TELNET = 7
Global Const $URL_SCHEME_WAIS = 8
Global Const $URL_SCHEME_FILE = 9
Global Const $URL_SCHEME_MK = 10
Global Const $URL_SCHEME_HTTPS = 11
Global Const $URL_SCHEME_SHELL = 12
Global Const $URL_SCHEME_SNEWS = 13
Global Const $URL_SCHEME_LOCAL = 14
Global Const $URL_SCHEME_JAVASCRIPT = 15
Global Const $URL_SCHEME_VBSCRIPT = 16
Global Const $URL_SCHEME_ABOUT = 17
Global Const $URL_SCHEME_RES = 18
Global Const $URL_SCHEME_MSSHELLROOTED = 19
Global Const $URL_SCHEME_MSSHELLIDLIST = 20
Global Const $URL_SCHEME_MSHELP = 21
Global Const $URL_SCHEME_MSSHELLDEVICE = 22
Global Const $URL_SCHEME_WILDCARD = 23
Global Const $URL_SCHEME_SEARCH_MS = 24
Global Const $URL_SCHEME_SEARCH = 25
Global Const $URL_SCHEME_KNOWNFOLDER = 26
Global Const $GCT_INVALID = 0x00
Global Const $GCT_LFNCHAR = 0x01
Global Const $GCT_SEPARATOR = 0x08
Global Const $GCT_SHORTCHAR = 0x02
Global Const $GCT_WILD = 0x04
Global Const $URL_APPLY_DEFAULT = 0x01
Global Const $URL_APPLY_GUESSSCHEME = 0x02
Global Const $URL_APPLY_GUESSFILE = 0x04
Global Const $URL_APPLY_FORCEAPPLY = 0x08
Global Const $URL_DONT_SIMPLIFY = 0x08000000
Global Const $URL_ESCAPE_AS_UTF8 = 0x00040000
Global Const $URL_ESCAPE_PERCENT = 0x00001000
Global Const $URL_ESCAPE_SPACES_ONLY = 0x04000000
Global Const $URL_ESCAPE_UNSAFE = 0x20000000
Global Const $URL_NO_META = 0x08000000
Global Const $URL_PLUGGABLE_PROTOCOL = 0x40000000
Global Const $URL_UNESCAPE = 0x10000000
Global Const $URL_PART_HOSTNAME = 2
Global Const $URL_PART_PASSWORD = 4
Global Const $URL_PART_PORT = 5
Global Const $URL_PART_QUERY = 6
Global Const $URL_PART_SCHEME = 1
Global Const $URL_PART_USERNAME = 3
Global Const $URLIS_APPLIABLE = 4
Global Const $URLIS_DIRECTORY = 5
Global Const $URLIS_FILEURL = 3
Global Const $URLIS_HASQUERY = 6
Global Const $URLIS_NOHISTORY = 2
Global Const $URLIS_OPAQUE = 1
Global Const $URLIS_URL = 0
Func _WinAPI_CommandLineToArgv($sCmd)
Local $aRet[1] = [0]
$sCmd = StringStripWS($sCmd, $STR_STRIPLEADING + $STR_STRIPTRAILING)
If Not $sCmd Then
Return $aRet
EndIf
Local $aCall = DllCall('shell32.dll', 'ptr', 'CommandLineToArgvW', 'wstr', $sCmd, 'int*', 0)
If @error Or Not $aCall[0] Or (Not $aCall[2]) Then Return SetError(@error + 10, @extended, 0)
Local $tPtr = DllStructCreate('ptr[' & $aCall[2] & ']', $aCall[0])
Dim $aRet[$aCall[2] + 1] = [$aCall[2]]
For $i = 1 To $aCall[2]
$aRet[$i] = _WinAPI_GetString(DllStructGetData($tPtr, 1, $i))
Next
DllCall("kernel32.dll", "handle", "LocalFree", "handle", $aCall[0])
Return $aRet
EndFunc
Func _WinAPI_IsNameInExpression($sString, $sPattern, $bCaseSensitive = False)
If Not $bCaseSensitive Then $sPattern = StringUpper($sPattern)
Local $tUS1 = __US($sPattern)
Local $tUS2 = __US($sString)
Local $aCall = DllCall('ntdll.dll', 'boolean', 'RtlIsNameInExpression', 'struct*', $tUS1, 'struct*', $tUS2,  'boolean', Not $bCaseSensitive, 'ptr', 0)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ParseURL($sUrl)
Local $tagPARSEDURL = 'dword Size;ptr Protocol;uint cchProtocol;ptr Suffix;uint cchSuffix;uint Scheme'
Local $tPURL = DllStructCreate($tagPARSEDURL)
DllStructSetData($tPURL, 1, DllStructGetSize($tPURL))
Local $tURL = DllStructCreate('wchar[4096]')
DllStructSetData($tURL, 1, $sUrl)
Local $aCall = DllCall('shlwapi.dll', 'long', 'ParseURLW', 'struct*', $tURL, 'struct*', $tPURL)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Local $aRet[3]
$aRet[0] = DllStructGetData(DllStructCreate('wchar[' & DllStructGetData($tPURL, 3) & ']', DllStructGetData($tPURL, 2)), 1)
$aRet[1] = DllStructGetData(DllStructCreate('wchar[' & DllStructGetData($tPURL, 5) & ']', DllStructGetData($tPURL, 4)), 1)
$aRet[2] = DllStructGetData($tPURL, 6)
Return $aRet
EndFunc
Func _WinAPI_ParseUserName($sUser)
If Not __DLL('credui.dll') Then Return SetError(103, 0, 0)
Local $aCall = DllCall('credui.dll', 'dword', 'CredUIParseUserNameW', 'wstr', $sUser, 'wstr', '', 'ulong', 4096, 'wstr', '',  'ulong', 4096)
If @error Then Return SetError(@error, @extended, 0)
Switch $aCall[0]
Case 0
Case 1315
If StringStripWS($sUser, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$aCall[2] = $sUser
$aCall[4] = ''
Else
ContinueCase
EndIf
Case Else
Return SetError(10, $aCall[0], 0)
EndSwitch
Local $aRet[2]
$aRet[0] = $aCall[4]
$aRet[1] = $aCall[2]
Return $aRet
EndFunc
Func _WinAPI_PathAddBackslash($sFilePath)
Local $tPath = DllStructCreate('wchar[260]')
DllStructSetData($tPath, 1, $sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'ptr', 'PathAddBackslashW', 'struct*', $tPath)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return DllStructGetData($tPath, 1)
EndFunc
Func _WinAPI_PathAddExtension($sFilePath, $sExt = '')
Local $tPath = DllStructCreate('wchar[260]')
DllStructSetData($tPath, 1, $sFilePath)
If Not StringStripWS($sExt, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sExt = Null
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathAddExtensionW', 'struct*', $tPath, 'wstr', $sExt)
If @error Then Return SetError(@error, @extended, '')
Return SetExtended($aCall[0], DllStructGetData($tPath, 1))
EndFunc
Func _WinAPI_PathAppend($sFilePath, $sMore)
Local $tPath = DllStructCreate('wchar[260]')
DllStructSetData($tPath, 1, $sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathAppendW', 'struct*', $tPath, 'wstr', $sMore)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return DllStructGetData($tPath, 1)
EndFunc
Func _WinAPI_PathBuildRoot($iDrive)
Local $aCall = DllCall('shlwapi.dll', 'ptr', 'PathBuildRootW', 'wstr', '', 'int', $iDrive)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_PathCanonicalize($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathCanonicalizeW', 'wstr', '', 'wstr', $sFilePath)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, $sFilePath)
Return $aCall[1]
EndFunc
Func _WinAPI_PathCommonPrefix($sPath1, $sPath2)
Local $aCall = DllCall('shlwapi.dll', 'int', 'PathCommonPrefixW', 'wstr', $sPath1, 'wstr', $sPath2, 'wstr', '')
If @error Then Return SetError(@error, @extended, '')
Return SetExtended($aCall[0], $aCall[3])
EndFunc
Func _WinAPI_PathCompactPath($hWnd, $sFilePath, $iWidth = 0)
If $iWidth < 1 Then
Local $tRECT = DllStructCreate($tagRECT)
DllCall("user32.dll", "bool", "GetClientRect", "hwnd", $hWnd, "struct*", $tRECT)
$iWidth += DllStructGetData($tRECT, "Right") - DllStructGetData($tRECT, "Left")
EndIf
Local $aCall = DllCall('user32.dll', 'handle', 'GetDC', 'hwnd', $hWnd)
If @error Or Not $aCall[0] Then Return SetError(@error + 20, @extended, $sFilePath)
Local $hDC = $aCall[0]
Local Const $WM_GETFONT = 0x0031
$aCall = DllCall('user32.dll', 'ptr', 'SendMessage', 'hwnd', $hWnd, 'uint', $WM_GETFONT, 'wparam', 0, 'lparam', 0)
Local $hBack = DllCall("gdi32.dll", "handle", "SelectObject", "handle", $hDC, "handle", $aCall[0])
Local $iError = 0
$aCall = DllCall('shlwapi.dll', 'bool', 'PathCompactPathW', 'handle', $hDC, 'wstr', $sFilePath, 'int', $iWidth)
If @error Or Not $aCall[0] Then $iError = @error + 10
DllCall("gdi32.dll", "handle", "SelectObject", "handle", $hDC, "handle", $hBack[0])
DllCall("user32.dll", "int", "ReleaseDC", "hwnd", $hWnd, "handle", $hDC)
If $iError Then Return SetError($iError, 0, $sFilePath)
Return $aCall[2]
EndFunc
Func _WinAPI_PathCompactPathEx($sFilePath, $iMax)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathCompactPathExW', 'wstr', '', 'wstr', $sFilePath, 'uint', $iMax + 1, 'dword', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, $sFilePath)
Return $aCall[1]
EndFunc
Func _WinAPI_PathCreateFromUrl($sUrl)
Local $aCall = DllCall('shlwapi.dll', 'long', 'PathCreateFromUrlW', 'wstr', $sUrl, 'wstr', '', 'dword*', 4096, 'dword', 0)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Return $aCall[2]
EndFunc
Func _WinAPI_PathFindExtension($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'wstr', 'PathFindExtensionW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[0]
EndFunc
Func _WinAPI_PathFindFileName($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'wstr', 'PathFindFileNameW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, $sFilePath)
Return $aCall[0]
EndFunc
Func _WinAPI_PathFindNextComponent($sFilePath)
Local $tPath = DllStructCreate('wchar[' & (StringLen($sFilePath) + 1) & ']')
DllStructSetData($tPath, 1, $sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'ptr', 'PathFindNextComponentW', 'struct*', $tPath)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return _WinAPI_GetString($aCall[0])
EndFunc
Func _WinAPI_PathFindOnPath(Const $sFilePath, $aExtraPaths = "", Const $sPathDelimiter = @LF)
Local $iExtraCount = 0
If IsString($aExtraPaths) Then
If StringLen($aExtraPaths) Then
$aExtraPaths = StringSplit($aExtraPaths, $sPathDelimiter, $STR_ENTIRESPLIT + $STR_NOCOUNT)
$iExtraCount = UBound($aExtraPaths, $UBOUND_ROWS)
EndIf
ElseIf IsArray($aExtraPaths) Then
$iExtraCount = UBound($aExtraPaths)
EndIf
Local $tPaths, $tPathPtrs
If $iExtraCount Then
Local $tagStruct = ""
For $path In $aExtraPaths
$tagStruct &= "wchar[" & StringLen($path) + 1 & "];"
Next
$tPaths = DllStructCreate($tagStruct)
$tPathPtrs = DllStructCreate("ptr[" & $iExtraCount + 1 & "]")
For $i = 1 To $iExtraCount
DllStructSetData($tPaths, $i, $aExtraPaths[$i - 1])
DllStructSetData($tPathPtrs, 1, DllStructGetPtr($tPaths, $i), $i)
Next
DllStructSetData($tPathPtrs, 1, Ptr(0), $iExtraCount + 1)
EndIf
Local $aCall = DllCall("shlwapi.dll", "bool", "PathFindOnPathW", "wstr", $sFilePath, "struct*", $tPathPtrs)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, $sFilePath)
Return $aCall[1]
EndFunc
Func _WinAPI_PathGetArgs($sFilePath)
Local $tPath = DllStructCreate('wchar[' & (StringLen($sFilePath) + 1) & ']')
DllStructSetData($tPath, 1, $sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'ptr', 'PathGetArgsW', 'struct*', $tPath)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return _WinAPI_GetString($aCall[0])
EndFunc
Func _WinAPI_PathGetCharType($sChar)
Local $aCall = DllCall('shlwapi.dll', 'uint', 'PathGetCharTypeW', 'word', AscW($sChar))
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_PathGetDriveNumber($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'int', 'PathGetDriveNumberW', 'wstr', $sFilePath)
If @error Or ($aCall[0] = -1) Then Return SetError(@error, @extended, '')
Return Chr($aCall[0] + 65) & ':'
EndFunc
Func _WinAPI_PathIsContentType($sFilePath, $sType)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsContentTypeW', 'wstr', $sFilePath, 'wstr', $sType)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsExe($sFilePath)
Local $aCall = DllCall('shell32.dll', 'bool', 'PathIsExe', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsFileSpec($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsFileSpecW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsLFNFileSpec($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsLFNFileSpecW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsRelative($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsRelativeW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsRoot($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsRootW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsSameRoot($sPath1, $sPath2)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsSameRootW', 'wstr', $sPath1, 'wstr', $sPath2)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsSystemFolder($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsSystemFolderW', 'wstr', $sFilePath, 'dword', 0)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsUNC($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsUNCW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsUNCServer($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsUNCServerW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathIsUNCServerShare($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathIsUNCServerShareW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathMakeSystemFolder($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathMakeSystemFolderW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathMatchSpec($sFilePath, $sSpec)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathMatchSpecW', 'wstr', $sFilePath, 'wstr', $sSpec)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathParseIconLocation($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'int', 'PathParseIconLocationW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, 0)
Local $aRet[2]
$aRet[0] = $aCall[1]
$aRet[1] = $aCall[0]
Return $aRet
EndFunc
Func _WinAPI_PathRelativePathTo($sPathFrom, $bDirFrom, $sPathTo, $bDirTo)
If $bDirFrom Then
$bDirFrom = 0x10
EndIf
If $bDirTo Then
$bDirTo = 0x10
EndIf
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathRelativePathToW', 'wstr', '', 'wstr', $sPathFrom, 'dword', $bDirFrom,  'wstr', $sPathTo, 'dword', $bDirTo)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_PathRemoveArgs($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'none', 'PathRemoveArgsW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_PathRemoveBackslash($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'ptr', 'PathRemoveBackslashW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_PathRemoveExtension($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'none', 'PathRemoveExtensionW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_PathRemoveFileSpec($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathRemoveFileSpecW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, '')
Return SetExtended($aCall[0], $aCall[1])
EndFunc
Func _WinAPI_PathRenameExtension($sFilePath, $sExt)
Local $tPath = DllStructCreate('wchar[260]')
DllStructSetData($tPath, 1, $sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathRenameExtensionW', 'struct*', $tPath, 'wstr', $sExt)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return DllStructGetData($tPath, 1)
EndFunc
Func _WinAPI_PathSearchAndQualify($sFilePath, $bExists = False)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathSearchAndQualifyW', 'wstr', $sFilePath, 'wstr', '', 'int', 4096)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
If $bExists And Not FileExists($aCall[2]) Then Return SetError(20, 0, '')
Return $aCall[2]
EndFunc
Func _WinAPI_PathSkipRoot($sFilePath)
Local $tPath = DllStructCreate('wchar[' & (StringLen($sFilePath) + 1) & ']')
DllStructSetData($tPath, 1, $sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'ptr', 'PathSkipRootW', 'struct*', $tPath)
If @error Then Return SetError(@error, @extended, '')
If Not $aCall[0] Then Return $sFilePath
Return _WinAPI_GetString($aCall[0])
EndFunc
Func _WinAPI_PathStripPath($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'none', 'PathStripPathW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_PathStripToRoot($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathStripToRootW', 'wstr', $sFilePath)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_PathUndecorate($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'none', 'PathUndecorateW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_PathUnExpandEnvStrings($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathUnExpandEnvStringsW', 'wstr', $sFilePath, 'wstr', '', 'uint', 4096)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_PathUnmakeSystemFolder($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'PathUnmakeSystemFolderW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_PathUnquoteSpaces($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'none', 'PathUnquoteSpacesW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_PathYetAnotherMakeUniqueName($sFilePath)
Local $aCall = DllCall('shell32.dll', 'int', 'PathYetAnotherMakeUniqueName', 'wstr', '', 'wstr', $sFilePath, 'ptr', 0, 'ptr', 0)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_ShellGetImageList($bSmall = False)
Local $pLarge, $pSmall, $tPtr = DllStructCreate('ptr')
If $bSmall Then
$pLarge = 0
$pSmall = DllStructGetPtr($tPtr)
Else
$pLarge = DllStructGetPtr($tPtr)
$pSmall = 0
EndIf
Local $aCall = DllCall('shell32.dll', 'int', 'Shell_GetImageLists', 'ptr', $pLarge, 'ptr', $pSmall)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return DllStructGetData($tPtr, 1)
EndFunc
Func _WinAPI_UrlApplyScheme($sUrl, $iFlags = 1)
Local $aCall = DllCall('shlwapi.dll', 'long', 'UrlApplySchemeW', 'wstr', $sUrl, 'wstr', '', 'dword*', 4096, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Return $aCall[2]
EndFunc
Func _WinAPI_UrlCanonicalize($sUrl, $iFlags)
Local $aCall = DllCall('shlwapi.dll', 'long', 'UrlCanonicalizeW', 'wstr', $sUrl, 'wstr', '', 'dword*', 4096, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Return $aCall[2]
EndFunc
Func _WinAPI_UrlCombine($sUrl, $sPart, $iFlags = 0)
Local $aCall = DllCall('shlwapi.dll', 'long', 'UrlCombineW', 'wstr', $sUrl, 'wstr', $sPart, 'wstr', '', 'dword*', 4096,  'dword', $iFlags)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Return $aCall[3]
EndFunc
Func _WinAPI_UrlCompare($sUrl1, $sUrl2, $bIgnoreSlash = False)
Local $aCall = DllCall('shlwapi.dll', 'int', 'UrlCompareW', 'wstr', $sUrl1, 'wstr', $sUrl2, 'bool', $bIgnoreSlash)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_UrlCreateFromPath($sFilePath)
Local $aCall = DllCall('shlwapi.dll', 'long', 'UrlCreateFromPathW', 'wstr', $sFilePath, 'wstr', '', 'dword*', 4096, 'dword', 0)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] < 0 Or $aCall[0] > 1 Then
Return SetError(10, $aCall[0], '')
EndIf
Return $aCall[2]
EndFunc
Func _WinAPI_UrlFixup($sUrl)
Local $aCall = DllCall('shlwapi.dll', 'long', 'UrlFixupW', 'wstr', $sUrl, 'wstr', '', 'dword', 4096)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Return $aCall[2]
EndFunc
Func _WinAPI_UrlGetPart($sUrl, $iPart)
Local $aCall = DllCall('shlwapi.dll', 'long', 'UrlGetPartW', 'wstr', $sUrl, 'wstr', '', 'dword*', 4096, 'dword', $iPart,  'dword', 0)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Return $aCall[2]
EndFunc
Func _WinAPI_UrlHash($sUrl, $iLength = 32)
If $iLength <= 0 Or $iLength > 256 Then Return SetError(256, 0, 0)
Local $tData = DllStructCreate('byte[' & $iLength & ']')
Local $aCall = DllCall('shlwapi.dll', 'long', 'UrlHashW', 'wstr', $sUrl, 'struct*', $tData, 'dword', $iLength)
If @error Then Return SetError(@error + 10, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return DllStructGetData($tData, 1)
EndFunc
Func _WinAPI_UrlIs($sUrl, $iType = 0)
Local $aCall = DllCall('shlwapi.dll', 'bool', 'UrlIsW', 'wstr', $sUrl, 'uint', $iType)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func __US($sString, $iLength = 0)
If $iLength Then
$sString = StringLeft($sString, $iLength)
Else
$iLength = StringLen($sString)
EndIf
Local $tUS = DllStructCreate('ushort;ushort;ptr;wchar[' & ($iLength + 1) & ']')
DllStructSetData($tUS, 1, 2 * StringLen($sString))
DllStructSetData($tUS, 2, 2 * $iLength)
DllStructSetData($tUS, 3, DllStructGetPtr($tUS, 4))
DllStructSetData($tUS, 4, $sString)
Return $tUS
EndFunc
Global Const $tagNOTIFYICONDATA = 'struct;dword Size;hwnd hWnd;uint ID;uint Flags;uint CallbackMessage;ptr hIcon;wchar Tip[128];dword State;dword StateMask;wchar Info[256];uint Version;wchar InfoTitle[64];dword InfoFlags;endstruct'
Global Const $tagNOTIFYICONDATA_V3 = $tagNOTIFYICONDATA & ';' & $tagGUID
Global Const $tagNOTIFYICONDATA_V4 = $tagNOTIFYICONDATA_V3 & ';ptr hBalloonIcon;'
Global Const $tagSHELLEXECUTEINFO = 'dword Size;ulong Mask;hwnd hWnd;ptr Verb;ptr File;ptr Parameters;ptr Directory;int Show;ulong_ptr hInstApp;ptr IDList;ptr Class;ulong_ptr hKeyClass;dword HotKey;ptr hMonitor;ptr hProcess'
Global Const $tagSHFILEINFO = 'ptr hIcon;int iIcon;dword Attributes;wchar DisplayName[260];wchar TypeName[80]'
Global Const $tagSHFILEOPSTRUCT = 'hwnd hWnd;uint Func;ptr From;ptr To;dword Flags;int fAnyOperationsAborted;ptr hNameMappings;ptr ProgressTitle'
Global Const $tagSHFOLDERCUSTOMSETTINGS = 'dword Size;dword Mask;ptr GUID;ptr WebViewTemplate;dword SizeWVT;ptr WebViewTemplateVersion;ptr InfoTip;dword SizeIT;ptr CLSID;dword Flags;ptr IconFile;dword SizeIF;int IconIndex;ptr Logo;dword SizeL'
Global Const $tagSHSTOCKICONINFO = 'dword Size;ptr hIcon;int SysImageIndex;int iIcon;wchar Path[260]'
Func _WinAPI_DefSubclassProc($hWnd, $iMsg, $wParam, $lParam)
Local $aCall = DllCall('comctl32.dll', 'lresult', 'DefSubclassProc', 'hwnd', $hWnd, 'uint', $iMsg, 'wparam', $wParam,  'lparam', $lParam)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DllGetVersion($sFilePath)
Local $tVersion = DllStructCreate('dword[5]')
DllStructSetData($tVersion, 1, DllStructGetSize($tVersion), 1)
Local $aCall = DllCall($sFilePath, 'uint', 'DllGetVersion', 'struct*', $tVersion)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Local $aRet[4]
For $i = 0 To 3
$aRet[$i] = DllStructGetData($tVersion, 1, $i + 2)
Next
Return $aRet
EndFunc
Func _WinAPI_FindExecutable($sFileName, $sDirectory = "")
Local $aCall = DllCall("shell32.dll", "INT", "FindExecutableW", "wstr", $sFileName, "wstr", $sDirectory, "wstr", "")
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] <= 32 Then Return SetError(10, $aCall[0], '')
Return SetExtended($aCall[0], $aCall[3])
EndFunc
Func _WinAPI_GetAllUsersProfileDirectory()
Local $aCall = DllCall('userenv.dll', 'bool', 'GetAllUsersProfileDirectoryW', 'wstr', '', 'dword*', 4096)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_GetDefaultUserProfileDirectory()
Local $aCall = DllCall('userenv.dll', 'bool', 'GetDefaultUserProfileDirectoryW', 'wstr', '', 'dword*', 4096)
If @error Then Return SetError(@error, @extended, '')
Return $aCall[1]
EndFunc
Func _WinAPI_GetWindowSubclass($hWnd, $pSubclassProc, $idSubClass)
Local $aCall = DllCall('comctl32.dll', 'bool', 'GetWindowSubclass', 'hwnd', $hWnd, 'ptr', $pSubclassProc, 'uint_ptr', $idSubClass,  'dword_ptr*', 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $aCall[4]
EndFunc
Func _WinAPI_RemoveWindowSubclass($hWnd, $pSubclassProc, $idSubClass)
Local $aCall = DllCall('comctl32.dll', 'bool', 'RemoveWindowSubclass', 'hwnd', $hWnd, 'ptr', $pSubclassProc, 'uint_ptr', $idSubClass)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_SetCurrentProcessExplicitAppUserModelID($sAppID)
Local $aCall = DllCall('shell32.dll', 'long', 'SetCurrentProcessExplicitAppUserModelID', 'wstr', $sAppID)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_SetWindowSubclass($hWnd, $pSubclassProc, $idSubClass, $pData = 0)
Local $aCall = DllCall('comctl32.dll', 'bool', 'SetWindowSubclass', 'hwnd', $hWnd, 'ptr', $pSubclassProc, 'uint_ptr', $idSubClass,  'dword_ptr', $pData)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellAddToRecentDocs($sFilePath)
If StringStripWS($sFilePath, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$sFilePath = _WinAPI_PathSearchAndQualify($sFilePath, 1)
If Not $sFilePath Then
Return SetError(1, 0, 0)
EndIf
Else
$sFilePath = Null
EndIf
DllCall('shell32.dll', 'none', 'SHAddToRecentDocs', 'uint', 3, 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_ShellChangeNotify($iEvent, $iFlags, $iItem1 = 0, $iItem2 = 0)
Local $sTypeOfItem1 = 'dword_ptr', $sTypeOfItem2 = 'dword_ptr'
If IsString($iItem1) Then
$sTypeOfItem1 = 'wstr'
EndIf
If IsString($iItem2) Then
$sTypeOfItem2 = 'wstr'
EndIf
DllCall('shell32.dll', 'none', 'SHChangeNotify', 'long', $iEvent, 'uint', $iFlags, $sTypeOfItem1, $iItem1, $sTypeOfItem2, $iItem2)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_ShellChangeNotifyDeregister($iID)
Local $aCall = DllCall('shell32.dll', 'bool', 'SHChangeNotifyDeregister', 'ulong', $iID)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellChangeNotifyRegister($hWnd, $iMsg, $iEvents, $iSources, $aPaths, $bRecursive = False)
Local $iPath = $aPaths, $tagStruct = ''
If IsArray($aPaths) Then
If UBound($aPaths, $UBOUND_COLUMNS) Then Return SetError(1, 0, 0)
Else
Dim $aPaths[1] = [$iPath]
EndIf
For $i = 0 To UBound($aPaths) - 1
If Not _WinAPI_PathIsDirectory($aPaths[$i]) Then Return SetError(2, 0, 0)
Next
For $i = 0 To UBound($aPaths) - 1
$tagStruct &= 'ptr;int;'
Next
Local $tEntry = DllStructCreate($tagStruct)
For $i = 0 To UBound($aPaths) - 1
$aPaths[$i] = _WinAPI_ShellILCreateFromPath(_WinAPI_PathSearchAndQualify($aPaths[$i]))
DllStructSetData($tEntry, 2 * $i + 1, $aPaths[$i])
DllStructSetData($tEntry, 2 * $i + 2, $bRecursive)
Next
Local $iError = 0
Local $aCall = DllCall('shell32.dll', 'ulong', 'SHChangeNotifyRegister', 'hwnd', $hWnd, 'int', $iSources, 'long', $iEvents,  'uint', $iMsg, 'int', UBound($aPaths), 'struct*', $tEntry)
If @error Or Not $aCall[0] Then $iError = @error + 10
For $i = 0 To UBound($aPaths) - 1
_WinAPI_CoTaskMemFree($aPaths[$i])
Next
Return SetError($iError, 0, $aCall[0])
EndFunc
Func _WinAPI_ShellCreateDirectory($sFilePath, $hParent = 0, $tSecurity = 0)
Local $aCall = DllCall('shell32.dll', 'int', 'SHCreateDirectoryExW', 'hwnd', $hParent, 'wstr', $sFilePath, 'struct*', $tSecurity)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_ShellEmptyRecycleBin($sRoot = '', $iFlags = 0, $hParent = 0)
Local $aCall = DllCall('shell32.dll', 'long', 'SHEmptyRecycleBinW', 'hwnd', $hParent, 'wstr', $sRoot, 'dword', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_ShellExecute($sFilePath, $sArgs = '', $sDir = '', $sVerb = '', $iShow = 1, $hParent = 0)
If Not StringStripWS($sArgs, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sArgs = Null
If Not StringStripWS($sDir, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sDir = Null
If Not StringStripWS($sVerb, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sVerb = Null
Local $aCall = DllCall('shell32.dll', 'ULONG_PTR', 'ShellExecuteW', 'hwnd', $hParent, 'wstr', $sVerb, 'wstr', $sFilePath,  'wstr', $sArgs, 'wstr', $sDir, 'int', $iShow)
If @error Then Return SetError(@error, @extended, False)
If $aCall[0] <= 32 Then Return SetError(10, $aCall[0], 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellExecuteEx(ByRef $tSHEXINFO)
Local $aCall = DllCall('shell32.dll', 'bool', 'ShellExecuteExW', 'struct*', $tSHEXINFO)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellExtractAssociatedIcon($sFilePath, $bSmall = False)
Local $iFlags = 0x00000100
If Not _WinAPI_PathIsDirectory($sFilePath) Then
$iFlags = BitOR($iFlags, 0x00000010)
EndIf
If $bSmall Then
$iFlags = BitOR($iFlags, 0x00000001)
EndIf
Local $tSHFILEINFO = DllStructCreate($tagSHFILEINFO)
If Not _WinAPI_ShellGetFileInfo($sFilePath, $iFlags, 0, $tSHFILEINFO) Then Return SetError(@error + 10, @extended, 0)
Return DllStructGetData($tSHFILEINFO, 'hIcon')
EndFunc
Func _WinAPI_ShellExtractIcon($sIcon, $iIndex, $iWidth, $iHeight)
Local $aCall = DllCall('shell32.dll', 'int', 'SHExtractIconsW', 'wstr', $sIcon, 'int', $iIndex, 'int', $iWidth,  'int', $iHeight, 'ptr*', 0, 'ptr*', 0, 'int', 1, 'int', 0)
If @error Or Not $aCall[0] Or Not $aCall[5] Then Return SetError(@error, @extended, 0)
Return $aCall[5]
EndFunc
Func _WinAPI_ShellFileOperation($sFrom, $sTo, $iFunc, $iFlags, $sTitle = '', $hParent = 0)
Local $iData
If Not IsArray($sFrom) Then
$iData = $sFrom
Dim $sFrom[1] = [$iData]
EndIf
Local $tFrom = _WinAPI_ArrayToStruct($sFrom)
If @error Then Return SetError(@error + 20, @extended, 0)
If Not IsArray($sTo) Then
$iData = $sTo
Dim $sTo[1] = [$iData]
EndIf
Local $tTo = _WinAPI_ArrayToStruct($sTo)
If @error Then Return SetError(@error + 30, @extended, 0)
Local $tSHFILEOPSTRUCT = DllStructCreate($tagSHFILEOPSTRUCT)
DllStructSetData($tSHFILEOPSTRUCT, 'hWnd', $hParent)
DllStructSetData($tSHFILEOPSTRUCT, 'Func', $iFunc)
DllStructSetData($tSHFILEOPSTRUCT, 'From', DllStructGetPtr($tFrom))
DllStructSetData($tSHFILEOPSTRUCT, 'To', DllStructGetPtr($tTo))
DllStructSetData($tSHFILEOPSTRUCT, 'Flags', $iFlags)
DllStructSetData($tSHFILEOPSTRUCT, 'ProgressTitle', $sTitle)
Local $aCall = DllCall('shell32.dll', 'int', 'SHFileOperationW', 'struct*', $tSHFILEOPSTRUCT)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $tSHFILEOPSTRUCT
EndFunc
Func _WinAPI_ShellFlushSFCache()
DllCall('shell32.dll', 'none', 'SHFlushSFCache')
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_ShellGetFileInfo($sFilePath, $iFlags, $iAttributes, ByRef $tSHFILEINFO)
Local $aCall = DllCall('shell32.dll', 'dword_ptr', 'SHGetFileInfoW', 'wstr', $sFilePath, 'dword', $iAttributes,  'struct*', $tSHFILEINFO, 'uint', DllStructGetSize($tSHFILEINFO), 'uint', $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellGetIconOverlayIndex($sIcon, $iIndex)
If Not StringStripWS($sIcon, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sIcon = Null
Local $aCall = DllCall('shell32.dll', 'int', 'SHGetIconOverlayIndexW', 'wstr', $sIcon, 'int', $iIndex)
If @error Or ($aCall[0] = -1) Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellGetKnownFolderIDList($sGUID, $iFlags = 0, $hToken = 0)
Local $tGUID = DllStructCreate($tagGUID)
Local $aCall = DllCall('ole32.dll', 'uint', 'CLSIDFromString', 'wstr', $sGUID, 'struct*', $tGUID)
If @error Or $aCall[0] Then Return SetError(@error + 20, @extended, 0)
$aCall = DllCall('shell32.dll', 'uint', 'SHGetKnownFolderIDList', 'struct*', $tGUID, 'dword', $iFlags, 'handle', $hToken, 'ptr*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[4]
EndFunc
Func _WinAPI_ShellGetKnownFolderPath($sGUID, $iFlags = 0, $hToken = 0)
Local $tGUID = DllStructCreate($tagGUID)
Local $aCall = DllCall('ole32.dll', 'long', 'CLSIDFromString', 'wstr', $sGUID, 'struct*', $tGUID)
If @error Or $aCall[0] Then Return SetError(@error + 20, @extended, '')
$aCall = DllCall('shell32.dll', 'long', 'SHGetKnownFolderPath', 'struct*', $tGUID, 'dword', $iFlags, 'handle', $hToken, 'ptr*', 0)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Local $sPath = _WinAPI_GetString($aCall[4])
_WinAPI_CoTaskMemFree($aCall[4])
Return $sPath
EndFunc
Func _WinAPI_ShellGetLocalizedName($sFilePath)
Local $aCall = DllCall('shell32.dll', 'long', 'SHGetLocalizedName', 'wstr', $sFilePath, 'wstr', '', 'uint*', 0, 'int*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Local $aRet[2]
Local $aCall1 = DllCall("kernel32.dll", "dword", "ExpandEnvironmentStringsW", "wstr", $aCall[2], "wstr", "", "dword", 4096)
$aRet[0] = $aCall1[2]
$aRet[1] = $aCall[4]
Return $aRet
EndFunc
Func _WinAPI_ShellGetPathFromIDList($pPIDL)
Local $aCall = DllCall('shell32.dll', 'bool', 'SHGetPathFromIDListW', 'struct*', $pPIDL, 'wstr', '')
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_ShellGetSetFolderCustomSettings($sFilePath, $iFlag, ByRef $tSHFCS)
Local $sProc = 'SHGetSetFolderCustomSettings'
If _WinAPI_GetVersion() < 6.0 Then $sProc &= 'W'
Local $aCall = DllCall('shell32.dll', 'long', $sProc, 'struct*', $tSHFCS, 'wstr', $sFilePath, 'dword', $iFlag)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_ShellGetSettings($iFlags)
Local $tSHELLSTATE = DllStructCreate('uint[8]')
DllCall('shell32.dll', 'none', 'SHGetSetSettings', 'struct*', $tSHELLSTATE, 'dword', $iFlags, 'bool', 0)
If @error Then Return SetError(@error, @extended, 0)
Local $iVal1 = DllStructGetData($tSHELLSTATE, 1, 1)
Local $iVal2 = DllStructGetData($tSHELLSTATE, 1, 8)
Local $iResult = 0
Local $aOpt[20][2] =  [[0x00000001, 0x00000001],  [0x00000002, 0x00000002],  [0x00000004, 0x00008000],  [0x00000008, 0x00000020],  [0x00000010, 0x00000008],  [0x00000020, 0x00000080],  [0x00000040, 0x00000200],  [0x00000080, 0x00000400],  [0x00000100, 0x00000800],  [0x00000400, 0x00001000],  [0x00000800, 0x00002000],  [0x00001000, 0x00004000],  [0x00002000, 0x00020000],  [0x00008000, 0x00040000],  [0x00010000, 0x00100000],  [0x00000001, 0x00080000],  [0x00000002, 0x00200000],  [0x00000008, 0x00800000],  [0x00000010, 0x01000000],  [0x00000020, 0x02000000]]
For $i = 0 To 14
If BitAND($iVal1, $aOpt[$i][0]) Then
$iResult += $aOpt[$i][1]
EndIf
Next
For $i = 15 To 19
If BitAND($iVal2, $aOpt[$i][0]) Then
$iResult += $aOpt[$i][1]
EndIf
Next
Return $iResult
EndFunc
Func _WinAPI_ShellGetSpecialFolderLocation($iCSIDL)
Local $aCall = DllCall('shell32.dll', 'long', 'SHGetSpecialFolderLocation', 'hwnd', 0, 'int', $iCSIDL, 'ptr*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[3]
EndFunc
Func _WinAPI_ShellGetSpecialFolderPath($iCSIDL, $bCreate = False)
Local $aCall = DllCall('shell32.dll', 'bool', 'SHGetSpecialFolderPathW', 'hwnd', 0, 'wstr', '', 'int', $iCSIDL, 'bool', $bCreate)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, '')
Return $aCall[2]
EndFunc
Func _WinAPI_ShellGetStockIconInfo($iSIID, $iFlags)
Local $tSHSTOCKICONINFO = DllStructCreate($tagSHSTOCKICONINFO)
DllStructSetData($tSHSTOCKICONINFO, 'Size', DllStructGetSize($tSHSTOCKICONINFO))
Local $aCall = DllCall('shell32.dll', 'long', 'SHGetStockIconInfo', 'int', $iSIID, 'uint', $iFlags, 'struct*', $tSHSTOCKICONINFO)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $tSHSTOCKICONINFO
EndFunc
Func _WinAPI_ShellILCreateFromPath($sFilePath)
Local $aCall = DllCall('shell32.dll', 'long', 'SHILCreateFromPath', 'wstr', $sFilePath, 'ptr*', 0, 'dword*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[2]
EndFunc
Func _WinAPI_ShellNotifyIcon($iMessage, ByRef $tNOTIFYICONDATA)
Local $aCall = DllCall('shell32.dll', 'bool', 'Shell_NotifyIconW', 'dword', $iMessage, 'struct*', $tNOTIFYICONDATA)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellNotifyIconGetRect($hWnd, $iID, $tGUID = 0)
Local $tNII = DllStructCreate('dword;hwnd;uint;' & $tagGUID)
DllStructSetData($tNII, 1, DllStructGetSize($tNII))
DllStructSetData($tNII, 2, $hWnd)
DllStructSetData($tNII, 3, $iID)
If IsDllStruct($tGUID) Then
If Not _WinAPI_MoveMemory(DllStructGetPtr($tNII, 4), $tGUID, 16) Then Return SetError(@error + 10, @extended, 0)
EndIf
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('shell32.dll', 'long', 'Shell_NotifyIconGetRect', 'struct*', $tNII, 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $tRECT
EndFunc
Func _WinAPI_ShellObjectProperties($sFilePath, $iType = 2, $sProperty = '', $hParent = 0)
If Not StringStripWS($sProperty, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then $sProperty = Null
Local $aCall = DllCall('shell32.dll', 'bool', 'SHObjectProperties', 'hwnd', $hParent, 'dword', $iType, 'wstr', $sFilePath,  'wstr', $sProperty)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellOpenFolderAndSelectItems($sFilePath, $aNames = 0, $iStart = 0, $iEnd = -1, $iFlags = 0)
Local $pPIDL, $aCall, $tPtr = 0, $iCount = 0, $iObj = 0, $iError = 0
$sFilePath = _WinAPI_PathRemoveBackslash(_WinAPI_PathSearchAndQualify($sFilePath))
If IsArray($aNames) Then
If $sFilePath And Not _WinAPI_PathIsDirectory($sFilePath) Then Return SetError(@error + 20, @extended, 0)
EndIf
$pPIDL = _WinAPI_ShellILCreateFromPath($sFilePath)
If @error Then Return SetError(@error + 30, @extended, 0)
If Not __CheckErrorArrayBounds($aNames, $iStart, $iEnd) Then
$tPtr = DllStructCreate('ptr[' & ($iEnd - $iStart + 1) & ']')
For $i = $iStart To $iEnd
$iCount += 1
If $aNames[$i] Then
DllStructSetData($tPtr, 1, _WinAPI_ShellILCreateFromPath($sFilePath & '\' & $aNames[$i]), $iCount)
Else
DllStructSetData($tPtr, 1, 0, $iCount)
EndIf
Next
EndIf
If _WinAPI_CoInitialize() Then $iObj = 1
$aCall = DllCall('shell32.dll', 'long', 'SHOpenFolderAndSelectItems', 'ptr', $pPIDL, 'uint', $iCount, 'struct*', $tPtr,  'dword', $iFlags)
If @error Then
$iError = @error + 10
Else
If $aCall[0] Then $iError = 10
EndIf
If $iObj Then _WinAPI_CoUninitialize()
_WinAPI_CoTaskMemFree($pPIDL)
For $i = 1 To $iCount
$pPIDL = DllStructGetData($tPtr, $i)
If $pPIDL Then
_WinAPI_CoTaskMemFree($pPIDL)
EndIf
Next
If $iError = 10 Then Return SetError(10, $aCall[0], 0)
If $iError Then Return SetError($iError, 0, 0)
Return 1
EndFunc
Func _WinAPI_ShellQueryRecycleBin($sRoot = '')
Local $tagSHQUERYRBINFO = (@AutoItX64 ? '' : 'align 1;') & 'dword cbSize;int64 Size;int64 nbFiles'
Local $tSHQRBI = DllStructCreate($tagSHQUERYRBINFO)
DllStructSetData($tSHQRBI, 1, DllStructGetSize($tSHQRBI))
Local $aCall = DllCall('shell32.dll', 'long', 'SHQueryRecycleBinW', 'wstr', $sRoot, 'struct*', $tSHQRBI)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Local $aRet[2]
$aRet[0] = DllStructGetData($tSHQRBI, 2)
$aRet[1] = DllStructGetData($tSHQRBI, 3)
Return $aRet
EndFunc
Func _WinAPI_ShellQueryUserNotificationState()
Local $aCall = DllCall('shell32.dll', 'long', 'SHQueryUserNotificationState', 'uint*', 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return $aCall[1]
EndFunc
Func _WinAPI_ShellRemoveLocalizedName($sFilePath)
Local $aCall = DllCall('shell32.dll', 'long', 'SHRemoveLocalizedName', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_ShellRestricted($iRestriction)
Local $aCall = DllCall('shell32.dll', 'dword', 'SHRestricted', 'uint', $iRestriction)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ShellSetKnownFolderPath($sGUID, $sFilePath, $iFlags = 0, $hToken = 0)
Local $tGUID = DllStructCreate($tagGUID)
Local $aCall = DllCall('ole32.dll', 'long', 'CLSIDFromString', 'wstr', $sGUID, 'struct*', $tGUID)
If @error Or $aCall[0] Then Return SetError(@error + 20, @extended, 0)
$aCall = DllCall('shell32.dll', 'long', 'SHSetKnownFolderPath', 'struct*', $tGUID, 'dword', $iFlags, 'handle', $hToken, 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_ShellSetLocalizedName($sFilePath, $sModule, $iResID)
Local $aCall = DllCall('shell32.dll', 'long', 'SHSetLocalizedName', 'wstr', $sFilePath, 'wstr', $sModule, 'int', $iResID)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then Return SetError(10, $aCall[0], 0)
Return 1
EndFunc
Func _WinAPI_ShellSetSettings($iFlags, $bSet)
Local $iVal1 = 0, $iVal2 = 0
Local $aOpt[20][2] =  [[0x00000001, 0x00000001],  [0x00000002, 0x00000002],  [0x00000004, 0x00008000],  [0x00000008, 0x00000020],  [0x00000010, 0x00000008],  [0x00000020, 0x00000080],  [0x00000040, 0x00000200],  [0x00000080, 0x00000400],  [0x00000100, 0x00000800],  [0x00000400, 0x00001000],  [0x00000800, 0x00002000],  [0x00001000, 0x00004000],  [0x00002000, 0x00020000],  [0x00008000, 0x00040000],  [0x00010000, 0x00100000],  [0x00000001, 0x00080000],  [0x00000002, 0x00200000],  [0x00000008, 0x00800000],  [0x00000010, 0x01000000],  [0x00000020, 0x02000000]]
If $bSet Then
For $i = 0 To 14
If BitAND($iFlags, $aOpt[$i][1]) Then
$iVal1 += $aOpt[$i][0]
EndIf
Next
For $i = 15 To 19
If BitAND($iFlags, $aOpt[$i][1]) Then
$iVal2 += $aOpt[$i][0]
EndIf
Next
EndIf
Local $tSHELLSTATE = DllStructCreate('uint[8]')
DllStructSetData($tSHELLSTATE, 1, $iVal1, 1)
DllStructSetData($tSHELLSTATE, 1, $iVal2, 8)
DllCall('shell32.dll', 'none', 'SHGetSetSettings', 'struct*', $tSHELLSTATE, 'dword', $iFlags, 'bool', 1)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func _WinAPI_ShellUpdateImage($sIcon, $iIndex, $iImage, $iFlags = 0)
DllCall('shell32.dll', 'none', 'SHUpdateImageW', 'wstr', $sIcon, 'int', $iIndex, 'uint', $iFlags, 'int', $iImage)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Global Const $BS_GROUPBOX = 0x0007
Global Const $BS_BOTTOM = 0x0800
Global Const $BS_CENTER = 0x0300
Global Const $BS_DEFPUSHBUTTON = 0x0001
Global Const $BS_LEFT = 0x0100
Global Const $BS_MULTILINE = 0x2000
Global Const $BS_PUSHBOX = 0x000A
Global Const $BS_PUSHLIKE = 0x1000
Global Const $BS_RIGHT = 0x0200
Global Const $BS_RIGHTBUTTON = 0x0020
Global Const $BS_TOP = 0x0400
Global Const $BS_VCENTER = 0x0C00
Global Const $BS_FLAT = 0x8000
Global Const $BS_ICON = 0x0040
Global Const $BS_BITMAP = 0x0080
Global Const $BS_NOTIFY = 0x4000
Global Const $BS_SPLITBUTTON = 0x0000000C
Global Const $BS_DEFSPLITBUTTON = 0x0000000D
Global Const $BS_COMMANDLINK = 0x0000000E
Global Const $BS_DEFCOMMANDLINK = 0x0000000F
Global Const $BCSIF_GLYPH = 0x0001
Global Const $BCSIF_IMAGE = 0x0002
Global Const $BCSIF_STYLE = 0x0004
Global Const $BCSIF_SIZE = 0x0008
Global Const $BCSS_NOSPLIT = 0x0001
Global Const $BCSS_STRETCH = 0x0002
Global Const $BCSS_ALIGNLEFT = 0x0004
Global Const $BCSS_IMAGE = 0x0008
Global Const $BUTTON_IMAGELIST_ALIGN_LEFT = 0
Global Const $BUTTON_IMAGELIST_ALIGN_RIGHT = 1
Global Const $BUTTON_IMAGELIST_ALIGN_TOP = 2
Global Const $BUTTON_IMAGELIST_ALIGN_BOTTOM = 3
Global Const $BUTTON_IMAGELIST_ALIGN_CENTER = 4
Global Const $BS_3STATE = 0x0005
Global Const $BS_AUTO3STATE = 0x0006
Global Const $BS_AUTOCHECKBOX = 0x0003
Global Const $BS_CHECKBOX = 0x0002
Global Const $BS_RADIOBUTTON = 0x4
Global Const $BS_AUTORADIOBUTTON = 0x0009
Global Const $BS_OWNERDRAW = 0xB
Global Const $GUI_SS_DEFAULT_BUTTON = 0
Global Const $GUI_SS_DEFAULT_CHECKBOX = 0
Global Const $GUI_SS_DEFAULT_GROUP = 0
Global Const $GUI_SS_DEFAULT_RADIO = 0
Global Const $BCM_FIRST = 0x1600
Global Const $BCM_GETIDEALSIZE = ($BCM_FIRST + 0x0001)
Global Const $BCM_GETIMAGELIST = ($BCM_FIRST + 0x0003)
Global Const $BCM_GETNOTE = ($BCM_FIRST + 0x000A)
Global Const $BCM_GETNOTELENGTH = ($BCM_FIRST + 0x000B)
Global Const $BCM_GETSPLITINFO = ($BCM_FIRST + 0x0008)
Global Const $BCM_GETTEXTMARGIN = ($BCM_FIRST + 0x0005)
Global Const $BCM_SETDROPDOWNSTATE = ($BCM_FIRST + 0x0006)
Global Const $BCM_SETIMAGELIST = ($BCM_FIRST + 0x0002)
Global Const $BCM_SETNOTE = ($BCM_FIRST + 0x0009)
Global Const $BCM_SETSHIELD = ($BCM_FIRST + 0x000C)
Global Const $BCM_SETSPLITINFO = ($BCM_FIRST + 0x0007)
Global Const $BCM_SETTEXTMARGIN = ($BCM_FIRST + 0x0004)
Global Const $BM_CLICK = 0xF5
Global Const $BM_GETCHECK = 0xF0
Global Const $BM_GETIMAGE = 0xF6
Global Const $BM_GETSTATE = 0xF2
Global Const $BM_SETCHECK = 0xF1
Global Const $BM_SETDONTCLICK = 0xF8
Global Const $BM_SETIMAGE = 0xF7
Global Const $BM_SETSTATE = 0xF3
Global Const $BM_SETSTYLE = 0xF4
Global Const $BCN_FIRST = -1250
Global Const $BCN_DROPDOWN = ($BCN_FIRST + 0x0002)
Global Const $BCN_HOTITEMCHANGE = ($BCN_FIRST + 0x0001)
Global Const $BN_CLICKED = 0
Global Const $BN_PAINT = 1
Global Const $BN_HILITE = 2
Global Const $BN_UNHILITE = 3
Global Const $BN_DISABLE = 4
Global Const $BN_DOUBLECLICKED = 5
Global Const $BN_SETFOCUS = 6
Global Const $BN_KILLFOCUS = 7
Global Const $BN_PUSHED = $BN_HILITE
Global Const $BN_UNPUSHED = $BN_UNHILITE
Global Const $BN_DBLCLK = $BN_DOUBLECLICKED
Global Const $BST_CHECKED = 0x1
Global Const $BST_INDETERMINATE = 0x2
Global Const $BST_UNCHECKED = 0x0
Global Const $BST_FOCUS = 0x8
Global Const $BST_PUSHED = 0x4
Global Const $BST_DONTCLICK = 0x000080
Global Const $ES_LEFT = 0
Global Const $ES_CENTER = 1
Global Const $ES_RIGHT = 2
Global Const $ES_MULTILINE = 4
Global Const $ES_UPPERCASE = 8
Global Const $ES_LOWERCASE = 16
Global Const $ES_PASSWORD = 32
Global Const $ES_AUTOVSCROLL = 64
Global Const $ES_AUTOHSCROLL = 128
Global Const $ES_NOHIDESEL = 256
Global Const $ES_OEMCONVERT = 1024
Global Const $ES_READONLY = 2048
Global Const $ES_WANTRETURN = 4096
Global Const $ES_NUMBER = 8192
Global Const $EC_ERR = -1
Global Const $ECM_FIRST = 0X1500
Global Const $EM_CANUNDO = 0xC6
Global Const $EM_CHARFROMPOS = 0xD7
Global Const $EM_EMPTYUNDOBUFFER = 0xCD
Global Const $EM_FMTLINES = 0xC8
Global Const $EM_GETCUEBANNER = ($ECM_FIRST + 2)
Global Const $EM_GETFIRSTVISIBLELINE = 0xCE
Global Const $EM_GETHANDLE = 0xBD
Global Const $EM_GETIMESTATUS = 0xD9
Global Const $EM_GETLIMITTEXT = 0xD5
Global Const $EM_GETLINE = 0xC4
Global Const $EM_GETLINECOUNT = 0xBA
Global Const $EM_GETMARGINS = 0xD4
Global Const $EM_GETMODIFY = 0xB8
Global Const $EM_GETPASSWORDCHAR = 0xD2
Global Const $EM_GETRECT = 0xB2
Global Const $EM_GETSEL = 0xB0
Global Const $EM_GETTHUMB = 0xBE
Global Const $EM_GETWORDBREAKPROC = 0xD1
Global Const $EM_HIDEBALLOONTIP = ($ECM_FIRST + 4)
Global Const $EM_LIMITTEXT = 0xC5
Global Const $EM_LINEFROMCHAR = 0xC9
Global Const $EM_LINEINDEX = 0xBB
Global Const $EM_LINELENGTH = 0xC1
Global Const $EM_LINESCROLL = 0xB6
Global Const $EM_POSFROMCHAR = 0xD6
Global Const $EM_REPLACESEL = 0xC2
Global Const $EM_SCROLL = 0xB5
Global Const $EM_SCROLLCARET = 0x00B7
Global Const $EM_SETCUEBANNER = ($ECM_FIRST + 1)
Global Const $EM_SETHANDLE = 0xBC
Global Const $EM_SETIMESTATUS = 0xD8
Global Const $EM_SETLIMITTEXT = $EM_LIMITTEXT
Global Const $EM_SETMARGINS = 0xD3
Global Const $EM_SETMODIFY = 0xB9
Global Const $EM_SETPASSWORDCHAR = 0xCC
Global Const $EM_SETREADONLY = 0xCF
Global Const $EM_SETRECT = 0xB3
Global Const $EM_SETRECTNP = 0xB4
Global Const $EM_SETSEL = 0xB1
Global Const $EM_SETTABSTOPS = 0xCB
Global Const $EM_SETWORDBREAKPROC = 0xD0
Global Const $EM_SHOWBALLOONTIP = ($ECM_FIRST + 3)
Global Const $EM_UNDO = 0xC7
Global Const $EC_LEFTMARGIN = 0x1
Global Const $EC_RIGHTMARGIN = 0x2
Global Const $EC_USEFONTINFO = 0xFFFF
Global Const $EMSIS_COMPOSITIONSTRING = 0x1
Global Const $EIMES_GETCOMPSTRATONCE = 0x1
Global Const $EIMES_CANCELCOMPSTRINFOCUS = 0x2
Global Const $EIMES_COMPLETECOMPSTRKILLFOCUS = 0x4
Global Const $EN_ALIGN_LTR_EC = 0x700
Global Const $EN_ALIGN_RTL_EC = 0x701
Global Const $EN_CHANGE = 0x300
Global Const $EN_ERRSPACE = 0x500
Global Const $EN_HSCROLL = 0X601
Global Const $EN_KILLFOCUS = 0x200
Global Const $EN_MAXTEXT = 0x501
Global Const $EN_SETFOCUS = 0x100
Global Const $EN_UPDATE = 0x400
Global Const $EN_VSCROLL = 0x602
Global Const $GUI_SS_DEFAULT_EDIT = 0x003010c0
Global Const $GUI_SS_DEFAULT_INPUT = 0x00000080
#AutoIt3Wrapper_Au3Check_Parameters=-d -w 1 -w 2 -w 3 -w 4 -w 5 -w 6
Global Const $RT_ACCELERATOR = 9
Global Const $RT_ANICURSOR = 21
Global Const $RT_ANIICON = 22
Global Const $RT_BITMAP = 2
Global Const $RT_CURSOR = 1
Global Const $RT_DIALOG = 5
Global Const $RT_DLGINCLUDE = 17
Global Const $RT_FONT = 8
Global Const $RT_FONTDIR = 7
Global Const $RT_GROUP_CURSOR = 12
Global Const $RT_GROUP_ICON = 14
Global Const $RT_HTML = 23
Global Const $RT_ICON = 3
Global Const $RT_MANIFEST = 24
Global Const $RT_MENU = 4
Global Const $RT_MESSAGETABLE = 11
Global Const $RT_PLUGPLAY = 19
Global Const $RT_RCDATA = 10
Global Const $RT_STRING = 6
Global Const $RT_VERSION = 16
Global Const $RT_VXD = 20
Global Const $FILE_VER_GET_LOCALISED = 0x01
Global Const $FILE_VER_GET_NEUTRAL = 0x02
Global Const $FILE_VER_GET_PREFETCHED = 0x04
Global Const $OBM_TRTYPE = 32732
Global Const $OBM_LFARROWI = 32734
Global Const $OBM_RGARROWI = 32735
Global Const $OBM_DNARROWI = 32736
Global Const $OBM_UPARROWI = 32737
Global Const $OBM_COMBO = 32738
Global Const $OBM_MNARROW = 32739
Global Const $OBM_LFARROWD = 32740
Global Const $OBM_RGARROWD = 32741
Global Const $OBM_DNARROWD = 32742
Global Const $OBM_UPARROWD = 32743
Global Const $OBM_RESTORED = 32744
Global Const $OBM_ZOOMD = 32745
Global Const $OBM_REDUCED = 32746
Global Const $OBM_RESTORE = 32747
Global Const $OBM_ZOOM = 32748
Global Const $OBM_REDUCE = 32749
Global Const $OBM_LFARROW = 32750
Global Const $OBM_RGARROW = 32751
Global Const $OBM_DNARROW = 32752
Global Const $OBM_UPARROW = 32753
Global Const $OBM_CLOSE = 32754
Global Const $OBM_OLD_RESTORE = 32755
Global Const $OBM_OLD_ZOOM = 32756
Global Const $OBM_OLD_REDUCE = 32757
Global Const $OBM_BTNCORNERS = 32758
Global Const $OBM_CHECKBOXES = 32759
Global Const $OBM_CHECK = 32760
Global Const $OBM_BTSIZE = 32761
Global Const $OBM_OLD_LFARROW = 32762
Global Const $OBM_OLD_RGARROW = 32763
Global Const $OBM_OLD_DNARROW = 32764
Global Const $OBM_OLD_UPARROW = 32765
Global Const $OBM_SIZE = 32766
Global Const $OBM_OLD_CLOSE = 32767
Global Const $OIC_SAMPLE = 32512
Global Const $OIC_HAND = 32513
Global Const $OIC_QUES = 32514
Global Const $OIC_BANG = 32515
Global Const $OIC_NOTE = 32516
Global Const $OIC_WINLOGO = 32517
Global Const $OIC_WARNING = $OIC_BANG
Global Const $OIC_ERROR = $OIC_HAND
Global Const $OIC_INFORMATION = $OIC_NOTE
Global Const $DONT_RESOLVE_DLL_REFERENCES = 0x01
Global Const $LOAD_LIBRARY_AS_DATAFILE = 0x02
Global Const $LOAD_WITH_ALTERED_SEARCH_PATH = 0x08
Global Const $LOAD_IGNORE_CODE_AUTHZ_LEVEL = 0x00000010
Global Const $LOAD_LIBRARY_AS_DATAFILE_EXCLUSIVE = 0x00000040
Global Const $LOAD_LIBRARY_AS_IMAGE_RESOURCE = 0x00000020
Global Const $LOAD_LIBRARY_SEARCH_APPLICATION_DIR = 0x00000200
Global Const $LOAD_LIBRARY_SEARCH_DEFAULT_DIRS = 0x00001000
Global Const $LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR = 0x00000100
Global Const $LOAD_LIBRARY_SEARCH_SYSTEM32 = 0x00000800
Global Const $LOAD_LIBRARY_SEARCH_USER_DIRS = 0x00000400
Global Const $OCR_NORMAL = 32512
Global Const $OCR_IBEAM = 32513
Global Const $OCR_WAIT = 32514
Global Const $OCR_CROSS = 32515
Global Const $OCR_UP = 32516
Global Const $OCR_SIZE = 32640
Global Const $OCR_ICON = 32641
Global Const $OCR_SIZENWSE = 32642
Global Const $OCR_SIZENESW = 32643
Global Const $OCR_SIZEWE = 32644
Global Const $OCR_SIZENS = 32645
Global Const $OCR_SIZEALL = 32646
Global Const $OCR_ICOCUR = 32647
Global Const $OCR_NO = 32648
Global Const $OCR_HAND = 32649
Global Const $OCR_APPSTARTING = 32650
Global Const $OCR_HELP = 32651
Global Const $VS_FF_DEBUG = 0x00000001
Global Const $VS_FF_INFOINFERRED = 0x00000010
Global Const $VS_FF_PATCHED = 0x00000004
Global Const $VS_FF_PRERELEASE = 0x00000002
Global Const $VS_FF_PRIVATEBUILD = 0x00000008
Global Const $VS_FF_SPECIALBUILD = 0x00000020
Global Const $VOS_DOS = 0x00010000
Global Const $VOS_NT = 0x00040000
Global Const $VOS__WINDOWS16 = 0x00000001
Global Const $VOS__WINDOWS32 = 0x00000004
Global Const $VOS_OS216 = 0x00020000
Global Const $VOS_OS232 = 0x00030000
Global Const $VOS__PM16 = 0x00000002
Global Const $VOS__PM32 = 0x00000003
Global Const $VOS_UNKNOWN = 0x00000000
Global Const $VOS_DOS_WINDOWS16 = 0x00010001
Global Const $VOS_DOS_WINDOWS32 = 0x00010004
Global Const $VOS_NT_WINDOWS32 = 0x00040004
Global Const $VOS_OS216_PM16 = 0x00020002
Global Const $VOS_OS232_PM32 = 0x00030003
Global Const $VFT_APP = 0x00000001
Global Const $VFT_DLL = 0x00000002
Global Const $VFT_DRV = 0x00000003
Global Const $VFT_FONT = 0x00000004
Global Const $VFT_STATIC_LIB = 0x00000007
Global Const $VFT_UNKNOWN = 0x00000000
Global Const $VFT_VXD = 0x00000005
Global Const $VFT2_DRV_COMM = 0x0000000A
Global Const $VFT2_DRV_DISPLAY = 0x00000004
Global Const $VFT2_DRV_INSTALLABLE = 0x00000008
Global Const $VFT2_DRV_KEYBOARD = 0x00000002
Global Const $VFT2_DRV_LANGUAGE = 0x00000003
Global Const $VFT2_DRV_MOUSE = 0x00000005
Global Const $VFT2_DRV_NETWORK = 0x00000006
Global Const $VFT2_DRV_PRINTER = 0x00000001
Global Const $VFT2_DRV_SOUND = 0x00000009
Global Const $VFT2_DRV_SYSTEM = 0x00000007
Global Const $VFT2_DRV_VERSIONED_PRINTER = 0x0000000C
Global Const $VFT2_UNKNOWN = 0x00000000
Global Const $VFT2_FONT_RASTER = 0x00000001
Global Const $VFT2_FONT_TRUETYPE = 0x00000003
Global Const $VFT2_FONT_VECTOR = 0x00000002
Global Const $MF_UNHILITE = 0x0
Global Const $MF_ENABLED = 0x0
Global Const $MF_UNCHECKED = 0x0
Global Const $MF_STRING = 0x0
Global Const $MF_GRAYED = 0x00000001
Global Const $MF_DISABLED = 0x00000002
Global Const $MF_BITMAP = 0x00000004
Global Const $MF_CHECKED = 0x00000008
Global Const $MF_POPUP = 0x00000010
Global Const $MF_MENUBARBREAK = 0x00000020
Global Const $MF_MENUBREAK = 0x00000040
Global Const $MF_HILITE = 0x00000080
Global Const $MF_OWNERDRAW = 0x00000100
Global Const $MF_USECHECKBITMAPS = 0x00000200
Global Const $MF_BYPOSITION = 0x00000400
Global Const $MF_SEPARATOR = 0x00000800
Global Const $MF_DEFAULT = 0x00001000
Global Const $MF_SYSMENU = 0x00002000
Global Const $MF_HELP = 0x00004000
Global Const $MF_RIGHTJUSTIFY = 0x00004000
Global Const $MF_MOUSESELECT = 0x00008000
Global Const $MFS_GRAYED = 0x00000003
Global Const $MFS_DISABLED = $MFS_GRAYED
Global Const $MFS_CHECKED = $MF_CHECKED
Global Const $MFS_HILITE = $MF_HILITE
Global Const $MFS_ENABLED = $MF_ENABLED
Global Const $MFS_UNCHECKED = $MF_UNCHECKED
Global Const $MFS_UNHILITE = $MF_UNHILITE
Global Const $MFS_DEFAULT = $MF_DEFAULT
Global Const $MFT_STRING = $MF_STRING
Global Const $MFT_BITMAP = $MF_BITMAP
Global Const $MFT_MENUBARBREAK = $MF_MENUBARBREAK
Global Const $MFT_MENUBREAK = $MF_MENUBREAK
Global Const $MFT_OWNERDRAW = $MF_OWNERDRAW
Global Const $MFT_RADIOCHECK = 0x00000200
Global Const $MFT_SEPARATOR = $MF_SEPARATOR
Global Const $MFT_RIGHTORDER = 0x00002000
Global Const $MFT_RIGHTJUSTIFY = $MF_RIGHTJUSTIFY
Global Const $MIIM_STATE = 0x00000001
Global Const $MIIM_ID = 0x00000002
Global Const $MIIM_SUBMENU = 0x00000004
Global Const $MIIM_CHECKMARKS = 0x00000008
Global Const $MIIM_TYPE = 0x00000010
Global Const $MIIM_DATA = 0x00000020
Global Const $MIIM_DATAMASK = 0x0000003F
Global Const $MIIM_STRING = 0x00000040
Global Const $MIIM_BITMAP = 0x00000080
Global Const $MIIM_FTYPE = 0x00000100
Global Const $MIM_MAXHEIGHT = 0x00000001
Global Const $MIM_BACKGROUND = 0x00000002
Global Const $MIM_HELPID = 0x00000004
Global Const $MIM_MENUDATA = 0x00000008
Global Const $MIM_STYLE = 0x00000010
Global Const $MIM_APPLYTOSUBMENUS = 0x80000000
Global Const $MNS_CHECKORBMP = 0x04000000
Global Const $MNS_NOTIFYBYPOS = 0x08000000
Global Const $MNS_AUTODISMISS = 0x10000000
Global Const $MNS_DRAGDROP = 0x20000000
Global Const $MNS_MODELESS = 0x40000000
Global Const $MNS_NOCHECK = 0x80000000
Global Const $TPM_LEFTBUTTON = 0x0
Global Const $TPM_LEFTALIGN = 0x0
Global Const $TPM_TOPALIGN = 0x0
Global Const $TPM_HORIZONTAL = 0x0
Global Const $TPM_RECURSE = 0x00000001
Global Const $TPM_RIGHTBUTTON = 0x00000002
Global Const $TPM_CENTERALIGN = 0x00000004
Global Const $TPM_RIGHTALIGN = 0x00000008
Global Const $TPM_VCENTERALIGN = 0x00000010
Global Const $TPM_BOTTOMALIGN = 0x00000020
Global Const $TPM_VERTICAL = 0x00000040
Global Const $TPM_NONOTIFY = 0x00000080
Global Const $TPM_RETURNCMD = 0x00000100
Global Const $TPM_HORPOSANIMATION = 0x00000400
Global Const $TPM_HORNEGANIMATION = 0x00000800
Global Const $TPM_VERPOSANIMATION = 0x00001000
Global Const $TPM_VERNEGANIMATION = 0x00002000
Global Const $TPM_NOANIMATION = 0x00004000
Global Const $TPM_LAYOUTRTL = 0x00008000
Global Const $TPM_WORKAREA = 0x00010000
Global Const $SC_SIZE = 0xF000
Global Const $SC_MOVE = 0xF010
Global Const $SC_MINIMIZE = 0xF020
Global Const $SC_MAXIMIZE = 0xF030
Global Const $SC_NEXTWINDOW = 0xF040
Global Const $SC_PREVWINDOW = 0xF050
Global Const $SC_CLOSE = 0xF060
Global Const $SC_VSCROLL = 0xF070
Global Const $SC_HSCROLL = 0xF080
Global Const $SC_MOUSEMENU = 0xF090
Global Const $SC_KEYMENU = 0xF100
Global Const $SC_ARRANGE = 0xF110
Global Const $SC_RESTORE = 0xF120
Global Const $SC_TASKLIST = 0xF130
Global Const $SC_SCREENSAVE = 0xF140
Global Const $SC_HOTKEY = 0xF150
Global Const $SC_DEFAULT = 0xF160
Global Const $SC_MONITORPOWER = 0xF170
Global Const $SC_CONTEXTHELP = 0xF180
Global Const $SC_SEPARATOR = 0xF00F
Global Const $OBJID_SYSMENU = 0xFFFFFFFF
Global Const $OBJID_MENU = 0xFFFFFFFD
Global Const $__MENUCONSTANT_OBJID_CLIENT = 0xFFFFFFFC
Global Const $tagMENUBARINFO = "dword Size;" & $tagRECT & ";handle hMenu;handle hWndMenu;bool Focused"
Global Const $tagMDINEXTMENU = "handle hMenuIn;handle hMenuNext;hwnd hWndNext"
Global Const $tagMENUGETOBJECTINFO = "dword Flags;uint Pos;handle hMenu;ptr RIID;ptr Obj"
Global Const $tagTPMPARAMS = "uint Size;" & $tagRECT
Func _GUICtrlMenu_AddMenuItem($hMenu, $sText, $iCmdID = 0, $hSubMenu = 0)
Local $iIndex = _GUICtrlMenu_GetItemCount($hMenu)
Local $tMenu = DllStructCreate($tagMENUITEMINFO)
DllStructSetData($tMenu, "Size", DllStructGetSize($tMenu))
DllStructSetData($tMenu, "ID", $iCmdID)
DllStructSetData($tMenu, "SubMenu", $hSubMenu)
If $sText = "" Then
DllStructSetData($tMenu, "Mask", $MIIM_FTYPE)
DllStructSetData($tMenu, "Type", $MFT_SEPARATOR)
Else
DllStructSetData($tMenu, "Mask", BitOR($MIIM_ID, $MIIM_STRING, $MIIM_SUBMENU))
DllStructSetData($tMenu, "Type", $MFT_STRING)
Local $tText = DllStructCreate("wchar Text[" & StringLen($sText) + 1 & "]")
DllStructSetData($tText, "Text", $sText)
DllStructSetData($tMenu, "TypeData", DllStructGetPtr($tText))
EndIf
Local $aCall = DllCall("user32.dll", "bool", "InsertMenuItemW", "handle", $hMenu, "uint", $iIndex, "bool", True, "struct*", $tMenu)
If @error Then Return SetError(@error, @extended, -1)
Return SetExtended($aCall[0], $iIndex)
EndFunc
Func _GUICtrlMenu_AppendMenu($hMenu, $iFlags, $iNewItem, $vNewItem)
Local $sType = "wstr"
If BitAND($iFlags, $MF_BITMAP) Then $sType = "handle"
If BitAND($iFlags, $MF_OWNERDRAW) Then $sType = "ulong_ptr"
Local $aCall = DllCall("user32.dll", "bool", "AppendMenuW", "handle", $hMenu, "uint", $iFlags, "uint_ptr", $iNewItem, $sType, $vNewItem)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, False)
_GUICtrlMenu_DrawMenuBar(_GUICtrlMenu_FindParent($hMenu))
Return True
EndFunc
Func _GUICtrlMenu_CalculatePopupWindowPosition($iX, $iY, $iWidth, $iHeight, $iFlags = 0, $tExclude = 0)
Local $tAnchor = DllStructCreate($tagPOINT)
DllStructSetData($tAnchor, 1, $iX)
DllStructSetData($tAnchor, 2, $iY)
Local $tSIZE = DllStructCreate($tagSIZE)
DllStructSetData($tSIZE, 1, $iWidth)
DllStructSetData($tSIZE, 2, $iHeight)
Local $tPos = DllStructCreate($tagRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'CalculatePopupWindowPosition', 'struct*', $tAnchor, 'struct*', $tSIZE,  'uint', $iFlags, 'struct*', $tExclude, 'struct*', $tPos)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tPos
EndFunc
Func _GUICtrlMenu_CheckMenuItem($hMenu, $iItem, $bCheck = True, $bByPos = True)
Local $iByPos = 0
If $bCheck Then $iByPos = BitOR($iByPos, $MF_CHECKED)
If $bByPos Then $iByPos = BitOR($iByPos, $MF_BYPOSITION)
Local $aCall = DllCall("user32.dll", "dword", "CheckMenuItem", "handle", $hMenu, "uint", $iItem, "uint", $iByPos)
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_CheckRadioItem($hMenu, $iFirst, $iLast, $iCheck, $bByPos = True)
Local $iByPos = 0
If $bByPos Then $iByPos = $MF_BYPOSITION
Local $aCall = DllCall("user32.dll", "bool", "CheckMenuRadioItem", "handle", $hMenu, "uint", $iFirst, "uint", $iLast, "uint", $iCheck, "uint", $iByPos)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_CreateMenu($iStyle = $MNS_CHECKORBMP)
Local $aCall = DllCall("user32.dll", "handle", "CreateMenu")
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
_GUICtrlMenu_SetMenuStyle($aCall[0], $iStyle)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_CreatePopup($iStyle = $MNS_CHECKORBMP)
Local $aCall = DllCall("user32.dll", "handle", "CreatePopupMenu")
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
_GUICtrlMenu_SetMenuStyle($aCall[0], $iStyle)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_DeleteMenu($hMenu, $iItem, $bByPos = True)
Local $iByPos = 0
If $bByPos Then $iByPos = $MF_BYPOSITION
Local $aCall = DllCall("user32.dll", "bool", "DeleteMenu", "handle", $hMenu, "uint", $iItem, "uint", $iByPos)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, False)
_GUICtrlMenu_DrawMenuBar(_GUICtrlMenu_FindParent($hMenu))
Return True
EndFunc
Func _GUICtrlMenu_DestroyMenu($hMenu)
Local $aCall = DllCall("user32.dll", "bool", "DestroyMenu", "handle", $hMenu)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_DrawMenuBar($hWnd)
Local $aCall = DllCall("user32.dll", "bool", "DrawMenuBar", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_EnableMenuItem($hMenu, $iItem, $iState = 0, $bByPos = True)
Local $iByPos = $iState
If $bByPos Then $iByPos = BitOR($iByPos, $MF_BYPOSITION)
Local $aCall = DllCall("user32.dll", "bool", "EnableMenuItem", "handle", $hMenu, "uint", $iItem, "uint", $iByPos)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, False)
_GUICtrlMenu_DrawMenuBar(_GUICtrlMenu_FindParent($hMenu))
Return True
EndFunc
Func _GUICtrlMenu_EndMenu()
Local $aCall = DllCall("user32.dll", "bool", "EndMenu")
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_FindItem($hMenu, $sText, $bInStr = False, $iStart = 0)
Local $sMenu
For $iI = $iStart To _GUICtrlMenu_GetItemCount($hMenu)
$sMenu = StringReplace(_GUICtrlMenu_GetItemText($hMenu, $iI), "&", "")
Switch $bInStr
Case False
If $sMenu = $sText Then Return $iI
Case True
If StringInStr($sMenu, $sText) Then Return $iI
EndSwitch
Next
Return -1
EndFunc
Func _GUICtrlMenu_FindParent($hMenu)
Local $hList = _WinAPI_EnumWindowsTop()
For $iI = 1 To $hList[0][0]
If _GUICtrlMenu_GetMenu($hList[$iI][0]) = $hMenu Then Return $hList[$iI][0]
Next
EndFunc
Func _GUICtrlMenu_GetItemBmp($hMenu, $iItem, $bByPos = True)
Local $tInfo = _GUICtrlMenu_GetItemInfo($hMenu, $iItem, $bByPos)
Return DllStructGetData($tInfo, "BmpItem")
EndFunc
Func _GUICtrlMenu_GetItemBmpChecked($hMenu, $iItem, $bByPos = True)
Local $tInfo = _GUICtrlMenu_GetItemInfo($hMenu, $iItem, $bByPos)
Return DllStructGetData($tInfo, "BmpChecked")
EndFunc
Func _GUICtrlMenu_GetItemBmpUnchecked($hMenu, $iItem, $bByPos = True)
Local $tInfo = _GUICtrlMenu_GetItemInfo($hMenu, $iItem, $bByPos)
Return DllStructGetData($tInfo, "BmpUnchecked")
EndFunc
Func _GUICtrlMenu_GetItemChecked($hMenu, $iItem, $bByPos = True)
Return BitAND(_GUICtrlMenu_GetItemStateEx($hMenu, $iItem, $bByPos), $MF_CHECKED) <> 0
EndFunc
Func _GUICtrlMenu_GetItemCount($hMenu)
Local $aCall = DllCall("user32.dll", "int", "GetMenuItemCount", "handle", $hMenu)
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_GetItemData($hMenu, $iItem, $bByPos = True)
Local $tInfo = _GUICtrlMenu_GetItemInfo($hMenu, $iItem, $bByPos)
Return DllStructGetData($tInfo, "ItemData")
EndFunc
Func _GUICtrlMenu_GetItemDefault($hMenu, $iItem, $bByPos = True)
Return BitAND(_GUICtrlMenu_GetItemStateEx($hMenu, $iItem, $bByPos), $MF_DEFAULT) <> 0
EndFunc
Func _GUICtrlMenu_GetItemDisabled($hMenu, $iItem, $bByPos = True)
Return BitAND(_GUICtrlMenu_GetItemStateEx($hMenu, $iItem, $bByPos), $MF_DISABLED) <> 0
EndFunc
Func _GUICtrlMenu_GetItemEnabled($hMenu, $iItem, $bByPos = True)
Return BitAND(_GUICtrlMenu_GetItemStateEx($hMenu, $iItem, $bByPos), $MF_DISABLED) = 0
EndFunc
Func _GUICtrlMenu_GetItemGrayed($hMenu, $iItem, $bByPos = True)
Return BitAND(_GUICtrlMenu_GetItemStateEx($hMenu, $iItem, $bByPos), $MF_GRAYED) <> 0
EndFunc
Func _GUICtrlMenu_GetItemHighlighted($hMenu, $iItem, $bByPos = True)
Return BitAND(_GUICtrlMenu_GetItemStateEx($hMenu, $iItem, $bByPos), $MF_HILITE) <> 0
EndFunc
Func _GUICtrlMenu_GetItemID($hMenu, $iItem, $bByPos = True)
Local $tInfo = _GUICtrlMenu_GetItemInfo($hMenu, $iItem, $bByPos)
Return DllStructGetData($tInfo, "ID")
EndFunc
Func _GUICtrlMenu_GetItemInfo($hMenu, $iItem, $bByPos = True)
Local $tInfo = DllStructCreate($tagMENUITEMINFO)
DllStructSetData($tInfo, "Size", DllStructGetSize($tInfo))
DllStructSetData($tInfo, "Mask", $MIIM_DATAMASK)
Local $aCall = DllCall("user32.dll", "bool", "GetMenuItemInfo", "handle", $hMenu, "uint", $iItem, "bool", $bByPos, "struct*", $tInfo)
If @error Then Return SetError(@error, @extended, 0)
Return SetExtended($aCall[0], $tInfo)
EndFunc
Func _GUICtrlMenu_GetItemRect($hWnd, $hMenu, $iItem)
Local $tRECT = _GUICtrlMenu_GetItemRectEx($hWnd, $hMenu, $iItem)
Local $aRect[4]
$aRect[0] = DllStructGetData($tRECT, "Left")
$aRect[1] = DllStructGetData($tRECT, "Top")
$aRect[2] = DllStructGetData($tRECT, "Right")
$aRect[3] = DllStructGetData($tRECT, "Bottom")
Return $aRect
EndFunc
Func _GUICtrlMenu_GetItemRectEx($hWnd, $hMenu, $iItem)
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall("user32.dll", "bool", "GetMenuItemRect", "hwnd", $hWnd, "handle", $hMenu, "uint", $iItem, "struct*", $tRECT)
If @error Then Return SetError(@error, @extended, 0)
Return SetExtended($aCall[0], $tRECT)
EndFunc
Func _GUICtrlMenu_GetItemState($hMenu, $iItem, $bByPos = True)
Local $iRet = 0
Local $iState = _GUICtrlMenu_GetItemStateEx($hMenu, $iItem, $bByPos)
If BitAND($iState, $MFS_CHECKED) <> 0 Then $iRet = BitOR($iRet, 1)
If BitAND($iState, $MFS_DEFAULT) <> 0 Then $iRet = BitOR($iRet, 2)
If BitAND($iState, $MFS_DISABLED) <> 0 Then $iRet = BitOR($iRet, 4)
If BitAND($iState, $MFS_GRAYED) <> 0 Then $iRet = BitOR($iRet, 8)
If BitAND($iState, $MFS_HILITE) <> 0 Then $iRet = BitOR($iRet, 16)
Return $iRet
EndFunc
Func _GUICtrlMenu_GetItemStateEx($hMenu, $iItem, $bByPos = True)
Local $tInfo = _GUICtrlMenu_GetItemInfo($hMenu, $iItem, $bByPos)
Return DllStructGetData($tInfo, "State")
EndFunc
Func _GUICtrlMenu_GetItemSubMenu($hMenu, $iItem)
Local $aCall = DllCall("user32.dll", "handle", "GetSubMenu", "handle", $hMenu, "int", $iItem)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_GetItemText($hMenu, $iItem, $bByPos = True)
Local $iByPos = 0
If $bByPos Then $iByPos = $MF_BYPOSITION
Local $aCall = DllCall("user32.dll", "int", "GetMenuStringW", "handle", $hMenu, "uint", $iItem, "wstr", "", "int", 4096, "uint", $iByPos)
If @error Then Return SetError(@error, @extended, 0)
Return SetExtended($aCall[0], $aCall[3])
EndFunc
Func _GUICtrlMenu_GetItemType($hMenu, $iItem, $bByPos = True)
Local $tInfo = _GUICtrlMenu_GetItemInfo($hMenu, $iItem, $bByPos)
Return DllStructGetData($tInfo, "Type")
EndFunc
Func _GUICtrlMenu_GetMenu($hWnd)
Local $aCall = DllCall("user32.dll", "handle", "GetMenu", "hwnd", $hWnd)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_GetMenuBackground($hMenu)
Local $tInfo = _GUICtrlMenu_GetMenuInfo($hMenu)
Return DllStructGetData($tInfo, "hBack")
EndFunc
Func _GUICtrlMenu_GetMenuBarInfo($hWnd, $iItem = 0, $iObject = 1)
Local $aObject[3] = [$__MENUCONSTANT_OBJID_CLIENT, $OBJID_MENU, $OBJID_SYSMENU]
Local $tInfo = DllStructCreate($tagMENUBARINFO)
DllStructSetData($tInfo, "Size", DllStructGetSize($tInfo))
Local $aCall = DllCall("user32.dll", "bool", "GetMenuBarInfo", "hwnd", $hWnd, "long", $aObject[$iObject], "long", $iItem, "struct*", $tInfo)
If @error Then Return SetError(@error, @extended, 0)
Local $aInfo[8]
$aInfo[0] = DllStructGetData($tInfo, "Left")
$aInfo[1] = DllStructGetData($tInfo, "Top")
$aInfo[2] = DllStructGetData($tInfo, "Right")
$aInfo[3] = DllStructGetData($tInfo, "Bottom")
$aInfo[4] = DllStructGetData($tInfo, "hMenu")
$aInfo[5] = DllStructGetData($tInfo, "hWndMenu")
$aInfo[6] = BitAND(DllStructGetData($tInfo, "Focused"), 1) <> 0
$aInfo[7] = BitAND(DllStructGetData($tInfo, "Focused"), 2) <> 0
Return SetExtended($aCall[0], $aInfo)
EndFunc
Func _GUICtrlMenu_GetMenuContextHelpID($hMenu)
Local $tInfo = _GUICtrlMenu_GetMenuInfo($hMenu)
Return DllStructGetData($tInfo, "ContextHelpID")
EndFunc
Func _GUICtrlMenu_GetMenuData($hMenu)
Local $tInfo = _GUICtrlMenu_GetMenuInfo($hMenu)
Return DllStructGetData($tInfo, "MenuData")
EndFunc
Func _GUICtrlMenu_GetMenuDefaultItem($hMenu, $bByPos = True, $iFlags = 0)
Local $aCall = DllCall("user32.dll", "INT", "GetMenuDefaultItem", "handle", $hMenu, "uint", $bByPos, "uint", $iFlags)
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_GetMenuHeight($hMenu)
Local $tInfo = _GUICtrlMenu_GetMenuInfo($hMenu)
Return DllStructGetData($tInfo, "YMax")
EndFunc
Func _GUICtrlMenu_GetMenuInfo($hMenu)
Local $tInfo = DllStructCreate($tagMENUINFO)
DllStructSetData($tInfo, "Size", DllStructGetSize($tInfo))
DllStructSetData($tInfo, "Mask", BitOR($MIM_BACKGROUND, $MIM_HELPID, $MIM_MAXHEIGHT, $MIM_MENUDATA, $MIM_STYLE))
Local $aCall = DllCall("user32.dll", "bool", "GetMenuInfo", "handle", $hMenu, "struct*", $tInfo)
If @error Then Return SetError(@error, @extended, 0)
Return SetExtended($aCall[0], $tInfo)
EndFunc
Func _GUICtrlMenu_GetMenuStyle($hMenu)
Local $tInfo = _GUICtrlMenu_GetMenuInfo($hMenu)
Return DllStructGetData($tInfo, "Style")
EndFunc
Func _GUICtrlMenu_GetSystemMenu($hWnd, $bRevert = False)
Local $aCall = DllCall("user32.dll", "hwnd", "GetSystemMenu", "hwnd", $hWnd, "int", $bRevert)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_InsertMenuItem($hMenu, $iIndex, $sText, $iCmdID = 0, $hSubMenu = 0)
Local $tMenu = DllStructCreate($tagMENUITEMINFO)
DllStructSetData($tMenu, "Size", DllStructGetSize($tMenu))
DllStructSetData($tMenu, "ID", $iCmdID)
DllStructSetData($tMenu, "SubMenu", $hSubMenu)
If $sText = "" Then
DllStructSetData($tMenu, "Mask", $MIIM_FTYPE)
DllStructSetData($tMenu, "Type", $MFT_SEPARATOR)
Else
DllStructSetData($tMenu, "Mask", BitOR($MIIM_ID, $MIIM_STRING, $MIIM_SUBMENU))
DllStructSetData($tMenu, "Type", $MFT_STRING)
Local $tText = DllStructCreate("wchar Text[" & StringLen($sText) + 1 & "]")
DllStructSetData($tText, "Text", $sText)
DllStructSetData($tMenu, "TypeData", DllStructGetPtr($tText))
EndIf
Local $aCall = DllCall("user32.dll", "bool", "InsertMenuItemW", "handle", $hMenu, "uint", $iIndex, "bool", True, "struct*", $tMenu)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_InsertMenuItemEx($hMenu, $iIndex, ByRef $tMenu, $bByPos = True)
Local $aCall = DllCall("user32.dll", "bool", "InsertMenuItemW", "handle", $hMenu, "uint", $iIndex, "bool", $bByPos, "struct*", $tMenu)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_IsMenu($hMenu)
Local $aCall = DllCall("user32.dll", "bool", "IsMenu", "handle", $hMenu)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_LoadMenu($hInst, $sMenuName)
Local $aCall = DllCall("user32.dll", "handle", "LoadMenuW", "handle", $hInst, "wstr", $sMenuName)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_MapAccelerator($hMenu, $sAccelKey)
Local $sText
Local $iCount = _GUICtrlMenu_GetItemCount($hMenu)
For $iI = 0 To $iCount - 1
$sText = _GUICtrlMenu_GetItemText($hMenu, $iI)
If StringInStr($sText, "&" & $sAccelKey) > 0 Then Return $iI
Next
Return -1
EndFunc
Func _GUICtrlMenu_MenuItemFromPoint($hWnd, $hMenu, $iX = -1, $iY = -1)
If $iX = -1 Then $iX = _WinAPI_GetMousePosX()
If $iY = -1 Then $iY = _WinAPI_GetMousePosY()
Local $aCall = DllCall("user32.dll", "int", "MenuItemFromPoint", "hwnd", $hWnd, "handle", $hMenu, "int", $iX, "int", $iY)
If @error Then Return SetError(@error, @extended, -1)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_RemoveMenu($hMenu, $iItem, $bByPos = True)
Local $iByPos = 0
If $bByPos Then $iByPos = $MF_BYPOSITION
Local $aCall = DllCall("user32.dll", "bool", "RemoveMenu", "handle", $hMenu, "uint", $iItem, "uint", $iByPos)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, False)
_GUICtrlMenu_DrawMenuBar(_GUICtrlMenu_FindParent($hMenu))
Return True
EndFunc
Func _GUICtrlMenu_SetItemBitmaps($hMenu, $iItem, $hChecked, $hUnChecked, $bByPos = True)
Local $iByPos = 0
If $bByPos Then $iByPos = $MF_BYPOSITION
Local $aCall = DllCall("user32.dll", "bool", "SetMenuItemBitmaps", "handle", $hMenu, "uint", $iItem, "uint", $iByPos, "handle", $hUnChecked, "handle", $hChecked)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_SetItemBmp($hMenu, $iItem, $hBitmap, $bByPos = True)
Local $tInfo = DllStructCreate($tagMENUITEMINFO)
DllStructSetData($tInfo, "Size", DllStructGetSize($tInfo))
DllStructSetData($tInfo, "Mask", $MIIM_BITMAP)
DllStructSetData($tInfo, "BmpItem", $hBitmap)
Return _GUICtrlMenu_SetItemInfo($hMenu, $iItem, $tInfo, $bByPos)
EndFunc
Func _GUICtrlMenu_SetItemBmpChecked($hMenu, $iItem, $hBitmap, $bByPos = True)
Local $tInfo = _GUICtrlMenu_GetItemInfo($hMenu, $iItem, $bByPos)
DllStructSetData($tInfo, "Mask", $MIIM_CHECKMARKS)
DllStructSetData($tInfo, "BmpChecked", $hBitmap)
Return _GUICtrlMenu_SetItemInfo($hMenu, $iItem, $tInfo, $bByPos)
EndFunc
Func _GUICtrlMenu_SetItemBmpUnchecked($hMenu, $iItem, $hBitmap, $bByPos = True)
Local $tInfo = _GUICtrlMenu_GetItemInfo($hMenu, $iItem, $bByPos)
DllStructSetData($tInfo, "Mask", $MIIM_CHECKMARKS)
DllStructSetData($tInfo, "BmpUnchecked", $hBitmap)
Return _GUICtrlMenu_SetItemInfo($hMenu, $iItem, $tInfo, $bByPos)
EndFunc
Func _GUICtrlMenu_SetItemChecked($hMenu, $iItem, $bState = True, $bByPos = True)
Return _GUICtrlMenu_SetItemState($hMenu, $iItem, $MFS_CHECKED, $bState, $bByPos)
EndFunc
Func _GUICtrlMenu_SetItemData($hMenu, $iItem, $iData, $bByPos = True)
Local $tInfo = DllStructCreate($tagMENUITEMINFO)
DllStructSetData($tInfo, "Size", DllStructGetSize($tInfo))
DllStructSetData($tInfo, "Mask", $MIIM_DATA)
DllStructSetData($tInfo, "ItemData", $iData)
Return _GUICtrlMenu_SetItemInfo($hMenu, $iItem, $tInfo, $bByPos)
EndFunc
Func _GUICtrlMenu_SetItemDefault($hMenu, $iItem, $bState = True, $bByPos = True)
Return _GUICtrlMenu_SetItemState($hMenu, $iItem, $MFS_DEFAULT, $bState, $bByPos)
EndFunc
Func _GUICtrlMenu_SetItemDisabled($hMenu, $iItem, $bState = True, $bByPos = True)
Return _GUICtrlMenu_SetItemState($hMenu, $iItem, BitOR($MFS_DISABLED, $MFS_GRAYED), $bState, $bByPos)
EndFunc
Func _GUICtrlMenu_SetItemEnabled($hMenu, $iItem, $bState = True, $bByPos = True)
Return _GUICtrlMenu_SetItemState($hMenu, $iItem, BitOR($MFS_DISABLED, $MFS_GRAYED), Not $bState, $bByPos)
EndFunc
Func _GUICtrlMenu_SetItemGrayed($hMenu, $iItem, $bState = True, $bByPos = True)
Return _GUICtrlMenu_SetItemState($hMenu, $iItem, $MFS_GRAYED, $bState, $bByPos)
EndFunc
Func _GUICtrlMenu_SetItemHighlighted($hMenu, $iItem, $bState = True, $bByPos = True)
Return _GUICtrlMenu_SetItemState($hMenu, $iItem, $MFS_HILITE, $bState, $bByPos)
EndFunc
Func _GUICtrlMenu_SetItemID($hMenu, $iItem, $iID, $bByPos = True)
Local $tInfo = DllStructCreate($tagMENUITEMINFO)
DllStructSetData($tInfo, "Size", DllStructGetSize($tInfo))
DllStructSetData($tInfo, "Mask", $MIIM_ID)
DllStructSetData($tInfo, "ID", $iID)
Return _GUICtrlMenu_SetItemInfo($hMenu, $iItem, $tInfo, $bByPos)
EndFunc
Func _GUICtrlMenu_SetItemInfo($hMenu, $iItem, ByRef $tInfo, $bByPos = True)
DllStructSetData($tInfo, "Size", DllStructGetSize($tInfo))
Local $aCall = DllCall("user32.dll", "bool", "SetMenuItemInfoW", "handle", $hMenu, "uint", $iItem, "bool", $bByPos, "struct*", $tInfo)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_SetItemState($hMenu, $iItem, $iState, $bState = True, $bByPos = True)
Local $iFlag = _GUICtrlMenu_GetItemStateEx($hMenu, $iItem, $bByPos)
If $bState Then
$iState = BitOR($iFlag, $iState)
Else
$iState = BitAND($iFlag, BitNOT($iState))
EndIf
Local $tInfo = DllStructCreate($tagMENUITEMINFO)
DllStructSetData($tInfo, "Size", DllStructGetSize($tInfo))
DllStructSetData($tInfo, "Mask", $MIIM_STATE)
DllStructSetData($tInfo, "State", $iState)
Return _GUICtrlMenu_SetItemInfo($hMenu, $iItem, $tInfo, $bByPos)
EndFunc
Func _GUICtrlMenu_SetItemSubMenu($hMenu, $iItem, $hSubMenu, $bByPos = True)
Local $tInfo = DllStructCreate($tagMENUITEMINFO)
DllStructSetData($tInfo, "Size", DllStructGetSize($tInfo))
DllStructSetData($tInfo, "Mask", $MIIM_SUBMENU)
DllStructSetData($tInfo, "SubMenu", $hSubMenu)
Return _GUICtrlMenu_SetItemInfo($hMenu, $iItem, $tInfo, $bByPos)
EndFunc
Func _GUICtrlMenu_SetItemText($hMenu, $iItem, $sText, $bByPos = True)
Local $tBuffer = DllStructCreate("wchar Text[" & StringLen($sText) + 1 & "]")
DllStructSetData($tBuffer, "Text", $sText)
Local $tInfo = DllStructCreate($tagMENUITEMINFO)
DllStructSetData($tInfo, "Size", DllStructGetSize($tInfo))
DllStructSetData($tInfo, "Mask", $MIIM_STRING)
DllStructSetData($tInfo, "TypeData", DllStructGetPtr($tBuffer))
Return _GUICtrlMenu_SetItemInfo($hMenu, $iItem, $tInfo, $bByPos)
EndFunc
Func _GUICtrlMenu_SetItemType($hMenu, $iItem, $iType, $bByPos = True)
Local $tInfo = DllStructCreate($tagMENUITEMINFO)
DllStructSetData($tInfo, "Size", DllStructGetSize($tInfo))
DllStructSetData($tInfo, "Mask", $MIIM_FTYPE)
DllStructSetData($tInfo, "Type", $iType)
Return _GUICtrlMenu_SetItemInfo($hMenu, $iItem, $tInfo, $bByPos)
EndFunc
Func _GUICtrlMenu_SetMenu($hWnd, $hMenu)
Local $aCall = DllCall("user32.dll", "bool", "SetMenu", "hwnd", $hWnd, "handle", $hMenu)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_SetMenuBackground($hMenu, $hBrush)
Local $tInfo = DllStructCreate($tagMENUINFO)
DllStructSetData($tInfo, "Mask", $MIM_BACKGROUND)
DllStructSetData($tInfo, "hBack", $hBrush)
Return _GUICtrlMenu_SetMenuInfo($hMenu, $tInfo)
EndFunc
Func _GUICtrlMenu_SetMenuContextHelpID($hMenu, $iHelpID)
Local $tInfo = DllStructCreate($tagMENUINFO)
DllStructSetData($tInfo, "Mask", $MIM_HELPID)
DllStructSetData($tInfo, "ContextHelpID", $iHelpID)
Return _GUICtrlMenu_SetMenuInfo($hMenu, $tInfo)
EndFunc
Func _GUICtrlMenu_SetMenuData($hMenu, $iData)
Local $tInfo = DllStructCreate($tagMENUINFO)
DllStructSetData($tInfo, "Mask", $MIM_MENUDATA)
DllStructSetData($tInfo, "MenuData", $iData)
Return _GUICtrlMenu_SetMenuInfo($hMenu, $tInfo)
EndFunc
Func _GUICtrlMenu_SetMenuDefaultItem($hMenu, $iItem, $bByPos = True)
Local $aCall = DllCall("user32.dll", "bool", "SetMenuDefaultItem", "handle", $hMenu, "uint", $iItem, "uint", $bByPos)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_SetMenuHeight($hMenu, $iHeight)
Local $tInfo = DllStructCreate($tagMENUINFO)
DllStructSetData($tInfo, "Mask", $MIM_MAXHEIGHT)
DllStructSetData($tInfo, "YMax", $iHeight)
Return _GUICtrlMenu_SetMenuInfo($hMenu, $tInfo)
EndFunc
Func _GUICtrlMenu_SetMenuInfo($hMenu, ByRef $tInfo)
DllStructSetData($tInfo, "Size", DllStructGetSize($tInfo))
Local $aCall = DllCall("user32.dll", "bool", "SetMenuInfo", "handle", $hMenu, "struct*", $tInfo)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _GUICtrlMenu_SetMenuStyle($hMenu, $iStyle)
Local $tInfo = DllStructCreate($tagMENUINFO)
DllStructSetData($tInfo, "Mask", $MIM_STYLE)
DllStructSetData($tInfo, "Style", $iStyle)
Return _GUICtrlMenu_SetMenuInfo($hMenu, $tInfo)
EndFunc
Func _GUICtrlMenu_TrackPopupMenu($hMenu, $hWnd, $iX = -1, $iY = -1, $iAlignX = 1, $iAlignY = 1, $iNotify = 0, $iButtons = 0)
If $iX = -1 Then $iX = _WinAPI_GetMousePosX()
If $iY = -1 Then $iY = _WinAPI_GetMousePosY()
Local $iFlags = 0
Switch $iAlignX
Case 1
$iFlags = BitOR($iFlags, $TPM_LEFTALIGN)
Case 2
$iFlags = BitOR($iFlags, $TPM_RIGHTALIGN)
Case Else
$iFlags = BitOR($iFlags, $TPM_CENTERALIGN)
EndSwitch
Switch $iAlignY
Case 1
$iFlags = BitOR($iFlags, $TPM_TOPALIGN)
Case 2
$iFlags = BitOR($iFlags, $TPM_VCENTERALIGN)
Case Else
$iFlags = BitOR($iFlags, $TPM_BOTTOMALIGN)
EndSwitch
If BitAND($iNotify, 1) <> 0 Then $iFlags = BitOR($iFlags, $TPM_NONOTIFY)
If BitAND($iNotify, 2) <> 0 Then $iFlags = BitOR($iFlags, $TPM_RETURNCMD)
Switch $iButtons
Case 1
$iFlags = BitOR($iFlags, $TPM_RIGHTBUTTON)
Case Else
$iFlags = BitOR($iFlags, $TPM_LEFTBUTTON)
EndSwitch
Local $aCall = DllCall("user32.dll", "bool", "TrackPopupMenu", "handle", $hMenu, "uint", $iFlags, "int", $iX, "int", $iY, "int", 0, "hwnd", $hWnd, "ptr", 0)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Global Const $SS_LEFT = 0x0
Global Const $SS_CENTER = 0x1
Global Const $SS_RIGHT = 0x2
Global Const $SS_ICON = 0x3
Global Const $SS_BLACKRECT = 0x4
Global Const $SS_GRAYRECT = 0x5
Global Const $SS_WHITERECT = 0x6
Global Const $SS_BLACKFRAME = 0x7
Global Const $SS_GRAYFRAME = 0x8
Global Const $SS_WHITEFRAME = 0x9
Global Const $SS_SIMPLE = 0xB
Global Const $SS_LEFTNOWORDWRAP = 0xC
Global Const $SS_BITMAP = 0xE
Global Const $SS_ENHMETAFILE = 0xF
Global Const $SS_ETCHEDHORZ = 0x10
Global Const $SS_ETCHEDVERT = 0x11
Global Const $SS_ETCHEDFRAME = 0x12
Global Const $SS_REALSIZECONTROL = 0x40
Global Const $SS_NOPREFIX = 0x0080
Global Const $SS_NOTIFY = 0x0100
Global Const $SS_CENTERIMAGE = 0x0200
Global Const $SS_RIGHTJUST = 0x0400
Global Const $SS_SUNKEN = 0x1000
Global Const $GUI_SS_DEFAULT_LABEL = 0
Global Const $GUI_SS_DEFAULT_GRAPHIC = 0
Global Const $GUI_SS_DEFAULT_ICON = $SS_NOTIFY
Global Const $GUI_SS_DEFAULT_PIC = $SS_NOTIFY
Global Const $STM_SETICON = 0x0170
Global Const $STM_GETICON = 0x0171
Global Const $STM_SETIMAGE = 0x0172
Global Const $STM_GETIMAGE = 0x0173
Global Const $LINGUISTIC_IGNORECASE = 0x00000010
Global Const $LINGUISTIC_IGNOREDIACRITIC = 0x00000020
Global Const $NORM_IGNORECASE = 0x00000001
Global Const $NORM_IGNOREKANATYPE = 0x00010000
Global Const $NORM_IGNORENONSPACE = 0x00000002
Global Const $NORM_IGNORESYMBOLS = 0x00000004
Global Const $NORM_IGNOREWIDTH = 0x00020000
Global Const $NORM_LINGUISTIC_CASING = 0x08000000
Global Const $SORT_DIGITSASNUMBERS = 0x00000008
Global Const $SORT_STRINGSORT = 0x00001000
Global Const $CSTR_LESS_THAN = 1
Global Const $CSTR_EQUAL = 2
Global Const $CSTR_GREATER_THAN = 3
Global Const $MUI_LANGUAGE_ID = 0x0004
Global Const $MUI_LANGUAGE_NAME = 0x0008
Global Const $DATE_AUTOLAYOUT = 0x40
Global Const $DATE_LONGDATE = 0x02
Global Const $DATE_LTRREADING = 0x10
Global Const $DATE_SHORTDATE = 0x01
Global Const $DATE_RTLREADING = 0x20
Global Const $DATE_USE_ALT_CALENDAR = 0x04
Global Const $DATE_YEARMONTH = 0x08
Global Const $GEO_NATION = 1
Global Const $GEO_LATITUDE = 2
Global Const $GEO_LONGITUDE = 3
Global Const $GEO_ISO2 = 4
Global Const $GEO_ISO3 = 5
Global Const $GEO_RFC1766 = 6
Global Const $GEO_LCID = 7
Global Const $GEO_FRIENDLYNAME = 8
Global Const $GEO_OFFICIALNAME = 9
Global Const $GEO_TIMEZONES = 10
Global Const $GEO_OFFICIALLANGUAGES = 11
Global Const $GEO_ISO_UN_NUMBER = 12
Global Const $GEO_PARENT = 13
Global Const $LOCALE_ILANGUAGE = 0x0001
Global Const $LOCALE_SLANGUAGE = 0x0002
Global Const $LOCALE_SENGLANGUAGE = 0x1001
Global Const $LOCALE_SABBREVLANGNAME = 0x0003
Global Const $LOCALE_SNATIVELANGNAME = 0x0004
Global Const $LOCALE_ICOUNTRY = 0x0005
Global Const $LOCALE_SCOUNTRY = 0x0006
Global Const $LOCALE_SENGCOUNTRY = 0x1002
Global Const $LOCALE_SABBREVCTRYNAME = 0x0007
Global Const $LOCALE_SNATIVECTRYNAME = 0x0008
Global Const $LOCALE_IDEFAULTLANGUAGE = 0x0009
Global Const $LOCALE_IDEFAULTCOUNTRY = 0x000A
Global Const $LOCALE_IDEFAULTCODEPAGE = 0x000B
Global Const $LOCALE_IDEFAULTANSICODEPAGE = 0x1004
Global Const $LOCALE_IDEFAULTMACCODEPAGE = 0x1011
Global Const $LOCALE_SLIST = 0x000C
Global Const $LOCALE_IMEASURE = 0x000D
Global Const $LOCALE_SDECIMAL = 0x000E
Global Const $LOCALE_STHOUSAND = 0x000F
Global Const $LOCALE_SGROUPING = 0x0010
Global Const $LOCALE_IDIGITS = 0x0011
Global Const $LOCALE_ILZERO = 0x0012
Global Const $LOCALE_INEGNUMBER = 0x1010
Global Const $LOCALE_SNATIVEDIGITS = 0x0013
Global Const $LOCALE_SCURRENCY = 0x0014
Global Const $LOCALE_SINTLSYMBOL = 0x0015
Global Const $LOCALE_SMONDECIMALSEP = 0x0016
Global Const $LOCALE_SMONTHOUSANDSEP = 0x0017
Global Const $LOCALE_SMONGROUPING = 0x0018
Global Const $LOCALE_ICURRDIGITS = 0x0019
Global Const $LOCALE_IINTLCURRDIGITS = 0x001A
Global Const $LOCALE_ICURRENCY = 0x001B
Global Const $LOCALE_INEGCURR = 0x001C
Global Const $LOCALE_SDATE = 0x001D
Global Const $LOCALE_STIME = 0x001E
Global Const $LOCALE_SSHORTDATE = 0x001F
Global Const $LOCALE_SLONGDATE = 0x0020
Global Const $LOCALE_STIMEFORMAT = 0x1003
Global Const $LOCALE_IDATE = 0x0021
Global Const $LOCALE_ILDATE = 0x0022
Global Const $LOCALE_ITIME = 0x0023
Global Const $LOCALE_ITIMEMARKPOSN = 0x1005
Global Const $LOCALE_ICENTURY = 0x0024
Global Const $LOCALE_ITLZERO = 0x0025
Global Const $LOCALE_IDAYLZERO = 0x0026
Global Const $LOCALE_IMONLZERO = 0x0027
Global Const $LOCALE_S1159 = 0x0028
Global Const $LOCALE_S2359 = 0x0029
Global Const $LOCALE_ICALENDARTYPE = 0x1009
Global Const $LOCALE_IOPTIONALCALENDAR = 0x100B
Global Const $LOCALE_IFIRSTDAYOFWEEK = 0x100C
Global Const $LOCALE_IFIRSTWEEKOFYEAR = 0x100D
Global Const $LOCALE_SDAYNAME1 = 0x002A
Global Const $LOCALE_SDAYNAME2 = 0x002B
Global Const $LOCALE_SDAYNAME3 = 0x002C
Global Const $LOCALE_SDAYNAME4 = 0x002D
Global Const $LOCALE_SDAYNAME5 = 0x002E
Global Const $LOCALE_SDAYNAME6 = 0x002F
Global Const $LOCALE_SDAYNAME7 = 0x0030
Global Const $LOCALE_SABBREVDAYNAME1 = 0x0031
Global Const $LOCALE_SABBREVDAYNAME2 = 0x0032
Global Const $LOCALE_SABBREVDAYNAME3 = 0x0033
Global Const $LOCALE_SABBREVDAYNAME4 = 0x0034
Global Const $LOCALE_SABBREVDAYNAME5 = 0x0035
Global Const $LOCALE_SABBREVDAYNAME6 = 0x0036
Global Const $LOCALE_SABBREVDAYNAME7 = 0x0037
Global Const $LOCALE_SMONTHNAME1 = 0x0038
Global Const $LOCALE_SMONTHNAME2 = 0x0039
Global Const $LOCALE_SMONTHNAME3 = 0x003A
Global Const $LOCALE_SMONTHNAME4 = 0x003B
Global Const $LOCALE_SMONTHNAME5 = 0x003C
Global Const $LOCALE_SMONTHNAME6 = 0x003D
Global Const $LOCALE_SMONTHNAME7 = 0x003E
Global Const $LOCALE_SMONTHNAME8 = 0x003F
Global Const $LOCALE_SMONTHNAME9 = 0x0040
Global Const $LOCALE_SMONTHNAME10 = 0x0041
Global Const $LOCALE_SMONTHNAME11 = 0x0042
Global Const $LOCALE_SMONTHNAME12 = 0x0043
Global Const $LOCALE_SMONTHNAME13 = 0x100E
Global Const $LOCALE_SABBREVMONTHNAME1 = 0x0044
Global Const $LOCALE_SABBREVMONTHNAME2 = 0x0045
Global Const $LOCALE_SABBREVMONTHNAME3 = 0x0046
Global Const $LOCALE_SABBREVMONTHNAME4 = 0x0047
Global Const $LOCALE_SABBREVMONTHNAME5 = 0x0048
Global Const $LOCALE_SABBREVMONTHNAME6 = 0x0049
Global Const $LOCALE_SABBREVMONTHNAME7 = 0x004A
Global Const $LOCALE_SABBREVMONTHNAME8 = 0x004B
Global Const $LOCALE_SABBREVMONTHNAME9 = 0x004C
Global Const $LOCALE_SABBREVMONTHNAME10 = 0x004D
Global Const $LOCALE_SABBREVMONTHNAME11 = 0x004E
Global Const $LOCALE_SABBREVMONTHNAME12 = 0x004F
Global Const $LOCALE_SABBREVMONTHNAME13 = 0x100F
Global Const $LOCALE_SPOSITIVESIGN = 0x0050
Global Const $LOCALE_SNEGATIVESIGN = 0x0051
Global Const $LOCALE_IPOSSIGNPOSN = 0x0052
Global Const $LOCALE_INEGSIGNPOSN = 0x0053
Global Const $LOCALE_IPOSSYMPRECEDES = 0x0054
Global Const $LOCALE_IPOSSEPBYSPACE = 0x0055
Global Const $LOCALE_INEGSYMPRECEDES = 0x0056
Global Const $LOCALE_INEGSEPBYSPACE = 0x0057
Global Const $LOCALE_FONTSIGNATURE = 0x0058
Global Const $LOCALE_SISO639LANGNAME = 0x0059
Global Const $LOCALE_SISO3166CTRYNAME = 0x005A
Global Const $LOCALE_IDEFAULTEBCDICCODEPAGE = 0x1012
Global Const $LOCALE_IPAPERSIZE = 0x100A
Global Const $LOCALE_SENGCURRNAME = 0x1007
Global Const $LOCALE_SNATIVECURRNAME = 0x1008
Global Const $LOCALE_SYEARMONTH = 0x1006
Global Const $LOCALE_SSORTNAME = 0x1013
Global Const $LOCALE_IDIGITSUBSTITUTION = 0x1014
Global Const $LOCALE_CUSTOM_DEFAULT = 0x0C00
Global Const $LOCALE_CUSTOM_UI_DEFAULT = 0x1400
Global Const $LOCALE_CUSTOM_UNSPECIFIED = 0x1000
Global Const $LOCALE_INVARIANT = 0x007F
Global Const $LOCALE_SYSTEM_DEFAULT = 0x0800
Global Const $LOCALE_USER_DEFAULT = 0x0400
Global Const $TIME_FORCE24HOURFORMAT = 0x08
Global Const $TIME_NOMINUTESORSECONDS = 0x01
Global Const $TIME_NOSECONDS = 0x02
Global Const $TIME_NOTIMEMARKER = 0x04
Global Const $LCID_INSTALLED = 1
Global Const $LCID_SUPPORTED = 2
Global $__g_vVal
Global Const $tagVS_FIXEDFILEINFO = 'dword Signature;dword StrucVersion;dword FileVersionMS;dword FileVersionLS;dword ProductVersionMS;dword ProductVersionLS;dword FileFlagsMask;dword FileFlags;dword FileOS;dword FileType;dword FileSubtype;dword FileDateMS;dword FileDateLS'
Func _WinAPI_BeginUpdateResource($sFilePath, $bDelete = False)
Local $aCall = DllCall('kernel32.dll', 'handle', 'BeginUpdateResourceW', 'wstr', $sFilePath, 'bool', $bDelete)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_ClipCursor($tRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'ClipCursor', 'struct*', $tRECT)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_CopyCursor($hCursor)
Return _WinAPI_CopyIcon($hCursor)
EndFunc
Func _WinAPI_CreateCaret($hWnd, $hBitmap, $iWidth = 0, $iHeight = 0)
Local $aCall = DllCall('user32.dll', 'bool', 'CreateCaret', 'hwnd', $hWnd, 'handle', $hBitmap, 'int', $iWidth, 'int', $iHeight)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_DestroyCaret()
Local $aCall = DllCall('user32.dll', 'bool', 'DestroyCaret')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_DestroyCursor($hCursor)
Local $aCall = DllCall('user32.dll', 'bool', 'DestroyCursor', 'handle', $hCursor)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_EndUpdateResource($hUpdate, $bDiscard = False)
Local $aCall = DllCall('kernel32.dll', 'bool', 'EndUpdateResourceW', 'handle', $hUpdate, 'bool', $bDiscard)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_EnumResourceLanguages($hModule, $sType, $sName)
Local $iLibrary = 0, $sTypeOfType = 'int', $sTypeOfName = 'int'
If IsString($hModule) Then
If StringStripWS($hModule, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$hModule = _WinAPI_LoadLibraryEx($hModule, BitOR($DONT_RESOLVE_DLL_REFERENCES, $LOAD_LIBRARY_AS_DATAFILE))
If Not $hModule Then Return SetError(1, 0, 0)
$iLibrary = 1
Else
$hModule = 0
EndIf
EndIf
If IsString($sType) Then
$sTypeOfType = 'wstr'
EndIf
If IsString($sName) Then
$sTypeOfName = 'wstr'
EndIf
Dim $__g_vEnum[101] = [0]
Local $hEnumProc = DllCallbackRegister('__EnumResLanguagesProc', 'bool', 'handle;ptr;ptr;word;long_ptr')
Local $aCall = DllCall('kernel32.dll', 'bool', 'EnumResourceLanguagesW', 'handle', $hModule, $sTypeOfType, $sType,  $sTypeOfName, $sName, 'ptr', DllCallbackGetPtr($hEnumProc), 'long_ptr', 0)
If @error Or Not $aCall[0] Or Not $__g_vEnum[0] Then
$__g_vEnum = @error + 10
EndIf
If $iLibrary Then
_WinAPI_FreeLibrary($hModule)
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_EnumResourceNames($hModule, $sType)
Local $aCall, $hEnumProc, $iLibrary = 0, $sTypeOfType = 'int'
If IsString($hModule) Then
If StringStripWS($hModule, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$hModule = _WinAPI_LoadLibraryEx($hModule, BitOR($DONT_RESOLVE_DLL_REFERENCES, $LOAD_LIBRARY_AS_DATAFILE))
If Not $hModule Then Return SetError(1, 0, 0)
$iLibrary = 1
Else
$hModule = 0
EndIf
EndIf
If IsString($sType) Then
$sTypeOfType = 'wstr'
EndIf
Dim $__g_vEnum[101] = [0]
$hEnumProc = DllCallbackRegister('__EnumResNamesProc', 'bool', 'handle;ptr;ptr;long_ptr')
$aCall = DllCall('kernel32.dll', 'bool', 'EnumResourceNamesW', 'handle', $hModule, $sTypeOfType, $sType,  'ptr', DllCallbackGetPtr($hEnumProc), 'long_ptr', 0)
If @error Or Not $aCall[0] Or (Not $__g_vEnum[0]) Then
$__g_vEnum = @error + 10
EndIf
If $iLibrary Then
_WinAPI_FreeLibrary($hModule)
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_EnumResourceTypes($hModule)
Local $iLibrary = 0
If IsString($hModule) Then
If StringStripWS($hModule, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$hModule = _WinAPI_LoadLibraryEx($hModule, BitOR($DONT_RESOLVE_DLL_REFERENCES, $LOAD_LIBRARY_AS_DATAFILE))
If Not $hModule Then Return SetError(1, 0, 0)
$iLibrary = 1
Else
$hModule = 0
EndIf
EndIf
Dim $__g_vEnum[101] = [0]
Local $hEnumProc = DllCallbackRegister('__EnumResTypesProc', 'bool', 'handle;ptr;long_ptr')
Local $aCall = DllCall('kernel32.dll', 'bool', 'EnumResourceTypesW', 'handle', $hModule,  'ptr', DllCallbackGetPtr($hEnumProc), 'long_ptr', 0)
If @error Or Not $aCall[0] Or (Not $__g_vEnum[0]) Then
$__g_vEnum = @error + 10
EndIf
If $iLibrary Then
_WinAPI_FreeLibrary($hModule)
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func _WinAPI_FindResource($hInstance, $sType, $sName)
Local $sTypeOfType = 'int', $sTypeOfName = 'int'
If IsString($sType) Then
$sTypeOfType = 'wstr'
EndIf
If IsString($sName) Then
$sTypeOfName = 'wstr'
EndIf
Local $aCall = DllCall('kernel32.dll', 'handle', 'FindResourceW', 'handle', $hInstance, $sTypeOfName, $sName, $sTypeOfType, $sType)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_FindResourceEx($hInstance, $sType, $sName, $iLanguage)
Local $sTypeOfType = 'int', $sTypeOfName = 'int'
If IsString($sType) Then
$sTypeOfType = 'wstr'
EndIf
If IsString($sName) Then
$sTypeOfName = 'wstr'
EndIf
Local $aCall = DllCall('kernel32.dll', 'handle', 'FindResourceExW', 'handle', $hInstance, $sTypeOfType, $sType,  $sTypeOfName, $sName, 'ushort', $iLanguage)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_FreeResource($hData)
Local $aCall = DllCall('kernel32.dll', 'bool', 'FreeResource', 'handle', $hData)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_GetCaretBlinkTime()
Local $aCall = DllCall('user32.dll', 'uint', 'GetCaretBlinkTime')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetCaretPos()
Local $tPOINT = DllStructCreate($tagPOINT)
Local $aCall = DllCall('user32.dll', 'bool', 'GetCaretPos', 'struct*', $tPOINT)
If @error Then Return SetError(@error, @extended, 0)
If Not $aCall[0] Then Return SetError(10, _WinAPI_GetLastError(), 0)
Local $aRet[2]
For $i = 0 To 1
$aRet[$i] = DllStructGetData($tPOINT, $i + 1)
Next
Return $aRet
EndFunc
Func _WinAPI_GetClipCursor()
Local $tRECT = DllStructCreate($tagRECT)
Local $aCall = DllCall('user32.dll', 'bool', 'GetClipCursor', 'struct*', $tRECT)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $tRECT
EndFunc
Func _WinAPI_GetCursor()
Local $aCall = DllCall('user32.dll', 'handle', 'GetCursor')
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_GetFileVersionInfo($sFilePath, ByRef $pBuffer, $iFlags = 0)
Local $aCall
If _WinAPI_GetVersion() >= 6.0 Then
$aCall = DllCall('version.dll', 'dword', 'GetFileVersionInfoSizeExW', 'dword', BitAND($iFlags, 0x03), 'wstr', $sFilePath,  'ptr', 0)
Else
$aCall = DllCall('version.dll', 'dword', 'GetFileVersionInfoSizeW', 'wstr', $sFilePath, 'ptr', 0)
EndIf
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
$pBuffer = __HeapReAlloc($pBuffer, $aCall[0], 1)
If @error Then Return SetError(@error + 100, @extended, 0)
Local $iNbByte = $aCall[0]
If _WinAPI_GetVersion() >= 6.0 Then
$aCall = DllCall('version.dll', 'bool', 'GetFileVersionInfoExW', 'dword', BitAND($iFlags, 0x07), 'wstr', $sFilePath,  'dword', 0, 'dword', $iNbByte, 'ptr', $pBuffer)
Else
$aCall = DllCall('version.dll', 'bool', 'GetFileVersionInfoW', 'wstr', $sFilePath,  'dword', 0, 'dword', $iNbByte, 'ptr', $pBuffer)
EndIf
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $iNbByte
EndFunc
Func _WinAPI_HideCaret($hWnd)
Local $aCall = DllCall('user32.dll', 'int', 'HideCaret', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_LoadBitmap($hInstance, $sBitmap)
Local $sBitmapType = "int"
If IsString($sBitmap) Then $sBitmapType = "wstr"
Local $aCall = DllCall("user32.dll", "handle", "LoadBitmapW", "handle", $hInstance, $sBitmapType, $sBitmap)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_LoadCursor($hInstance, $sName)
Local $sTypeOfName = 'int'
If IsString($sName) Then
$sTypeOfName = 'wstr'
EndIf
Local $aCall = DllCall('user32.dll', 'handle', 'LoadCursorW', 'handle', $hInstance, $sTypeOfName, $sName)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_LoadCursorFromFile($sFilePath)
Local $aCall = DllCall('user32.dll', 'handle', 'LoadCursorFromFileW', 'wstr', $sFilePath)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_LoadIndirectString($sStrIn)
Local $aCall = DllCall('shlwapi.dll', 'uint', 'SHLoadIndirectString', 'wstr', $sStrIn, 'wstr', '', 'uint', 4096, 'ptr*', 0)
If @error Then Return SetError(@error, @extended, '')
If $aCall[0] Then Return SetError(10, $aCall[0], '')
Return $aCall[2]
EndFunc
Func _WinAPI_LoadString($hInstance, $iStringID)
Local $aCall = DllCall("user32.dll", "int", "LoadStringW", "handle", $hInstance, "uint", $iStringID, "wstr", "", "int", 4096)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, "")
Return SetExtended($aCall[0], $aCall[3])
EndFunc
Func _WinAPI_LoadLibraryEx($sFileName, $iFlags = 0)
Local $aCall = DllCall("kernel32.dll", "handle", "LoadLibraryExW", "wstr", $sFileName, "ptr", 0, "dword", $iFlags)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_LoadResource($hInstance, $hResource)
Local $aCall = DllCall('kernel32.dll', 'handle', 'LoadResource', 'handle', $hInstance, 'handle', $hResource)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_LoadStringEx($hModule, $iID, $iLanguage = $LOCALE_USER_DEFAULT)
Local $iLibrary = 0
If IsString($hModule) Then
If StringStripWS($hModule, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$hModule = _WinAPI_LoadLibraryEx($hModule, BitOR($DONT_RESOLVE_DLL_REFERENCES, $LOAD_LIBRARY_AS_DATAFILE))
If Not $hModule Then Return SetError(@error + 20, @extended, '')
$iLibrary = 1
Else
$hModule = 0
EndIf
EndIf
Local $sResult = ''
Local $pData = __ResLoad($hModule, 6, Floor($iID / 16) + 1, $iLanguage)
If Not @error Then
Local $iOffset = 0
For $i = 0 To Mod($iID, 16) - 1
$iOffset += 2 * (DllStructGetData(DllStructCreate('ushort', $pData + $iOffset), 1) + 1)
Next
$sResult = DllStructGetData(DllStructCreate('ushort;wchar[' & DllStructGetData(DllStructCreate('ushort', $pData + $iOffset), 1) & ']', $pData + $iOffset), 2)
If @error Then $sResult = ''
Else
Return SetError(10, 0, '')
EndIf
If $iLibrary Then
_WinAPI_FreeLibrary($hModule)
EndIf
Return SetError(Number(Not $sResult), 0, $sResult)
EndFunc
Func _WinAPI_LockResource($hData)
Local $aCall = DllCall('kernel32.dll', 'ptr', 'LockResource', 'handle', $hData)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetCaretBlinkTime($iDuration)
Local $iPrev = _WinAPI_GetCaretBlinkTime()
If Not $iPrev Then Return SetError(@error + 20, @extended, 0)
Local $aCall = DllCall('user32.dll', 'bool', 'SetCaretBlinkTime', 'uint', $iDuration)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Return $iPrev
EndFunc
Func _WinAPI_SetCaretPos($iX, $iY)
Local $aCall = DllCall('user32.dll', 'int', 'SetCaretPos', 'int', $iX, 'int', $iY)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetCursor($hCursor)
Local $aCall = DllCall("user32.dll", "handle", "SetCursor", "handle", $hCursor)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SetSystemCursor($hCursor, $iID, $bCopy = False)
If $bCopy Then
$hCursor = _WinAPI_CopyCursor($hCursor)
EndIf
Local $aCall = DllCall('user32.dll', 'bool', 'SetSystemCursor', 'handle', $hCursor, 'dword', $iID)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShowCaret($hWnd)
Local $aCall = DllCall('user32.dll', 'bool', 'ShowCaret', 'hwnd', $hWnd)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_ShowCursor($bShow)
Local $aCall = DllCall("user32.dll", "int", "ShowCursor", "bool", $bShow)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_SizeOfResource($hInstance, $hResource)
Local $aCall = DllCall('kernel32.dll', 'dword', 'SizeofResource', 'handle', $hInstance, 'handle', $hResource)
If @error Or Not $aCall[0] Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func _WinAPI_UpdateResource($hUpdate, $sType, $sName, $iLanguage, $pData, $iSize)
Local $sTypeOfType = 'int', $sTypeOfName = 'int'
If IsString($sType) Then
$sTypeOfType = 'wstr'
EndIf
If IsString($sName) Then
$sTypeOfName = 'wstr'
EndIf
Local $aCall = DllCall('kernel32.dll', 'bool', 'UpdateResourceW', 'handle', $hUpdate, $sTypeOfType, $sType, $sTypeOfName, $sName,  'word', $iLanguage, 'ptr', $pData, 'dword', $iSize)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func _WinAPI_VerQueryRoot($pData)
Local $aCall = DllCall('version.dll', 'bool', 'VerQueryValueW', 'ptr', $pData, 'wstr', '\', 'ptr*', 0, 'uint*', 0)
If @error Or Not $aCall[0] Or Not $aCall[4] Then Return SetError(@error + 10, @extended, 0)
Local $tVFFI = DllStructCreate($tagVS_FIXEDFILEINFO)
If Not _WinAPI_MoveMemory($tVFFI, $aCall[3], $aCall[4]) Then Return SetError(@error + 20, @extended, 0)
Return $tVFFI
EndFunc
Func _WinAPI_VerQueryValue($pData, $sValues = '')
$sValues = StringRegExpReplace($sValues, '\A[\s\|]*|[\s\|]*\Z', '')
If Not $sValues Then
$sValues = 'Comments|CompanyName|FileDescription|FileVersion|InternalName|LegalCopyright|LegalTrademarks|OriginalFilename|ProductName|ProductVersion|PrivateBuild|SpecialBuild'
EndIf
$sValues = StringSplit($sValues, '|', $STR_NOCOUNT)
Local $aCall = DllCall('version.dll', 'bool', 'VerQueryValueW', 'ptr', $pData, 'wstr', '\VarFileInfo\Translation', 'ptr*', 0,  'uint*', 0)
If @error Or Not $aCall[0] Or Not $aCall[4] Then Return SetError(@error + 10, 0, 0)
Local $iLength = Floor($aCall[4] / 4)
Local $tLang = DllStructCreate('dword[' & $iLength & ']', $aCall[3])
If @error Then Return SetError(@error + 20, 0, 0)
Local $sCP, $aInfo[101][UBound($sValues) + 1] = [[0]]
For $i = 1 To $iLength
__Inc($aInfo)
$aInfo[$aInfo[0][0]][0] = _WinAPI_LoWord(DllStructGetData($tLang, 1, $i))
$sCP = Hex(_WinAPI_MakeLong(_WinAPI_HiWord(DllStructGetData($tLang, 1, $i)), _WinAPI_LoWord(DllStructGetData($tLang, 1, $i))), 8)
For $j = 0 To UBound($sValues) - 1
$aCall = DllCall('version.dll', 'bool', 'VerQueryValueW', 'ptr', $pData, 'wstr', '\StringFileInfo\' & $sCP & '\' & $sValues[$j],  'ptr*', 0, 'uint*', 0)
If Not @error And $aCall[0] And $aCall[4] Then
$aInfo[$aInfo[0][0]][$j + 1] = DllStructGetData(DllStructCreate('wchar[' & $aCall[4] & ']', $aCall[3]), 1)
Else
$aInfo[$aInfo[0][0]][$j + 1] = ''
EndIf
Next
Next
__Inc($aInfo, -1)
Return $aInfo
EndFunc
Func _WinAPI_VerQueryValueEx($hModule, $sValues = '', $iLanguage = 0x0400)
$__g_vVal = StringRegExpReplace($sValues, '\A[\s\|]*|[\s\|]*\Z', '')
If Not $__g_vVal Then
$__g_vVal = 'Comments|CompanyName|FileDescription|FileVersion|InternalName|LegalCopyright|LegalTrademarks|OriginalFilename|ProductName|ProductVersion|PrivateBuild|SpecialBuild'
EndIf
$__g_vVal = StringSplit($__g_vVal, '|')
If Not IsArray($__g_vVal) Then Return SetError(1, 0, 0)
Local $iLibrary = 0
If IsString($hModule) Then
If StringStripWS($hModule, $STR_STRIPLEADING + $STR_STRIPTRAILING) Then
$hModule = _WinAPI_LoadLibraryEx($hModule, BitOR($DONT_RESOLVE_DLL_REFERENCES, $LOAD_LIBRARY_AS_DATAFILE))
If Not $hModule Then
Return SetError(@error + 10, @extended, 0)
EndIf
$iLibrary = 1
Else
$hModule = 0
EndIf
EndIf
Dim $__g_vEnum[101][$__g_vVal[0] + 1] = [[0]]
Local $hEnumProc = DllCallbackRegister('__EnumVerValuesProc', 'bool', 'ptr;ptr;ptr;word;long_ptr')
Local $aCall = DllCall('kernel32.dll', 'bool', 'EnumResourceLanguagesW', 'handle', $hModule, 'int', 16, 'int', 1,  'ptr', DllCallbackGetPtr($hEnumProc), 'long_ptr', $iLanguage)
Do
If @error Then
$__g_vEnum = @error + 20
Else
If Not $aCall[0] Then
Switch _WinAPI_GetLastError()
Case 0, 15106
ExitLoop
Case Else
$__g_vEnum = 20
EndSwitch
Else
ExitLoop
EndIf
EndIf
Until 1
If $iLibrary Then
_WinAPI_FreeLibrary($hModule)
EndIf
DllCallbackFree($hEnumProc)
If Not $__g_vEnum[0][0] Then $__g_vEnum = 230
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func __EnumResLanguagesProc($hModule, $iType, $iName, $iLanguage, $lParam)
#forceref $hModule, $iType, $iName, $lParam
__Inc($__g_vEnum)
$__g_vEnum[$__g_vEnum[0]] = $iLanguage
Return 1
EndFunc
Func __EnumResNamesProc($hModule, $iType, $iName, $lParam)
#forceref $hModule, $iType, $lParam
Local $iLength = _WinAPI_StrLen($iName)
__Inc($__g_vEnum)
If $iLength Then
$__g_vEnum[$__g_vEnum[0]] = DllStructGetData(DllStructCreate('wchar[' & ($iLength + 1) & ']', $iName), 1)
Else
$__g_vEnum[$__g_vEnum[0]] = Number($iName)
EndIf
Return 1
EndFunc
Func __EnumResTypesProc($hModule, $iType, $lParam)
#forceref $hModule, $lParam
Local $iLength = _WinAPI_StrLen($iType)
__Inc($__g_vEnum)
If $iLength Then
$__g_vEnum[$__g_vEnum[0]] = DllStructGetData(DllStructCreate('wchar[' & ($iLength + 1) & ']', $iType), 1)
Else
$__g_vEnum[$__g_vEnum[0]] = Number($iType)
EndIf
Return 1
EndFunc
Func __EnumVerValuesProc($hModule, $iType, $iName, $iLanguage, $iDefault)
Local $aCall, $iEnum = 1, $iError = 0
Switch $iDefault
Case -1
Case 0x0400
$iLanguage = 0x0400
$iEnum = 0
Case Else
If $iLanguage <> $iDefault Then
Return 1
EndIf
$iEnum = 0
EndSwitch
Do
Local $pData = __ResLoad($hModule, $iType, $iName, $iLanguage)
If @error Then
$iError = @error + 10
ExitLoop
EndIf
$aCall = DllCall('version.dll', 'bool', 'VerQueryValueW', 'ptr', $pData, 'wstr', '\VarFileInfo\Translation', 'ptr*', 0, 'uint*', 0)
If @error Or Not $aCall[0] Or Not $aCall[4] Then
$iError = @error + 20
ExitLoop
EndIf
Local $tData = DllStructCreate('ushort;ushort', $aCall[3])
If @error Then
$iError = @error + 30
ExitLoop
EndIf
Until 1
If Not $iError Then
__Inc($__g_vEnum)
$__g_vEnum[$__g_vEnum[0][0]][0] = DllStructGetData($tData, 1)
Local $sCP = Hex(_WinAPI_MakeLong(DllStructGetData($tData, 2), DllStructGetData($tData, 1)), 8)
For $i = 1 To $__g_vVal[0]
$aCall = DllCall('version.dll', 'bool', 'VerQueryValueW', 'ptr', $pData, 'wstr', '\StringFileInfo\' & $sCP & '\' & $__g_vVal[$i],  'ptr*', 0, 'uint*', 0)
If Not @error And $aCall[0] And $aCall[4] Then
$__g_vEnum[$__g_vEnum[0][0]][$i] = DllStructGetData(DllStructCreate('wchar[' & $aCall[4] & ']', $aCall[3]), 1)
Else
$__g_vEnum[$__g_vEnum[0][0]][$i] = ''
EndIf
Next
Else
$__g_vEnum = @error + 40
EndIf
If $__g_vEnum Then Return SetError($iError, 0, 0)
Return $iEnum
EndFunc
Func __ResLoad($hInstance, $sType, $sName, $iLanguage)
Local $hInfo = _WinAPI_FindResourceEx($hInstance, $sType, $sName, $iLanguage)
If Not $hInfo Then Return SetError(@error + 10, @extended, 0)
Local $iSize = _WinAPI_SizeOfResource($hInstance, $hInfo)
If Not $iSize Then Return SetError(@error + 20, @extended, 0)
Local $hData = _WinAPI_LoadResource($hInstance, $hInfo)
If Not $hData Then Return SetError(@error + 30, @extended, 0)
Local $pData = _WinAPI_LockResource($hData)
If Not $pData Then Return SetError(@error + 40, @extended, 0)
Return SetExtended($iSize, $pData)
EndFunc
OnAutoItExitRegister(_GDIPlus_Shutdown)
OnAutoItExitRegister(_Resource_DestroyAll)
_GDIPlus_Startup()
Global Enum  $RESOURCE_ERROR_NONE,  $RESOURCE_ERROR_FINDRESOURCE,  $RESOURCE_ERROR_INVALIDCONTROLID,  $RESOURCE_ERROR_INVALIDCLASS,  $RESOURCE_ERROR_INVALIDRESOURCENAME,  $RESOURCE_ERROR_INVALIDRESOURCETYPE,  $RESOURCE_ERROR_LOCKRESOURCE,  $RESOURCE_ERROR_LOADBITMAP,  $RESOURCE_ERROR_LOADCURSOR,  $RESOURCE_ERROR_LOADICON,  $RESOURCE_ERROR_LOADIMAGE,  $RESOURCE_ERROR_LOADLIBRARY,  $RESOURCE_ERROR_LOADSTRING,  $RESOURCE_ERROR_SETIMAGE
Global Const  $RESOURCE_SS_ENHMETAFILE = 0xF
Global Const  $RESOURCE_SS_REALSIZECONTROL = 0x40
Global Const  $RESOURCE_STM_SETICON = 0x0170
Global Const  $RESOURCE_STM_GETIMAGE = 0x0173
Global Const  $RESOURCE_STM_SETIMAGE = 0x0172
Global Const  $RESOURCE_LANG_DEFAULT = 0
Global Enum  $RESOURCE_RT_BITMAP = 1000,  $RESOURCE_RT_ENHMETAFILE,  $RESOURCE_RT_FONT
Global Enum  $RESOURCE_POS_H,  $RESOURCE_POS_W,  $RESOURCE_POS_MAX
Global Const  $RESOURCE_STORAGE_GUID = 'CA37F1E6-04D1-11E4-B340-4B0AE3E253B6'
Global Enum  $RESOURCE_STORAGE,  $RESOURCE_STORAGE_FIRSTINDEX
Global Enum  $RESOURCE_STORAGE_ID,  $RESOURCE_STORAGE_INDEX,  $RESOURCE_STORAGE_RESETCOUNT,  $RESOURCE_STORAGE_UBOUND
Global Enum  $RESOURCE_STORAGE_DLL,  $RESOURCE_STORAGE_CASTRESTYPE,  $RESOURCE_STORAGE_LENGTH,  $RESOURCE_STORAGE_PTR,  $RESOURCE_STORAGE_RESLANG,  $RESOURCE_STORAGE_RESNAMEORID,  $RESOURCE_STORAGE_RESTYPE,  $RESOURCE_STORAGE_MAX,  $RESOURCE_STORAGE_ADD,  $RESOURCE_STORAGE_DESTROY,  $RESOURCE_STORAGE_DESTROYALL,  $RESOURCE_STORAGE_GET
Global Enum  $RESOURCE_WINGETPOS_XPOS,  $RESOURCE_WINGETPOS_YPOS,  $RESOURCE_WINGETPOS_WIDTH,  $RESOURCE_WINGETPOS_HEIGHT
Func _Resource_Destroy($sResNameOrID, $iResType = $RT_RCDATA, $iResLang = Default, $sDllOrExePath = Default)
If $iResLang = Default Then $iResLang = $RESOURCE_LANG_DEFAULT
If $iResType = Default Then $iResType = $RT_RCDATA
Return __Resource_Storage($RESOURCE_STORAGE_DESTROY, $sDllOrExePath, Null, $sResNameOrID, $iResType, $iResLang, $iResType, Null)
EndFunc
Func _Resource_DestroyAll()
Return __Resource_Storage($RESOURCE_STORAGE_DESTROYALL, Null, Null, Null, Null, Null, Null, Null)
EndFunc
Func _Resource_GetAsBitmap($sResNameOrID, $iResType = $RT_RCDATA, $sDllOrExePath = Default)
Local $hHBITMAP = 0, $hBitmap = _Resource_GetAsImage($sResNameOrID, $iResType, $sDllOrExePath)
Local $iError = @error
Local $iLength = @extended
If $iError = $RESOURCE_ERROR_NONE And $iLength > 0 Then
$hHBITMAP = _GDIPlus_BitmapCreateHBITMAPFromBitmap($hBitmap)
If @error Then
$iError = $RESOURCE_ERROR_LOADBITMAP
Else
_GDIPlus_BitmapDispose($hBitmap)
$hBitmap = 0
EndIf
EndIf
If $iError <> $RESOURCE_ERROR_NONE Then $hHBITMAP = 0
Return SetError($iError, $iLength, $hHBITMAP)
EndFunc
Func _Resource_GetAsCursor($sResNameOrID, $iResType = $RT_RCDATA, $sDllOrExePath = Default)
Local $hCursor = __Resource_Get($sResNameOrID, $iResType, $RESOURCE_LANG_DEFAULT, $sDllOrExePath, $RT_CURSOR)
Local $iError = @error
Local $iLength = @extended
If $iError <> $RESOURCE_ERROR_NONE Then $hCursor = 0
Return SetError($iError, $iLength, $hCursor)
EndFunc
Func _Resource_GetAsBytes($sResNameOrID, $iResType = $RT_RCDATA, $iResLang = Default, $sDllOrExePath = Default)
Local $pResource = __Resource_Get($sResNameOrID, $iResType, $iResLang, $sDllOrExePath, $RT_RCDATA)
Local $iError = @error
Local $iLength = @extended
Local $dBytes = Binary(Null)
If $iError = $RESOURCE_ERROR_NONE And $iLength > 0 Then
Local $tBuffer = DllStructCreate('byte array[' & $iLength & ']', $pResource)
$dBytes = DllStructGetData($tBuffer, 'array')
EndIf
Return SetError($iError, $iLength, $dBytes)
EndFunc
Func _Resource_GetAsIcon($sResNameOrID, $iResType = $RT_RCDATA, $sDllOrExePath = Default)
Local $hIcon = __Resource_Get($sResNameOrID, $iResType, $RESOURCE_LANG_DEFAULT, $sDllOrExePath, $RT_ICON)
Local $iError = @error
Local $iLength = @extended
If $iError <> $RESOURCE_ERROR_NONE Then $hIcon = 0
Return SetError($iError, $iLength, $hIcon)
EndFunc
Func _Resource_GetAsImage($sResNameOrID, $iResType = $RT_RCDATA, $sDllOrExePath = Default)
If $iResType = Default Then $iResType = $RT_RCDATA
Local $iError = $RESOURCE_ERROR_LOADIMAGE, $iLength = 0,  $hBitmap = 0
Switch $iResType
Case $RT_BITMAP
Local $hHBITMAP = __Resource_Get($sResNameOrID, $RT_BITMAP, 0, $sDllOrExePath, $RT_BITMAP)
$iError = @error
$iLength = @extended
If $iError = $RESOURCE_ERROR_NONE And $iLength > 0 Then
$hBitmap = _GDIPlus_BitmapCreateFromHBITMAP($hHBITMAP)
If @error Then
$iError = $RESOURCE_ERROR_LOADIMAGE
Else
EndIf
EndIf
Case Else
Local $pResource = __Resource_Get($sResNameOrID, $iResType, 0, $sDllOrExePath, $RT_RCDATA)
$iError = @error
$iLength = @extended
If $iError = $RESOURCE_ERROR_NONE And $iLength > 0 Then
$hBitmap = __Resource_ConvertToBitmap($pResource, $iLength)
EndIf
EndSwitch
Return SetError($iError, $iLength, $hBitmap)
EndFunc
Func _Resource_GetAsRaw($sResNameOrID, $iResType = $RT_RCDATA, $iResLang = Default, $sDllOrExePath = Default)
Local $hResource = __Resource_Get($sResNameOrID, $iResType, $iResLang, $sDllOrExePath, $RT_RCDATA)
Return SetError(@error, @extended, $hResource)
EndFunc
Func _Resource_GetAsString($sResNameOrID, $iResType = $RT_RCDATA, $iResLang = Default, $sDllOrExePath = Default)
Local $iError = $RESOURCE_ERROR_LOADSTRING,  $iLength = 0,  $sString = ''
Switch $iResType
Case $RT_RCDATA
Local $dBytes = _Resource_GetAsBytes($sResNameOrID, $iResType, $iResLang, $sDllOrExePath)
$iError = @error
$iLength = @extended
If $iError = $RESOURCE_ERROR_NONE And $iLength > 0 Then
Local Enum  $BINARYTOSTRING_NONE,  $BINARYTOSTRING_ANSI,  $BINARYTOSTRING_UTF16LE,  $BINARYTOSTRING_UTF16BE,  $BINARYTOSTRING_UTF8
Local $iStart = $BINARYTOSTRING_NONE, $iUTFEncoding = $BINARYTOSTRING_ANSI
Local Const $sUTF8 = '0xEFBBBF',  $sUTF16BE = '0xFEFF',  $sUTF16LE = '0xFFFE',  $sUTF32BE = '0x0000FEFF',  $sUTF32LE = '0xFFFE0000'
Local $iUTF8 = BinaryLen($sUTF8),  $iUTF16BE = BinaryLen($sUTF16BE),  $iUTF16LE = BinaryLen($sUTF16LE),  $iUTF32BE = BinaryLen($sUTF32BE),  $iUTF32LE = BinaryLen($sUTF32LE)
Select
Case BinaryMid($dBytes, 1, $iUTF32BE) = $sUTF32BE
$iStart = $iUTF32BE
$iUTFEncoding = $BINARYTOSTRING_ANSI
Case BinaryMid($dBytes, 1, $iUTF32LE) = $sUTF32LE
$iStart = $iUTF32LE
$iUTFEncoding = $BINARYTOSTRING_ANSI
Case BinaryMid($dBytes, 1, $iUTF16BE) = $sUTF16BE
$iStart = $iUTF16BE
$iUTFEncoding = $BINARYTOSTRING_UTF16BE
Case BinaryMid($dBytes, 1, $iUTF16LE) = $sUTF16LE
$iStart = $iUTF16LE
$iUTFEncoding = $BINARYTOSTRING_UTF16LE
Case BinaryMid($dBytes, 1, $iUTF8) = $sUTF8
$iStart = $iUTF8
$iUTFEncoding = $BINARYTOSTRING_UTF8
EndSelect
$iStart += 1
$iLength = $iLength + 1 - $iStart
$sString = BinaryToString(BinaryMid($dBytes, $iStart), $iUTFEncoding)
EndIf
$dBytes = 0
Case $RT_STRING
$sString = __Resource_Get($sResNameOrID, $iResType, $iResLang, $sDllOrExePath, $iResType)
$iError = @error
$iLength = @extended
EndSwitch
Return SetError($iError, $iLength, $sString)
EndFunc
Func _Resource_LoadFont($sResNameOrID, $iResLang = Default, $sDllOrExePath = Default)
Local $pResource = __Resource_Get($sResNameOrID, $RT_FONT, $iResLang, $sDllOrExePath, $RT_FONT)
Local $iError = @error
Local $iLength = @extended
If $iError = $RESOURCE_ERROR_NONE Then
Local $hFont = _WinAPI_AddFontMemResourceEx($pResource, $iLength)
__Resource_Storage($RESOURCE_STORAGE_ADD, $sDllOrExePath, $hFont, $sResNameOrID, $RESOURCE_RT_FONT, $iResLang, $RESOURCE_RT_FONT, $iLength)
$hFont = 0
EndIf
Return SetError($iError, $iLength, $pResource)
EndFunc
Func _Resource_LoadSound($sResNameOrID, $iFlags = $SND_SYNC, $sDllOrExePath = Default)
Local $bIsInternal = False, $bReturn = False
Local $hInstance = __Resource_LoadModule($sDllOrExePath, $bIsInternal)
If Not $hInstance Then Return SetError($RESOURCE_ERROR_LOADLIBRARY, 0, $bReturn)
Local $dSound = _Resource_GetAsBytes($sResNameOrID)
Local $iLength = @extended
If Not $iLength Then
$bReturn = _WinAPI_PlaySound($sResNameOrID, BitOR($SND_RESOURCE, $iFlags), $hInstance)
Else
Local $sAlign_Buffer = '00',  $sHeader_1 = '0x52494646',  $sHeader_2 = '57415645666D74201E0000005500020044AC0000581B0000010000000C00010002000000B600010071056661637404000000640E060064617461'
Local $sMp3 = StringTrimLeft(Binary($dSound), StringLen('00'))
Local Const $iByte = 8
Local $iMp3Size = StringRegExpReplace(Hex($iLength, $iByte), '(..)(..)(..)(..)', '$4$3$2$1')
Local $iWavSize = StringRegExpReplace(Hex($iLength + 63, $iByte), '(..)(..)(..)(..)', '$4$3$2$1')
Local $sHybridWav = $sHeader_1 & $iWavSize & $sHeader_2 & $iMp3Size & $sMp3
If Mod($iMp3Size, 2) Then
$sHybridWav &= $sAlign_Buffer
EndIf
Local $tWAV = DllStructCreate('byte array[' & BinaryLen($sHybridWav) & ']')
DllStructSetData($tWAV, 'array', $sHybridWav)
$iFlags = BitOR($SND_MEMORY, $SND_NODEFAULT, $iFlags)
$bReturn = _WinAPI_PlaySound(DllStructGetPtr($tWAV), $iFlags, $hInstance)
EndIf
__Resource_UnloadModule($hInstance, $bIsInternal)
Return $bReturn
EndFunc
Func _Resource_SaveToFile($sFilePath, $sResNameOrID, $iResType = $RT_RCDATA, $iResLang = Default, $bCreatePath = Default, $sDllOrExePath = Default)
Local $bReturn = False,  $iCreatePath = (IsBool($bCreatePath) And $bCreatePath ? $FO_CREATEPATH : 0), $iError = $RESOURCE_ERROR_NONE, $iLength = 0
If $iResType = Default Then $iResType = $RT_RCDATA
If $iResType = $RT_BITMAP Then
Local $hImage = _Resource_GetAsImage($sResNameOrID, $iResType)
$iError = @error
$iLength = @extended
If $iError = $RESOURCE_ERROR_NONE And $iLength > 0 Then
FileClose(FileOpen($sFilePath, BitOR($FO_OVERWRITE, $FO_BINARY, $iCreatePath)))
$bReturn = _GDIPlus_ImageSaveToFile($hImage, $sFilePath)
_GDIPlus_ImageDispose($hImage)
EndIf
Else
Local $dBytes = _Resource_GetAsBytes($sResNameOrID, $iResType, $iResLang, $sDllOrExePath)
$iError = @error
$iLength = @extended
If $iError = $RESOURCE_ERROR_NONE And $iLength > 0 Then
Local $hFileOpen = FileOpen($sFilePath, BitOR($FO_OVERWRITE, $FO_BINARY, $iCreatePath))
If $hFileOpen > -1 Then
$bReturn = True
FileWrite($hFileOpen, $dBytes)
FileClose($hFileOpen)
EndIf
EndIf
EndIf
Return SetError($iError, $iLength, $bReturn)
EndFunc
Func _Resource_SetBitmapToCtrlID($iCtrlID, $hHBITMAP, $bResize = Default)
Local $bReturn = __Resource_SetToCtrlID($iCtrlID, $hHBITMAP, $RT_BITMAP, False, $bResize)
Return SetError(@error, @extended, $bReturn)
EndFunc
Func _Resource_SetCursorToCtrlID($iCtrlID, $hCursor, $bResize = Default)
Local $bReturn = __Resource_SetToCtrlID($iCtrlID, $hCursor, $RT_CURSOR, False, $bResize)
Return SetError(@error, @extended, $bReturn)
EndFunc
Func _Resource_SetIconToCtrlID($iCtrlID, $hIcon, $bResize = Default)
Local $bReturn = __Resource_SetToCtrlID($iCtrlID, $hIcon, $RT_ICON, False, $bResize)
Return SetError(@error, @extended, $bReturn)
EndFunc
Func _Resource_SetImageToCtrlID($iCtrlID, $hBitmap, $bResize = Default)
Local $hHBITMAP = _GDIPlus_BitmapCreateHBITMAPFromBitmap($hBitmap)
If @error Then
$hHBITMAP = 0
Else
_GDIPlus_BitmapDispose($hBitmap)
EndIf
$hBitmap = 0
Local $bReturn = __Resource_SetToCtrlID($iCtrlID, $hHBITMAP, $RT_BITMAP, False, $bResize)
Return SetError(@error, @extended, $bReturn)
EndFunc
Func _Resource_SetToCtrlID($iCtrlID, $sResNameOrID, $iResType = $RT_RCDATA, $sDllOrExePath = Default, $bResize = Default)
If $iResType = Default Then $iResType = $RT_RCDATA
Local $aWinGetPos = 0,  $bDestroy = True, $bReturn = False,  $iError = $RESOURCE_ERROR_INVALIDRESOURCETYPE, $iLength = 0,  $vReturn = False
Local $hWnd = 0
__Resource_GetCtrlId($hWnd, $iCtrlID)
Switch $iResType
Case $RT_BITMAP, $RT_RCDATA
If StringStripWS($sResNameOrID, $STR_STRIPALL) = '' Or String($sResNameOrID) = '0' Then
$bReturn = __Resource_SetToCtrlID($iCtrlID, 0, $RT_BITMAP, True, False)
$iError = @error
Else
Local $hHBITMAP = _Resource_GetAsBitmap($sResNameOrID, $iResType, $sDllOrExePath)
$iError = @error
$iLength = @extended
If $iError = $RESOURCE_ERROR_NONE And $iLength > 0 Then
$bReturn = __Resource_SetToCtrlID($iCtrlID, $hHBITMAP, $RT_BITMAP, $bDestroy, $bResize)
$iError = @error
If $bReturn Then
If _WinAPI_GetVersion() >= 6.0 Then
$bReturn = _WinAPI_DeleteObject($hHBITMAP) > 0
$vReturn = $bReturn
Else
__Resource_Storage($RESOURCE_STORAGE_ADD, $sDllOrExePath, $hHBITMAP, $sResNameOrID, $iResType, Null, $iResType, $iLength)
$vReturn = $hHBITMAP
EndIf
EndIf
EndIf
EndIf
Case $RT_CURSOR
If StringStripWS($sResNameOrID, $STR_STRIPALL) = '' Or String($sResNameOrID) = '0' Then
$bReturn = __Resource_SetToCtrlID($iCtrlID, 0, $RT_CURSOR, True, False)
$iError = @error
Else
$bDestroy = False
Local $hCursor = 0
If $bResize Then
$aWinGetPos = WinGetPos($hWnd)
If Not @error Then
Local $aPos[$RESOURCE_POS_MAX]
$aPos[$RESOURCE_POS_H] = $aWinGetPos[$RESOURCE_WINGETPOS_HEIGHT]
$aPos[$RESOURCE_POS_W] = $aWinGetPos[$RESOURCE_WINGETPOS_WIDTH]
If $aPos[$RESOURCE_POS_H] = 0 And $aPos[$RESOURCE_POS_W] = 0 Then
GUICtrlSetImage($iCtrlID, @AutoItExe, 0)
$aWinGetPos = WinGetPos($hWnd)
If Not @error Then
$aPos[$RESOURCE_POS_H] = $aWinGetPos[$RESOURCE_WINGETPOS_HEIGHT]
$aPos[$RESOURCE_POS_W] = $aWinGetPos[$RESOURCE_WINGETPOS_WIDTH]
EndIf
EndIf
$hCursor = __Resource_Get($sResNameOrID, $RT_CURSOR, $RESOURCE_LANG_DEFAULT, $sDllOrExePath, $RT_CURSOR, $aPos)
$iError = @error
$iLength = @extended
EndIf
Else
$hCursor = _Resource_GetAsCursor($sResNameOrID, $iResType, $sDllOrExePath)
$iError = @error
$iLength = @extended
EndIf
If $iError = $RESOURCE_ERROR_NONE Then
$bReturn = __Resource_SetToCtrlID($iCtrlID, $hCursor, $RT_CURSOR, $bDestroy, $bResize)
EndIf
$hCursor = 0
$vReturn = $bReturn
EndIf
Case $RT_ICON
If StringStripWS($sResNameOrID, $STR_STRIPALL) = '' Or String($sResNameOrID) = '0' Then
$bReturn = __Resource_SetToCtrlID($iCtrlID, 0, $RT_ICON, True, False)
$iError = @error
Else
$bDestroy = False
Local $hIcon = 0
If $bResize Then
__Resource_GetCtrlId($hWnd, $iCtrlID)
$aWinGetPos = WinGetPos($hWnd)
If Not @error Then
Local $aPos[$RESOURCE_POS_MAX]
$aPos[$RESOURCE_POS_H] = $aWinGetPos[$RESOURCE_WINGETPOS_HEIGHT]
$aPos[$RESOURCE_POS_W] = $aWinGetPos[$RESOURCE_WINGETPOS_WIDTH]
If $aPos[$RESOURCE_POS_H] = 0 And $aPos[$RESOURCE_POS_W] = 0 Then
GUICtrlSetImage($iCtrlID, @AutoItExe, 0)
$aWinGetPos = WinGetPos($hWnd)
If Not @error Then
$aPos[$RESOURCE_POS_H] = $aWinGetPos[$RESOURCE_WINGETPOS_HEIGHT]
$aPos[$RESOURCE_POS_W] = $aWinGetPos[$RESOURCE_WINGETPOS_WIDTH]
EndIf
EndIf
$hIcon = __Resource_Get($sResNameOrID, $RT_ICON, $RESOURCE_LANG_DEFAULT, $sDllOrExePath, $RT_ICON, $aPos)
$iError = @error
$iLength = @extended
EndIf
Else
$hIcon = _Resource_GetAsIcon($sResNameOrID, $iResType, $sDllOrExePath)
$iError = @error
$iLength = @extended
EndIf
If $iError = $RESOURCE_ERROR_NONE Then
$bReturn = __Resource_SetToCtrlID($iCtrlID, $hIcon, $RT_ICON, $bDestroy, $bResize)
EndIf
$hIcon = 0
$vReturn = $bReturn
EndIf
EndSwitch
Return SetError($iError, $iLength, $vReturn)
EndFunc
Func __Resource_ConvertToBitmap($pResource, $iLength)
Local $hData = _MemGlobalAlloc($iLength, $GMEM_MOVEABLE)
Local $pData = _MemGlobalLock($hData)
_MemMoveMemory($pResource, $pData, $iLength)
_MemGlobalUnlock($hData)
Local $pStream = _WinAPI_CreateStreamOnHGlobal($hData)
Local $hBitmap = _GDIPlus_BitmapCreateFromStream($pStream)
_WinAPI_ReleaseStream($pStream)
Return $hBitmap
EndFunc
Func __Resource_Destroy($pResource, $iResType)
Local $bReturn = False
Switch $iResType
Case $RT_ANICURSOR, $RT_CURSOR
$bReturn = _WinAPI_DeleteObject($pResource) > 0
If Not $bReturn Then
$bReturn = _WinAPI_DestroyCursor($pResource) > 0
EndIf
Case $RT_BITMAP
$bReturn = _WinAPI_DeleteObject($pResource) > 0
Case $RT_FONT
$bReturn = True
Case $RT_ICON
$bReturn = _WinAPI_DeleteObject($pResource) > 0
If Not $bReturn Then
$bReturn = _WinAPI_DestroyIcon($pResource) > 0
EndIf
Case $RT_MENU
$bReturn = _GUICtrlMenu_DestroyMenu($pResource) > 0
Case $RT_STRING
$bReturn = True
Case $RESOURCE_RT_BITMAP
$bReturn = _GDIPlus_BitmapDispose($pResource) > 0
Case $RESOURCE_RT_ENHMETAFILE
$bReturn = _WinAPI_DeleteEnhMetaFile($pResource) > 0
Case $RESOURCE_RT_FONT
$bReturn = _WinAPI_RemoveFontMemResourceEx($pResource) > 0
Case Else
$bReturn = True
EndSwitch
If Not IsBool($bReturn) Then $bReturn = $bReturn > 0
Return $bReturn
EndFunc
Func __Resource_Get($sResNameOrID, $iResType = $RT_RCDATA, $iResLang = Default, $sDllOrExePath = Default, $iCastResType = Default, $aPos = Null)
If $iResType = $RT_RCDATA And StringStripWS($sResNameOrID, $STR_STRIPALL) = '' Then Return SetError($RESOURCE_ERROR_INVALIDRESOURCENAME, 0, Null)
If $iCastResType = Default Then $iCastResType = $iResType
If $iResLang = Default Then $iResLang = $RESOURCE_LANG_DEFAULT
If $iResType = Default Then $iResType = $RT_RCDATA
Local $iError = $RESOURCE_ERROR_NONE, $iLength = 0,  $vResource = __Resource_Storage($RESOURCE_STORAGE_GET, $sDllOrExePath, Null, $sResNameOrID, $iResType, $iResLang, $iCastResType, Null)
$iLength = @extended
If $vResource Then
Return SetError($iError, $iLength, $vResource)
EndIf
Local $bIsInternal = False
Local $hInstance = __Resource_LoadModule($sDllOrExePath, $bIsInternal)
If Not $hInstance Then Return SetError($RESOURCE_ERROR_LOADLIBRARY, 0, 0)
Local $hResource = (($iResLang <> $RESOURCE_LANG_DEFAULT) ? _WinAPI_FindResourceEx($hInstance, $iResType, $sResNameOrID, $iResLang) : _WinAPI_FindResource($hInstance, $iResType, $sResNameOrID))
If @error <> $RESOURCE_ERROR_NONE Then $iError = $RESOURCE_ERROR_FINDRESOURCE
If $iError = $RESOURCE_ERROR_NONE Then
If $aPos = Null Then
Local $aTemp[$RESOURCE_POS_MAX] = [0, 0]
$aPos = $aTemp
$aTemp = 0
$aPos[$RESOURCE_POS_H] = 0
$aPos[$RESOURCE_POS_W] = 0
EndIf
$iLength = _WinAPI_SizeOfResource($hInstance, $hResource)
Switch $iCastResType
Case $RT_ANICURSOR, $RT_CURSOR
$vResource = _WinAPI_LoadImage($hInstance, $sResNameOrID, $IMAGE_CURSOR, $aPos[$RESOURCE_POS_W], $aPos[$RESOURCE_POS_H], $LR_DEFAULTCOLOR)
If @error <> $RESOURCE_ERROR_NONE Or Not $vResource Then $iError = $RESOURCE_ERROR_LOADCURSOR
Case $RT_BITMAP
$vResource = _WinAPI_LoadImage($hInstance, $sResNameOrID, $IMAGE_BITMAP, $aPos[$RESOURCE_POS_W], $aPos[$RESOURCE_POS_H], $LR_DEFAULTCOLOR)
If @error <> $RESOURCE_ERROR_NONE Or Not $vResource Then $iError = $RESOURCE_ERROR_LOADBITMAP
Case $RT_ICON
$vResource = _WinAPI_LoadImage($hInstance, $sResNameOrID, $IMAGE_ICON, $aPos[$RESOURCE_POS_W], $aPos[$RESOURCE_POS_H], $LR_DEFAULTCOLOR)
If @error <> $RESOURCE_ERROR_NONE Or Not $vResource Then $iError = $RESOURCE_ERROR_LOADICON
Case $RT_STRING
$vResource = _WinAPI_LoadString($hInstance, $sResNameOrID)
$iLength = @extended
If @error <> $RESOURCE_ERROR_NONE Then $iError = $RESOURCE_ERROR_LOADSTRING
Case Else
Local $hData = _WinAPI_LoadResource($hInstance, $hResource)
$vResource = _WinAPI_LockResource($hData)
$hData = 0
If Not $vResource Then $iError = $RESOURCE_ERROR_LOCKRESOURCE
EndSwitch
If $iError = $RESOURCE_ERROR_NONE Then
__Resource_Storage($RESOURCE_STORAGE_ADD, $sDllOrExePath, $vResource, $sResNameOrID, $iResType, $iResLang, $iCastResType, $iLength)
Else
$vResource = Null
EndIf
EndIf
__Resource_UnloadModule($hInstance, $bIsInternal)
Return SetError($iError, $iLength, $vResource)
EndFunc
Func __Resource_GetCtrlId(ByRef $hWnd, ByRef $iCtrlID)
If $iCtrlID = Default Or $iCtrlID <= 0 Or Not IsInt($iCtrlID) Then $iCtrlID = -1
$hWnd = GUICtrlGetHandle($iCtrlID)
If $hWnd And $iCtrlID = -1 Then
$iCtrlID = _WinAPI_GetDlgCtrlID($hWnd)
EndIf
Return True
EndFunc
Func __Resource_GetLastImage($iCtrlID, $hResource, $sClassName, ByRef $hPrevious, ByRef $iPreviousResType)
$hPrevious = 0
$iPreviousResType = 0
Local $aGetImage = 0,  $bReturn = True,  $iMsg_Get = 0
Switch $sClassName
Case 'Button'
Local $aButton =  [[$IMAGE_BITMAP, $RT_BITMAP],  [$IMAGE_ICON, $RT_ICON]]
$aGetImage = $aButton
$aButton = 0
$iMsg_Get = $BM_GETIMAGE
Case 'Static'
Local $aStatic =  [[$IMAGE_BITMAP, $RT_BITMAP],  [$IMAGE_CURSOR, $RT_CURSOR],  [$IMAGE_ENHMETAFILE, $RESOURCE_RT_ENHMETAFILE],  [$IMAGE_ICON, $RT_ICON]]
$aGetImage = $aStatic
$aStatic = 0
$iMsg_Get = $RESOURCE_STM_GETIMAGE
Case Else
$bReturn = False
EndSwitch
If $bReturn Then
Local Enum $eWPARAM, $eRESTYPE
For $i = 0 To UBound($aGetImage) - 1
$hPrevious = GUICtrlSendMsg($iCtrlID, $iMsg_Get, $aGetImage[$i][$eWPARAM], 0)
If $hPrevious <> 0 And $hPrevious <> $hResource Then
$iPreviousResType = $aGetImage[$i][$eRESTYPE]
ExitLoop
EndIf
Next
EndIf
Return $bReturn
EndFunc
Func __Resource_LoadModule(ByRef $sDllOrExePath, ByRef $bIsInternal)
$bIsInternal = ($sDllOrExePath = Default Or $sDllOrExePath = -1)
If Not $bIsInternal And Not StringRegExp($sDllOrExePath, '\.(?:cpl|dll|exe)$') Then
$bIsInternal = True
EndIf
Return ($bIsInternal ? _WinAPI_GetModuleHandle(Null) : _WinAPI_LoadLibraryEx($sDllOrExePath, $LOAD_LIBRARY_AS_DATAFILE))
EndFunc
Func __Resource_UnloadModule(ByRef $hInstance, ByRef $bIsInternal)
Local $bReturn = True
If $bIsInternal And $hInstance Then
$bReturn = _WinAPI_FreeLibrary($hInstance)
EndIf
Return $bReturn
EndFunc
Func __Resource_SetToCtrlID($iCtrlID, $hResource, $iResType, $bDestroy, $bResize)
Local $bReturn = False,  $iError = $RESOURCE_ERROR_SETIMAGE
Local $hWnd = 0
__Resource_GetCtrlId($hWnd, $iCtrlID)
$iError = $RESOURCE_ERROR_INVALIDCONTROLID
If $hWnd And $iCtrlID > 0 Then
Local $aStyles[0]
$bReturn = True
$iError = $RESOURCE_ERROR_NONE
Local $iMsg_Set = 0, $iStyle = 0, $wParam = 0
Local $sClassName = _WinAPI_GetClassName($iCtrlID)
Switch $sClassName
Case 'Button'
Local $aButtonStyles = [$BS_BITMAP, $BS_ICON]
$aStyles = $aButtonStyles
$aButtonStyles = 0
$iMsg_Set = $BM_SETIMAGE
Switch $iResType
Case $RT_BITMAP
$iStyle = $BS_BITMAP
$wParam = $IMAGE_BITMAP
$bResize = False
Case $RT_ICON
$iStyle = $BS_ICON
$wParam = $IMAGE_ICON
$bResize = False
Case Else
$bReturn = False
$iError = $RESOURCE_ERROR_INVALIDRESOURCETYPE
EndSwitch
Case 'Static'
Local $aStaticStyles = [$SS_BITMAP, $SS_ICON, $RESOURCE_SS_ENHMETAFILE]
$aStyles = $aStaticStyles
$aStaticStyles = 0
$iMsg_Set = $RESOURCE_STM_SETIMAGE
Switch $iResType
Case $RT_BITMAP
$iStyle = $SS_BITMAP
$wParam = $IMAGE_BITMAP
Case $RT_CURSOR
$iStyle = $SS_ICON
$wParam = $IMAGE_CURSOR
Case $RESOURCE_RT_ENHMETAFILE
$iStyle = $RESOURCE_SS_ENHMETAFILE
$wParam = $IMAGE_ENHMETAFILE
Case $RT_ICON
$iStyle = $SS_ICON
$wParam = $IMAGE_ICON
Case Else
$bReturn = False
$iError = $RESOURCE_ERROR_INVALIDRESOURCETYPE
EndSwitch
Case Else
$bReturn = False
$iError = $RESOURCE_ERROR_INVALIDCLASS
EndSwitch
If $bReturn Then
Local $iCurrentStyle = _WinAPI_GetWindowLong($hWnd, $GWL_STYLE)
If Not @error Then
For $i = 0 To UBound($aStyles) - 1
If BitAND($aStyles[$i], $iCurrentStyle) Then
$iCurrentStyle = BitXOR($iCurrentStyle, $aStyles[$i])
EndIf
Next
If $bResize Then
_WinAPI_SetWindowLong($hWnd, $GWL_STYLE, BitOR($iCurrentStyle, $RESOURCE_SS_REALSIZECONTROL, $iStyle))
Else
_WinAPI_SetWindowLong($hWnd, $GWL_STYLE, BitOR($iCurrentStyle, $iStyle))
EndIf
EndIf
Local $hPrevious = 0,  $iPreviousResType = 0
__Resource_GetLastImage($iCtrlID, $hResource, $sClassName, $hPrevious, $iPreviousResType)
GUICtrlSendMsg($iCtrlID, $iMsg_Set, $wParam, $hResource)
If $iPreviousResType Then
__Resource_Destroy($hPrevious, $iPreviousResType)
__Resource_Storage($RESOURCE_STORAGE_DESTROY, Null, $hPrevious, Null, Null, Null, Null, Null)
If $bDestroy = Default Or $bDestroy Then
__Resource_Destroy($hResource, $iResType)
__Resource_Storage($RESOURCE_STORAGE_DESTROY, Null, $hResource, Null, Null, Null, Null, Null)
EndIf
_WinAPI_InvalidateRect($hWnd, 0, True)
_WinAPI_UpdateWindow($hWnd)
Else
$bReturn = False
$iError = $RESOURCE_ERROR_SETIMAGE
EndIf
EndIf
EndIf
Return SetError($iError, 0, $bReturn)
EndFunc
Func __Resource_Storage($iAction, $sDllOrExePath, $pResource, $sResNameOrID, $iResType, $iResLang, $iCastResType, $iLength)
Local Static $aStorage[$RESOURCE_STORAGE_FIRSTINDEX][$RESOURCE_STORAGE_MAX]
Local $bReturn = False
Switch $iAction
Case $RESOURCE_STORAGE_ADD
If Not ($aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_ID] = $RESOURCE_STORAGE_GUID) Then
$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_ID] = $RESOURCE_STORAGE_GUID
$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_INDEX] = 0
$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_RESETCOUNT] = 0
$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_UBOUND] = $RESOURCE_STORAGE_FIRSTINDEX
EndIf
If Not ($pResource = Null) And Not __Resource_Storage($RESOURCE_STORAGE_GET, $sDllOrExePath, Null, $sResNameOrID, $iResType, $iResLang, $iCastResType, Null) Then
$bReturn = True
$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_INDEX] += 1
If $aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_INDEX] >= $aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_UBOUND] Then
$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_UBOUND] = Ceiling($aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_INDEX] * 1.3)
ReDim $aStorage[$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_UBOUND]][$RESOURCE_STORAGE_MAX]
EndIf
$aStorage[$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_INDEX]][$RESOURCE_STORAGE_DLL] = $sDllOrExePath
$aStorage[$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_INDEX]][$RESOURCE_STORAGE_PTR] = $pResource
$aStorage[$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_INDEX]][$RESOURCE_STORAGE_RESLANG] = $iResLang
$aStorage[$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_INDEX]][$RESOURCE_STORAGE_RESNAMEORID] = $sResNameOrID
$aStorage[$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_INDEX]][$RESOURCE_STORAGE_RESTYPE] = $iResType
$aStorage[$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_INDEX]][$RESOURCE_STORAGE_CASTRESTYPE] = $iCastResType
$aStorage[$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_INDEX]][$RESOURCE_STORAGE_LENGTH] = $iLength
EndIf
Case $RESOURCE_STORAGE_DESTROY
Local $iDestoryCount = 0, $iDestoryed = 0
For $i = $RESOURCE_STORAGE_FIRSTINDEX To $aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_INDEX]
If Not ($aStorage[$i][$RESOURCE_STORAGE_PTR] = Null) Then
If $aStorage[$i][$RESOURCE_STORAGE_PTR] = $pResource Or ($aStorage[$i][$RESOURCE_STORAGE_DLL] = $sDllOrExePath And  $aStorage[$i][$RESOURCE_STORAGE_RESNAMEORID] = $sResNameOrID And  $aStorage[$i][$RESOURCE_STORAGE_RESTYPE] = $iResType And  $aStorage[$i][$RESOURCE_STORAGE_CASTRESTYPE] = $iCastResType) Then
$bReturn = __Resource_Storage_Destroy($aStorage, $i)
If $bReturn Then
$iDestoryed += 1
$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_RESETCOUNT] += 1
EndIf
$iDestoryCount += 1
EndIf
EndIf
Next
$bReturn = $iDestoryCount = $iDestoryed
If $aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_RESETCOUNT] >= 20 Then
Local $iIndex = 0
For $i = $RESOURCE_STORAGE_FIRSTINDEX To $aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_INDEX]
If Not ($aStorage[$i][$RESOURCE_STORAGE_PTR] = Null) Then
$iIndex += 1
For $j = 0 To $RESOURCE_STORAGE_MAX - 1
$aStorage[$iIndex][$j] = $aStorage[$i][$j]
Next
EndIf
Next
$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_INDEX] = $iIndex
$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_RESETCOUNT] = 0
$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_UBOUND] = $iIndex + $RESOURCE_STORAGE_FIRSTINDEX
ReDim $aStorage[$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_UBOUND]][$RESOURCE_STORAGE_MAX]
EndIf
Case $RESOURCE_STORAGE_DESTROYALL
$bReturn = True
For $i = $RESOURCE_STORAGE_FIRSTINDEX To $aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_INDEX]
__Resource_Storage_Destroy($aStorage, $i)
Next
$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_INDEX] = 0
$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_RESETCOUNT] = 0
$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_UBOUND] = $RESOURCE_STORAGE_FIRSTINDEX
ReDim $aStorage[$aStorage[$RESOURCE_STORAGE][$RESOURCE_STORAGE_UBOUND]][$RESOURCE_STORAGE_MAX]
Case $RESOURCE_STORAGE_GET
Local $iExtended = 0,  $pReturn = Null
Return SetExtended($iExtended, $pReturn)
EndSwitch
Return $bReturn
EndFunc
Func __Resource_Storage_Destroy(ByRef $aStorage, $iIndex)
Local $bReturn = False
If Not ($aStorage[$iIndex][$RESOURCE_STORAGE_PTR] = Null) Then
$bReturn = __Resource_Destroy($aStorage[$iIndex][$RESOURCE_STORAGE_PTR], $aStorage[$iIndex][$RESOURCE_STORAGE_RESTYPE])
If $bReturn Then
$aStorage[$iIndex][$RESOURCE_STORAGE_PTR] = Null
$aStorage[$iIndex][$RESOURCE_STORAGE_RESLANG] = Null
$aStorage[$iIndex][$RESOURCE_STORAGE_RESNAMEORID] = Null
$aStorage[$iIndex][$RESOURCE_STORAGE_RESTYPE] = Null
EndIf
EndIf
Return $bReturn
EndFunc
Global Const $FW_DONTCARE = 0
Global Const $FW_THIN = 100
Global Const $FW_EXTRALIGHT = 200
Global Const $FW_ULTRALIGHT = 200
Global Const $FW_LIGHT = 300
Global Const $FW_NORMAL = 400
Global Const $FW_REGULAR = 400
Global Const $FW_MEDIUM = 500
Global Const $FW_SEMIBOLD = 600
Global Const $FW_DEMIBOLD = 600
Global Const $FW_BOLD = 700
Global Const $FW_EXTRABOLD = 800
Global Const $FW_ULTRABOLD = 800
Global Const $FW_HEAVY = 900
Global Const $FW_BLACK = 900
Global Const $CF_EFFECTS = 0x100
Global Const $CF_PRINTERFONTS = 0x2
Global Const $CF_SCREENFONTS = 0x1
Global Const $CF_NOSCRIPTSEL = 0x800000
Global Const $CF_INITTOLOGFONTSTRUCT = 0x40
Global Const $LOGPIXELSX = 88
Global Const $LOGPIXELSY = 90
Global Const $ANSI_CHARSET = 0
Global Const $ARABIC_CHARSET = 178
Global Const $BALTIC_CHARSET = 186
Global Const $CHINESEBIG5_CHARSET = 136
Global Const $DEFAULT_CHARSET = 1
Global Const $EASTEUROPE_CHARSET = 238
Global Const $GB2312_CHARSET = 134
Global Const $GREEK_CHARSET = 161
Global Const $HANGEUL_CHARSET = 129
Global Const $HEBREW_CHARSET = 177
Global Const $JOHAB_CHARSET = 130
Global Const $MAC_CHARSET = 77
Global Const $OEM_CHARSET = 255
Global Const $RUSSIAN_CHARSET = 204
Global Const $SHIFTJIS_CHARSET = 128
Global Const $SYMBOL_CHARSET = 2
Global Const $THAI_CHARSET = 222
Global Const $TURKISH_CHARSET = 162
Global Const $VIETNAMESE_CHARSET = 163
Global Const $OUT_CHARACTER_PRECIS = 2
Global Const $OUT_DEFAULT_PRECIS = 0
Global Const $OUT_DEVICE_PRECIS = 5
Global Const $OUT_OUTLINE_PRECIS = 8
Global Const $OUT_PS_ONLY_PRECIS = 10
Global Const $OUT_RASTER_PRECIS = 6
Global Const $OUT_STRING_PRECIS = 1
Global Const $OUT_STROKE_PRECIS = 3
Global Const $OUT_TT_ONLY_PRECIS = 7
Global Const $OUT_TT_PRECIS = 4
Global Const $CLIP_CHARACTER_PRECIS = 1
Global Const $CLIP_DEFAULT_PRECIS = 0
Global Const $CLIP_DFA_DISABLE = 0x0030
Global Const $CLIP_EMBEDDED = 128
Global Const $CLIP_LH_ANGLES = 16
Global Const $CLIP_MASK = 0xF
Global Const $CLIP_DFA_OVERRIDE = 0x0040
Global Const $CLIP_STROKE_PRECIS = 2
Global Const $CLIP_TT_ALWAYS = 32
Global Const $ANTIALIASED_QUALITY = 4
Global Const $DEFAULT_QUALITY = 0
Global Const $DRAFT_QUALITY = 1
Global Const $NONANTIALIASED_QUALITY = 3
Global Const $PROOF_QUALITY = 2
Global Const $CLEARTYPE_QUALITY = 5
Global Const $DEFAULT_PITCH = 0
Global Const $FIXED_PITCH = 1
Global Const $VARIABLE_PITCH = 2
Global Const $FF_DECORATIVE = 80
Global Const $FF_DONTCARE = 0
Global Const $FF_MODERN = 48
Global Const $FF_ROMAN = 16
Global Const $FF_SCRIPT = 64
Global Const $FF_SWISS = 32
Global Const $FS_REGULAR = 0x00
Global Const $FS_BOLD = 0x01
Global Const $FS_ITALIC = 0x02
Global Const $__MISCCONSTANT_CC_ANYCOLOR = 0x0100
Global Const $__MISCCONSTANT_CC_FULLOPEN = 0x0002
Global Const $__MISCCONSTANT_CC_RGBINIT = 0x0001
Global Const $tagCHOOSECOLOR = "dword Size;hwnd hWndOwnder;handle hInstance;dword rgbResult;ptr CustColors;dword Flags;lparam lCustData;" &  "ptr lpfnHook;ptr lpTemplateName"
Global Const $tagCHOOSEFONT = "dword Size;hwnd hWndOwner;handle hDC;ptr LogFont;int PointSize;dword Flags;dword rgbColors;lparam CustData;" &  "ptr fnHook;ptr TemplateName;handle hInstance;ptr szStyle;word FontType;int SizeMin;int SizeMax"
Func _ChooseColor($vReturnType = 0, $iColorRef = 0, $iRefType = 0, $hWndOwnder = 0)
Local $tagCustcolors = "dword[16]"
Local $tChoose = DllStructCreate($tagCHOOSECOLOR)
Local Static $tCc = DllStructCreate($tagCustcolors)
Local $iReturnType, $vReturn
If $vReturnType = -9 Or $vReturnType = -10 Then
Local $a_tCc = __ChooseColor_StructToArray($tCc)
$a_tCc[0] = -1
If $vReturnType = -10 Then $tCc = DllStructCreate($tagCustcolors)
Return $a_tCc
ElseIf $vReturnType > 9 Then
$tCc = DllStructCreate($tagCustcolors)
$iReturnType = $vReturnType - 10
ElseIf IsArray($vReturnType) Then
If UBound($vReturnType, $UBOUND_ROWS) = 17 And UBound($vReturnType, $UBOUND_DIMENSIONS) = 1 Then
For $n = 1 To 16
DllStructSetData($tCc, 1, $vReturnType[$n], $n)
Next
If $vReturnType[0] = -9 Then
$vReturnType[0] = 0
Return $vReturnType
EndIf
If $vReturnType[0] > 9 Then $vReturnType[0] -= 10
$iReturnType = $vReturnType[0]
Else
Return SetError(-5, 0, -1)
EndIf
Else
$iReturnType = $vReturnType
EndIf
If $iReturnType < 0 Or $iReturnType > 2 Then
If IsArray($vReturnType) Then
$vReturnType[0] = -1
Return SetError(-4, 0, $vReturnType)
EndIf
Return SetError(-4, 0, -1)
EndIf
If $iRefType = 1 Then
$iColorRef = Int($iColorRef)
ElseIf $iRefType = 2 Then
$iColorRef = Hex(String($iColorRef), 6)
$iColorRef = '0x' & StringMid($iColorRef, 5, 2) & StringMid($iColorRef, 3, 2) & StringMid($iColorRef, 1, 2)
EndIf
DllStructSetData($tChoose, "Size", DllStructGetSize($tChoose))
DllStructSetData($tChoose, "hWndOwnder", $hWndOwnder)
DllStructSetData($tChoose, "rgbResult", $iColorRef)
DllStructSetData($tChoose, "CustColors", DllStructGetPtr($tCc))
DllStructSetData($tChoose, "Flags", BitOR($__MISCCONSTANT_CC_ANYCOLOR, $__MISCCONSTANT_CC_FULLOPEN, $__MISCCONSTANT_CC_RGBINIT))
Local $aResult = DllCall("comdlg32.dll", "bool", "ChooseColor", "struct*", $tChoose)
Local $iError = @error
If @error Then
Local $iExtended = @extended
If IsArray($vReturnType) Then
$vReturnType[0] = -1
Return SetError($iError, $iExtended, $vReturnType)
EndIf
Return SetError($iError, $iExtended, -1)
EndIf
If $aResult[0] = 0 Then
If IsArray($vReturnType) Then
$vReturnType[0] = -1
Return SetError(-3, 0, $vReturnType)
EndIf
Return SetError(-3, 0, -1)
EndIf
Local $sColor_picked = DllStructGetData($tChoose, "rgbResult")
If $iReturnType = 1 Then
$vReturn = '0x' & Hex(String($sColor_picked), 6)
ElseIf $iReturnType = 2 Then
$sColor_picked = Hex(String($sColor_picked), 6)
$vReturn = '0x' & StringMid($sColor_picked, 5, 2) & StringMid($sColor_picked, 3, 2) & StringMid($sColor_picked, 1, 2)
Else
$vReturn = $sColor_picked
EndIf
If IsArray($vReturnType) Then
$vReturnType = __ChooseColor_StructToArray($tCc)
$vReturnType[0] = $vReturn
Return $vReturnType
EndIf
Return $vReturn
EndFunc
Func __ChooseColor_StructToArray(ByRef $tStruct)
Local $aArray[17]
For $n = 1 To 16
$aArray[$n] = DllStructGetData($tStruct, 1, $n)
Next
Return $aArray
EndFunc
Func _ChooseFont($sFontName = "Courier New", $iPointSize = 10, $iFontColorRef = 0, $iFontWeight = 0, $bItalic = False, $bUnderline = False, $bStrikethru = False, $hWndOwner = 0)
Local $iItalic = 0, $iUnderline = 0, $iStrikeout = 0
$iFontColorRef = BitOR(BitShift(BitAND($iFontColorRef, 0x000000FF), -16), BitAND($iFontColorRef, 0x0000FF00), BitShift(BitAND($iFontColorRef, 0x00FF0000), 16))
Local $hDC = __MISC_GetDC(0)
Local $iHeight = Round(($iPointSize * __MISC_GetDeviceCaps($hDC, $LOGPIXELSX)) / 72, 0)
__MISC_ReleaseDC(0, $hDC)
Local $tChooseFont = DllStructCreate($tagCHOOSEFONT)
Local $tLogFont = DllStructCreate($tagLOGFONT)
DllStructSetData($tChooseFont, "Size", DllStructGetSize($tChooseFont))
DllStructSetData($tChooseFont, "hWndOwner", $hWndOwner)
DllStructSetData($tChooseFont, "LogFont", DllStructGetPtr($tLogFont))
DllStructSetData($tChooseFont, "PointSize", $iPointSize)
DllStructSetData($tChooseFont, "Flags", BitOR($CF_SCREENFONTS, $CF_PRINTERFONTS, $CF_EFFECTS, $CF_INITTOLOGFONTSTRUCT, $CF_NOSCRIPTSEL))
DllStructSetData($tChooseFont, "rgbColors", $iFontColorRef)
DllStructSetData($tChooseFont, "FontType", 0)
DllStructSetData($tLogFont, "Height", $iHeight)
DllStructSetData($tLogFont, "Weight", $iFontWeight)
DllStructSetData($tLogFont, "Italic", $bItalic)
DllStructSetData($tLogFont, "Underline", $bUnderline)
DllStructSetData($tLogFont, "Strikeout", $bStrikethru)
DllStructSetData($tLogFont, "FaceName", $sFontName)
Local $aCall = DllCall("comdlg32.dll", "bool", "ChooseFontW", "struct*", $tChooseFont)
If @error Then Return SetError(@error, @extended, -1)
If $aCall[0] = 0 Then Return SetError(-3, -3, -1)
Local $sFaceName = DllStructGetData($tLogFont, "FaceName")
If StringLen($sFaceName) = 0 And StringLen($sFontName) > 0 Then $sFaceName = $sFontName
If DllStructGetData($tLogFont, "Italic") Then $iItalic = 2
If DllStructGetData($tLogFont, "Underline") Then $iUnderline = 4
If DllStructGetData($tLogFont, "Strikeout") Then $iStrikeout = 8
Local $iAttributes = BitOR($iItalic, $iUnderline, $iStrikeout)
Local $iSize = DllStructGetData($tChooseFont, "PointSize") / 10
Local $iColorRef = DllStructGetData($tChooseFont, "rgbColors")
Local $iWeight = DllStructGetData($tLogFont, "Weight")
Local $sColor_picked = Hex(String($iColorRef), 6)
Return StringSplit($iAttributes & "," & $sFaceName & "," & $iSize & "," & $iWeight & "," & $iColorRef & "," & '0x' & $sColor_picked & "," & '0x' & StringMid($sColor_picked, 5, 2) & StringMid($sColor_picked, 3, 2) & StringMid($sColor_picked, 1, 2), ",")
EndFunc
Func _ClipPutFile($sFilePath, $sDelimiter = "|")
Local Const $GMEM_MOVEABLE = 0x0002, $CF_HDROP = 15
$sFilePath &= $sDelimiter & $sDelimiter
Local $nGlobMemSize = 2 * (StringLen($sFilePath) + 20)
Local $aCall = DllCall("user32.dll", "bool", "OpenClipboard", "hwnd", 0)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, _WinAPI_GetLastError(), False)
Local $iError = 0, $iLastError = 0
$aCall = DllCall("user32.dll", "bool", "EmptyClipboard")
If @error Or Not $aCall[0] Then
$iError = @error + 20
$iLastError = _WinAPI_GetLastError()
Else
$aCall = DllCall("kernel32.dll", "handle", "GlobalAlloc", "uint", $GMEM_MOVEABLE, "ulong_ptr", $nGlobMemSize)
If @error Or Not $aCall[0] Then
$iError = @error + 30
$iLastError = _WinAPI_GetLastError()
Else
Local $hGlobal = $aCall[0]
$aCall = DllCall("kernel32.dll", "ptr", "GlobalLock", "handle", $hGlobal)
If @error Or Not $aCall[0] Then
$iError = @error + 40
$iLastError = _WinAPI_GetLastError()
Else
Local $hLock = $aCall[0]
Local $tDROPFILES = DllStructCreate("dword pFiles;" & $tagPOINT & ";bool fNC;bool fWide;wchar[" & StringLen($sFilePath) + 1 & "]", $hLock)
If @error Then Return SetError(@error + 50, 6, False)
Local $tStruct = DllStructCreate("dword;long;long;bool;bool")
DllStructSetData($tDROPFILES, "pFiles", DllStructGetSize($tStruct))
DllStructSetData($tDROPFILES, "X", 0)
DllStructSetData($tDROPFILES, "Y", 0)
DllStructSetData($tDROPFILES, "fNC", 0)
DllStructSetData($tDROPFILES, "fWide", 1)
DllStructSetData($tDROPFILES, 6, $sFilePath)
For $i = 1 To StringLen($sFilePath)
If DllStructGetData($tDROPFILES, 6, $i) = $sDelimiter Then DllStructSetData($tDROPFILES, 6, Chr(0), $i)
Next
$aCall = DllCall("user32.dll", "handle", "SetClipboardData", "uint", $CF_HDROP, "handle", $hGlobal)
If @error Or Not $aCall[0] Then
$iError = @error + 60
$iLastError = _WinAPI_GetLastError()
EndIf
$aCall = DllCall("kernel32.dll", "bool", "GlobalUnlock", "handle", $hGlobal)
If (@error Or Not $aCall[0]) And Not $iError And _WinAPI_GetLastError() Then
$iError = @error + 80
$iLastError = _WinAPI_GetLastError()
EndIf
EndIf
$aCall = DllCall("kernel32.dll", "ptr", "GlobalFree", "handle", $hGlobal)
If (@error Or $aCall[0]) And Not $iError Then
$iError = @error + 90
$iLastError = _WinAPI_GetLastError()
EndIf
EndIf
EndIf
$aCall = DllCall("user32.dll", "bool", "CloseClipboard")
If (@error Or Not $aCall[0]) And Not $iError Then Return SetError(@error + 70, _WinAPI_GetLastError(), False)
If $iError Then Return SetError($iError, $iLastError, False)
Return True
EndFunc
Func _MouseTrap($iLeft = 0, $iTop = 0, $iRight = 0, $iBottom = 0)
Local $aCall
If $iLeft = Default Then $iLeft = 0
If $iTop = Default Then $iTop = 0
If $iRight = Default Then $iRight = 0
If $iBottom = Default Then $iBottom = 0
If @NumParams = 0 Then
$aCall = DllCall("user32.dll", "bool", "ClipCursor", "ptr", 0)
If @error Or Not $aCall[0] Then Return SetError(1, _WinAPI_GetLastError(), False)
Else
If @NumParams = 2 Then
$iRight = $iLeft + 1
$iBottom = $iTop + 1
EndIf
Local $tRECT = DllStructCreate($tagRECT)
DllStructSetData($tRECT, "Left", $iLeft)
DllStructSetData($tRECT, "Top", $iTop)
DllStructSetData($tRECT, "Right", $iRight)
DllStructSetData($tRECT, "Bottom", $iBottom)
$aCall = DllCall("user32.dll", "bool", "ClipCursor", "struct*", $tRECT)
If @error Or Not $aCall[0] Then Return SetError(2, _WinAPI_GetLastError(), False)
EndIf
Return True
EndFunc
Func _Singleton($sOccurrenceName, $iFlag = 0)
Local Const $ERROR_ALREADY_EXISTS = 183
Local Const $SECURITY_DESCRIPTOR_REVISION = 1
Local $tSecurityAttributes = 0
If BitAND($iFlag, 2) Then
Local $tSecurityDescriptor = DllStructCreate("byte;byte;word;ptr[4]")
Local $aCall = DllCall("advapi32.dll", "bool", "InitializeSecurityDescriptor",  "struct*", $tSecurityDescriptor, "dword", $SECURITY_DESCRIPTOR_REVISION)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then
$aCall = DllCall("advapi32.dll", "bool", "SetSecurityDescriptorDacl",  "struct*", $tSecurityDescriptor, "bool", 1, "ptr", 0, "bool", 0)
If @error Then Return SetError(@error, @extended, 0)
If $aCall[0] Then
$tSecurityAttributes = DllStructCreate($tagSECURITY_ATTRIBUTES)
DllStructSetData($tSecurityAttributes, 1, DllStructGetSize($tSecurityAttributes))
DllStructSetData($tSecurityAttributes, 2, DllStructGetPtr($tSecurityDescriptor))
DllStructSetData($tSecurityAttributes, 3, 0)
EndIf
EndIf
EndIf
Local $aHandle = DllCall("kernel32.dll", "handle", "CreateMutexW", "struct*", $tSecurityAttributes, "bool", 1, "wstr", $sOccurrenceName)
If @error Then Return SetError(@error, @extended, 0)
Local $aLastError = DllCall("kernel32.dll", "dword", "GetLastError")
If @error Then Return SetError(@error, @extended, 0)
If $aLastError[0] = $ERROR_ALREADY_EXISTS Then
If BitAND($iFlag, 1) Then
DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $aHandle[0])
If @error Then Return SetError(@error, @extended, 0)
Return SetError($aLastError[0], $aLastError[0], 0)
Else
Exit -1
EndIf
EndIf
Return $aHandle[0]
EndFunc
Func _IsPressed($sHexKey, $vDLL = "user32.dll")
Local $aCall = DllCall($vDLL, "short", "GetAsyncKeyState", "int", "0x" & $sHexKey)
If @error Then Return SetError(@error, @extended, False)
Return BitAND($aCall[0], 0x8000) <> 0
EndFunc
Func _VersionCompare($sVersion1, $sVersion2)
If $sVersion1 = $sVersion2 Then Return 0
Local $sSubVersion1 = "", $sSubVersion2 = ""
If StringIsAlpha(StringRight($sVersion1, 1)) Then
$sSubVersion1 = StringRight($sVersion1, 1)
$sVersion1 = StringTrimRight($sVersion1, 1)
EndIf
If StringIsAlpha(StringRight($sVersion2, 1)) Then
$sSubVersion2 = StringRight($sVersion2, 1)
$sVersion2 = StringTrimRight($sVersion2, 1)
EndIf
Local $aVersion1 = StringSplit($sVersion1, ".,"),  $aVersion2 = StringSplit($sVersion2, ".,")
Local $iPartDifference = ($aVersion1[0] - $aVersion2[0])
If $iPartDifference < 0 Then
ReDim $aVersion1[UBound($aVersion2)]
$aVersion1[0] = UBound($aVersion1) - 1
For $i = (UBound($aVersion1) - Abs($iPartDifference)) To $aVersion1[0]
$aVersion1[$i] = "0"
Next
ElseIf $iPartDifference > 0 Then
ReDim $aVersion2[UBound($aVersion1)]
$aVersion2[0] = UBound($aVersion2) - 1
For $i = (UBound($aVersion2) - Abs($iPartDifference)) To $aVersion2[0]
$aVersion2[$i] = "0"
Next
EndIf
For $i = 1 To $aVersion1[0]
If StringIsDigit($aVersion1[$i]) And StringIsDigit($aVersion2[$i]) Then
If Number($aVersion1[$i]) > Number($aVersion2[$i]) Then
Return SetExtended(2, 1)
ElseIf Number($aVersion1[$i]) < Number($aVersion2[$i]) Then
Return SetExtended(2, -1)
ElseIf $i = $aVersion1[0] Then
If $sSubVersion1 > $sSubVersion2 Then
Return SetExtended(3, 1)
ElseIf $sSubVersion1 < $sSubVersion2 Then
Return SetExtended(3, -1)
EndIf
EndIf
Else
If $aVersion1[$i] > $aVersion2[$i] Then
Return SetExtended(1, 1)
ElseIf $aVersion1[$i] < $aVersion2[$i] Then
Return SetExtended(1, -1)
EndIf
EndIf
Next
Return SetExtended(Abs($iPartDifference), 0)
EndFunc
Func __MISC_GetDC($hWnd)
Local $aCall = DllCall("user32.dll", "handle", "GetDC", "hwnd", $hWnd)
If @error Or Not $aCall[0] Then Return SetError(1, _WinAPI_GetLastError(), 0)
Return $aCall[0]
EndFunc
Func __MISC_GetDeviceCaps($hDC, $iIndex)
Local $aCall = DllCall("gdi32.dll", "int", "GetDeviceCaps", "handle", $hDC, "int", $iIndex)
If @error Then Return SetError(@error, @extended, 0)
Return $aCall[0]
EndFunc
Func __MISC_ReleaseDC($hWnd, $hDC)
Local $aCall = DllCall("user32.dll", "int", "ReleaseDC", "hwnd", $hWnd, "handle", $hDC)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0] <> 0
EndFunc
Global Const $SPI_GETBEEP = 0x0001
Global Const $SPI_SETBEEP = 0x0002
Global Const $SPI_GETMOUSE = 0x0003
Global Const $SPI_SETMOUSE = 0x0004
Global Const $SPI_GETBORDER = 0x0005
Global Const $SPI_SETBORDER = 0x0006
Global Const $SPI_GETKEYBOARDSPEED = 0x000A
Global Const $SPI_SETKEYBOARDSPEED = 0x000B
Global Const $SPI_LANGDRIVER = 0x000C
Global Const $SPI_ICONHORIZONTALSPACING = 0x000D
Global Const $SPI_GETSCREENSAVETIMEOUT = 0x000E
Global Const $SPI_SETSCREENSAVETIMEOUT = 0x000F
Global Const $SPI_GETSCREENSAVEACTIVE = 0x0010
Global Const $SPI_SETSCREENSAVEACTIVE = 0x0011
Global Const $SPI_GETGRIDGRANULARITY = 0x0012
Global Const $SPI_SETGRIDGRANULARITY = 0x0013
Global Const $SPI_SETDESKWALLPAPER = 0x0014
Global Const $SPI_SETDESKPATTERN = 0x0015
Global Const $SPI_GETKEYBOARDDELAY = 0x0016
Global Const $SPI_SETKEYBOARDDELAY = 0x0017
Global Const $SPI_ICONVERTICALSPACING = 0x0018
Global Const $SPI_GETICONTITLEWRAP = 0x0019
Global Const $SPI_SETICONTITLEWRAP = 0x001A
Global Const $SPI_GETMENUDROPALIGNMENT = 0x001B
Global Const $SPI_SETMENUDROPALIGNMENT = 0x001C
Global Const $SPI_SETDOUBLECLKWIDTH = 0x001D
Global Const $SPI_SETDOUBLECLKHEIGHT = 0x001E
Global Const $SPI_GETICONTITLELOGFONT = 0x001F
Global Const $SPI_SETDOUBLECLICKTIME = 0x0020
Global Const $SPI_SETMOUSEBUTTONSWAP = 0x0021
Global Const $SPI_SETICONTITLELOGFONT = 0x0022
Global Const $SPI_GETFASTTASKSWITCH = 0x0023
Global Const $SPI_SETFASTTASKSWITCH = 0x0024
Global Const $SPI_SETDRAGFULLWINDOWS = 0x0025
Global Const $SPI_GETDRAGFULLWINDOWS = 0x0026
Global Const $SPI_GETNONCLIENTMETRICS = 0x0029
Global Const $SPI_SETNONCLIENTMETRICS = 0x002A
Global Const $SPI_GETMINIMIZEDMETRICS = 0x002B
Global Const $SPI_SETMINIMIZEDMETRICS = 0x002C
Global Const $SPI_GETICONMETRICS = 0x002D
Global Const $SPI_SETICONMETRICS = 0x002E
Global Const $SPI_SETWORKAREA = 0x002F
Global Const $SPI_GETWORKAREA = 0x0030
Global Const $SPI_SETPENWINDOWS = 0x0031
Global Const $SPI_GETHIGHCONTRAST = 0x0042
Global Const $SPI_SETHIGHCONTRAST = 0x0043
Global Const $SPI_GETKEYBOARDPREF = 0x0044
Global Const $SPI_SETKEYBOARDPREF = 0x0045
Global Const $SPI_GETSCREENREADER = 0x0046
Global Const $SPI_SETSCREENREADER = 0x0047
Global Const $SPI_GETANIMATION = 0x0048
Global Const $SPI_SETANIMATION = 0x0049
Global Const $SPI_GETFONTSMOOTHING = 0x004A
Global Const $SPI_SETFONTSMOOTHING = 0x004B
Global Const $SPI_SETDRAGWIDTH = 0x004C
Global Const $SPI_SETDRAGHEIGHT = 0x004D
Global Const $SPI_SETHANDHELD = 0x004E
Global Const $SPI_GETLOWPOWERTIMEOUT = 0x004F
Global Const $SPI_GETPOWEROFFTIMEOUT = 0x0050
Global Const $SPI_SETLOWPOWERTIMEOUT = 0x0051
Global Const $SPI_SETPOWEROFFTIMEOUT = 0x0052
Global Const $SPI_GETLOWPOWERACTIVE = 0x0053
Global Const $SPI_GETPOWEROFFACTIVE = 0x0054
Global Const $SPI_SETLOWPOWERACTIVE = 0x0055
Global Const $SPI_SETPOWEROFFACTIVE = 0x0056
Global Const $SPI_SETCURSORS = 0x0057
Global Const $SPI_SETICONS = 0x0058
Global Const $SPI_GETDEFAULTINPUTLANG = 0x0059
Global Const $SPI_SETDEFAULTINPUTLANG = 0x005A
Global Const $SPI_SETLANGTOGGLE = 0x005B
Global Const $SPI_GETWINDOWSEXTENSION = 0x005C
Global Const $SPI_SETMOUSETRAILS = 0x005D
Global Const $SPI_GETMOUSETRAILS = 0x005E
Global Const $SPI_SETSCREENSAVERRUNNING = 0x0061
Global Const $SPI_SCREENSAVERRUNNING = $SPI_SETSCREENSAVERRUNNING
Global Const $SPI_GETFILTERKEYS = 0x0032
Global Const $SPI_SETFILTERKEYS = 0x0033
Global Const $SPI_GETTOGGLEKEYS = 0x0034
Global Const $SPI_SETTOGGLEKEYS = 0x0035
Global Const $SPI_GETMOUSEKEYS = 0x0036
Global Const $SPI_SETMOUSEKEYS = 0x0037
Global Const $SPI_GETSHOWSOUNDS = 0x0038
Global Const $SPI_SETSHOWSOUNDS = 0x0039
Global Const $SPI_GETSTICKYKEYS = 0x003A
Global Const $SPI_SETSTICKYKEYS = 0x003B
Global Const $SPI_GETACCESSTIMEOUT = 0x003C
Global Const $SPI_SETACCESSTIMEOUT = 0x003D
Global Const $SPI_GETSERIALKEYS = 0x003E
Global Const $SPI_SETSERIALKEYS = 0x003F
Global Const $SPI_GETSOUNDSENTRY = 0x0040
Global Const $SPI_SETSOUNDSENTRY = 0x0041
Global Const $SPI_GETSNAPTODEFBUTTON = 0x005F
Global Const $SPI_SETSNAPTODEFBUTTON = 0x0060
Global Const $SPI_GETMOUSEHOVERWIDTH = 0x0062
Global Const $SPI_SETMOUSEHOVERWIDTH = 0x0063
Global Const $SPI_GETMOUSEHOVERHEIGHT = 0x0064
Global Const $SPI_SETMOUSEHOVERHEIGHT = 0x0065
Global Const $SPI_GETMOUSEHOVERTIME = 0x0066
Global Const $SPI_SETMOUSEHOVERTIME = 0x0067
Global Const $SPI_GETWHEELSCROLLLINES = 0x0068
Global Const $SPI_SETWHEELSCROLLLINES = 0x0069
Global Const $SPI_GETMENUSHOWDELAY = 0x006A
Global Const $SPI_SETMENUSHOWDELAY = 0x006B
Global Const $SPI_GETSHOWIMEUI = 0x006E
Global Const $SPI_SETSHOWIMEUI = 0x006F
Global Const $SPI_GETMOUSESPEED = 0x0070
Global Const $SPI_SETMOUSESPEED = 0x0071
Global Const $SPI_GETSCREENSAVERRUNNING = 0x0072
Global Const $SPI_GETDESKWALLPAPER = 0x0073
Global Const $SPI_GETACTIVEWINDOWTRACKING = 0x1000
Global Const $SPI_SETACTIVEWINDOWTRACKING = 0x1001
Global Const $SPI_GETMENUANIMATION = 0x1002
Global Const $SPI_SETMENUANIMATION = 0x1003
Global Const $SPI_GETCOMBOBOXANIMATION = 0x1004
Global Const $SPI_SETCOMBOBOXANIMATION = 0x1005
Global Const $SPI_GETLISTBOXSMOOTHSCROLLING = 0x1006
Global Const $SPI_SETLISTBOXSMOOTHSCROLLING = 0x1007
Global Const $SPI_GETGRADIENTCAPTIONS = 0x1008
Global Const $SPI_SETGRADIENTCAPTIONS = 0x1009
Global Const $SPI_GETKEYBOARDCUES = 0x100A
Global Const $SPI_SETKEYBOARDCUES = 0x100B
Global Const $SPI_GETMENUUNDERLINES = $SPI_GETKEYBOARDCUES
Global Const $SPI_SETMENUUNDERLINES = $SPI_SETKEYBOARDCUES
Global Const $SPI_GETACTIVEWNDTRKZORDER = 0x100C
Global Const $SPI_SETACTIVEWNDTRKZORDER = 0x100D
Global Const $SPI_GETHOTTRACKING = 0x100E
Global Const $SPI_SETHOTTRACKING = 0x100F
Global Const $SPI_GETMENUFADE = 0x1012
Global Const $SPI_SETMENUFADE = 0x1013
Global Const $SPI_GETSELECTIONFADE = 0x1014
Global Const $SPI_SETSELECTIONFADE = 0x1015
Global Const $SPI_GETTOOLTIPANIMATION = 0x1016
Global Const $SPI_SETTOOLTIPANIMATION = 0x1017
Global Const $SPI_GETTOOLTIPFADE = 0x1018
Global Const $SPI_SETTOOLTIPFADE = 0x1019
Global Const $SPI_GETCURSORSHADOW = 0x101A
Global Const $SPI_SETCURSORSHADOW = 0x101B
Global Const $SPI_GETMOUSESONAR = 0x101C
Global Const $SPI_SETMOUSESONAR = 0x101D
Global Const $SPI_GETMOUSECLICKLOCK = 0x101E
Global Const $SPI_SETMOUSECLICKLOCK = 0x101F
Global Const $SPI_GETMOUSEVANISH = 0x1020
Global Const $SPI_SETMOUSEVANISH = 0x1021
Global Const $SPI_GETFLATMENU = 0x1022
Global Const $SPI_SETFLATMENU = 0x1023
Global Const $SPI_GETDROPSHADOW = 0x1024
Global Const $SPI_SETDROPSHADOW = 0x1025
Global Const $SPI_GETBLOCKSENDINPUTRESETS = 0x1026
Global Const $SPI_SETBLOCKSENDINPUTRESETS = 0x1027
Global Const $SPI_GETUIEFFECTS = 0x103E
Global Const $SPI_SETUIEFFECTS = 0x103F
Global Const $SPI_GETFOREGROUNDLOCKTIMEOUT = 0x2000
Global Const $SPI_SETFOREGROUNDLOCKTIMEOUT = 0x2001
Global Const $SPI_GETACTIVEWNDTRKTIMEOUT = 0x2002
Global Const $SPI_SETACTIVEWNDTRKTIMEOUT = 0x2003
Global Const $SPI_GETFOREGROUNDFLASHCOUNT = 0x2004
Global Const $SPI_SETFOREGROUNDFLASHCOUNT = 0x2005
Global Const $SPI_GETCARETWIDTH = 0x2006
Global Const $SPI_SETCARETWIDTH = 0x2007
Global Const $SPI_GETMOUSECLICKLOCKTIME = 0x2008
Global Const $SPI_SETMOUSECLICKLOCKTIME = 0x2009
Global Const $SPI_GETFONTSMOOTHINGTYPE = 0x200A
Global Const $SPI_SETFONTSMOOTHINGTYPE = 0x200B
Global Const $SPI_GETFONTSMOOTHINGCONTRAST = 0x200C
Global Const $SPI_SETFONTSMOOTHINGCONTRAST = 0x200D
Global Const $SPI_GETFOCUSBORDERWIDTH = 0x200E
Global Const $SPI_SETFOCUSBORDERWIDTH = 0x200F
Global Const $SPI_GETFOCUSBORDERHEIGHT = 0x2010
Global Const $SPI_SETFOCUSBORDERHEIGHT = 0x2011
Global Const $SPI_GETFONTSMOOTHINGORIENTATION = 0x2012
Global Const $SPI_SETFONTSMOOTHINGORIENTATION = 0x2013
Global Const $FE_FONTSMOOTHINGSTANDARD = 0x0001
Global Const $FE_FONTSMOOTHINGCLEARTYPE = 0x0002
Global Const $FE_FONTSMOOTHINGDOCKING = 0x8000
Global Const $FE_FONTSMOOTHINGORIENTATIONBGR = 0x0000
Global Const $FE_FONTSMOOTHINGORIENTATIONRGB = 0x0001
Global Const $SPIF_UPDATEINIFILE = 0x0001
Global Const $SPIF_SENDWININICHANGE = 0x0002
Global Const $SPIF_SENDCHANGE = $SPIF_SENDWININICHANGE
Global Enum $DPI_AWARENESS_INVALID = -1, $DPI_AWARENESS_UNAWARE = 0, $DPI_AWARENESS_SYSTEM_AWARE = 1, $DPI_AWARENESS_PER_MONITOR_AWARE = 2
Global Const $DPI_AWARENESS_CONTEXT_UNAWARE = $DPI_AWARENESS_UNAWARE - 1
Global Const $DPI_AWARENESS_CONTEXT_SYSTEM_AWARE = $DPI_AWARENESS_UNAWARE - 2
Global Const $DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE = $DPI_AWARENESS_UNAWARE - 3
Global Const $DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2 = $DPI_AWARENESS_UNAWARE - 4
Global Const $DPI_AWARENESS_CONTEXT_UNAWARE_GDISCALED = $DPI_AWARENESS_UNAWARE - 5
Global Enum $MDT_EFFECTIVE_DPI = 0, $MDT_ANGULAR_DPI, $MDT_RAW_DPI
Global Const $MDT_DEFAULT = $MDT_EFFECTIVE_DPI
Global Const $WM_DPICHANGED = 0x02E0, $WM_DPICHANGED_BEFOREPARENT = 0x02E2, $WM_DPICHANGED_AFTERPARENT = 0x02E3, $WM_GETDPISCALEDSIZE = 0x02E4
Func _WinAPI_AdjustWindowRectExForDpi($dpi, $dwStyle, $dwExStyle, $bMenu = False)
Local $tRECT = DllStructCreate($tagRECT)
Local $aResult = DllCall("user32.dll", "bool", "AdjustWindowRectExForDpi", "struct*", $tRECT, "dword", $dwStyle, "bool", $bMenu, "dword", $dwExStyle, "int", $dpi)
If Not IsArray($aResult) Or @error Then Return SetError(1, @extended, 0)
If $aResult[0] Then Return SetError(2, @extended, 0)
Return $tRECT
EndFunc
Func _WinAPI_SystemParametersInfoForDpi($uiAction, $uiParam, $pvParam, $fWinIni, $dpi)
Local $aResult = DllCall("user32.dll", "bool", "SystemParametersInfoForDpi", "uint", $uiAction, "uint", $uiParam, "struct*", $pvParam, "uint", $fWinIni, "uint", $dpi)
If Not IsArray($aResult) Or @error Then Return SetError(1, @extended, 0)
If Not $aResult[0] Then Return SetError(2, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_InheritWindowMonitor($hWnd, $hWndInherit)
Local $aResult = DllCall("user32.dll", "bool", "InheritWindowMonitor", "hwnd", $hWnd, "hwnd", $hWndInherit)
If Not IsArray($aResult) Or @error Then Return SetError(1, @extended, 0)
If Not $aResult[0] Then Return SetError(2, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_IsValidDpiAwarenessContext($DPI_AWARENESS_CONTEXT_value)
Local $aResult = DllCall("user32.dll", "bool", "IsValidDpiAwarenessContext", @AutoItX64 ? "int64" : "int", $DPI_AWARENESS_CONTEXT_value)
If Not IsArray($aResult) Or @error Then Return SetError(1, @extended, 0)
If Not $aResult[0] Then Return SetError(2, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_LogicalToPhysicalPointForPerMonitorDPI($hWnd)
Local $tPOINT = DllStructCreate($tagPOINT)
Local $aResult = DllCall("user32.dll", "bool", "LogicalToPhysicalPointForPerMonitorDPI", "hwnd", $hWnd, "struct*", $tPOINT)
If Not IsArray($aResult) Or @error Then Return SetError(1, @extended, 0)
If Not $aResult[0] Then Return SetError(2, @extended, 0)
Return $tPOINT
EndFunc
Func _WinAPI_PhysicalToLogicalPointForPerMonitorDPI($hWnd)
Local $tPOINT = DllStructCreate($tagPOINT)
Local $aResult = DllCall("user32.dll", "bool", "PhysicalToLogicalPointForPerMonitorDPI", "hwnd", $hWnd, "struct*", $tPOINT)
If Not IsArray($aResult) Or @error Then Return SetError(1, @extended, 0)
If Not $aResult[0] Then Return SetError(2, @extended, 0)
Return $tPOINT
EndFunc
Func _GDIPlus_GetDPI($hGUI = 0)
_GDIPlus_Startup()
Local $hGfx = _GDIPlus_GraphicsCreateFromHWND($hGUI)
If @error Then Return SetError(1, @extended, 0)
Local $aResult = DllCall($__g_hGDIPDll, "int", "GdipGetDpiX", "handle", $hGfx, "float*", 0)
If @error Then Return SetError(2, @extended, 0)
_GDIPlus_GraphicsDispose($hGfx)
_GDIPlus_Shutdown()
Return $aResult[2]
EndFunc
Func _WinAPI_GetDPI($hWnd = 0)
$hWnd = Not $hWnd ? _WinAPI_GetDesktopWindow() : $hWnd
Local Const $hDC = _WinAPI_GetDC($hWnd)
If @error Then Return SetError(1, 0, 0)
Local Const $iDPI = _WinAPI_GetDeviceCaps($hDC, $LOGPIXELSX)
If @error Or Not $iDPI Then
_WinAPI_ReleaseDC($hWnd, $hDC)
Return SetError(2, 0, 0)
EndIf
_WinAPI_ReleaseDC($hWnd, $hDC)
Return $iDPI
EndFunc
Func _WinAPI_GetDpiForPrimaryMonitor($hMOnitor = 0, $dpiType = $MDT_DEFAULT)
If $hMOnitor = 0 Then
Local $aMonitors = _WinAPI_EnumDisplayMonitors()
If @error Or Not IsArray($aMonitors) Then Return SetError(1, 0, 0)
Local $i
For $i = 1 To $aMonitors[0][0]
If _WinAPI_GetMonitorInfo($aMonitors[$i][0])[2] = 1 Then
$hMOnitor = $aMonitors[$i][0]
ExitLoop
EndIf
Next
EndIf
Local $tx = DllStructCreate("int dpiX"), $tY = DllStructCreate("int dpiY")
Local $aResult = DllCall("Shcore.dll", "long", "GetDpiForMonitor", "handle", $hMOnitor, "long", $dpiType, "struct*", $tx, "struct*", $tY)
If @error Or Not IsArray($aResult) Then Return SetError(2, 0, 0)
Return $tx.dpiX
EndFunc
Func _WinAPI_GetDpiForWindow($hWnd)
Local $aResult = DllCall("user32.dll", "uint", "GetDpiForWindow", "hwnd", $hWnd)
If Not IsArray($aResult) Or @error Then Return SetError(1, @extended, 0)
If Not $aResult[0] Then Return SetError(2, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_GetDpiForSystem()
Local $aResult = DllCall("user32.dll", "uint", "GetDpiForSystem")
If Not IsArray($aResult) Or @error Then Return SetError(1, @extended, 0)
If Not $aResult[0] Then Return SetError(2, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_GetThreadDpiAwarenessContext()
Local $aResult = DllCall("user32.dll", "uint", "GetThreadDpiAwarenessContext")
If Not IsArray($aResult) Or @error Then Return SetError(1, @extended, 0)
If Not $aResult[0] Then Return SetError(2, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_GetDpiFromDpiAwarenessContext($DPI_AWARENESS_CONTEXT_value)
Local $aResult = DllCall("user32.dll", "uint", "GetDpiFromDpiAwarenessContext", @AutoItX64 ? "int64" : "int", $DPI_AWARENESS_CONTEXT_value)
If Not IsArray($aResult) Or @error Then Return SetError(1, @extended, 0)
If Not $aResult[0] Then Return SetError(2, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_GetAwarenessFromDpiAwarenessContext($DPI_AWARENESS_CONTEXT_value)
Local $aResult = DllCall("user32.dll", "uint", "GetAwarenessFromDpiAwarenessContext", @AutoItX64 ? "int64" : "int", $DPI_AWARENESS_CONTEXT_value)
If Not IsArray($aResult) Or @error Then Return SetError(1, @extended, 0)
If Not $aResult[0] Then Return SetError(2, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_GetDpiAwarenessContextForProcess($hProcess)
Local $aResult = DllCall("user32.dll", "uint", "GetDpiAwarenessContextForProcess", "handle", $hProcess)
If Not IsArray($aResult) Or @error Then Return SetError(1, @extended, 0)
If Not $aResult[0] Then Return SetError(2, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_GetSystemDpiForProcess($hProcess)
Local $aResult = DllCall("user32.dll", "uint", "GetSystemDpiForProcess", "handle", $hProcess)
If Not IsArray($aResult) Or @error Then Return SetError(1, @extended, 0)
If Not $aResult[0] Then Return SetError(2, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_GetWindowDpiAwarenessContext($hWnd)
Local $aResult = DllCall("user32.dll", "uint", "GetWindowDpiAwarenessContext", "hwnd", $hWnd)
If Not IsArray($aResult) Or @error Then Return SetError(1, @extended, 0)
If Not $aResult[0] Then Return SetError(2, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_SetProcessDpiAwarenessContext($DPI_AWARENESS_CONTEXT_value)
Local $aResult = DllCall("user32.dll", "bool", "SetProcessDpiAwarenessContext", @AutoItX64 ? "int64" : "int", $DPI_AWARENESS_CONTEXT_value)
If Not IsArray($aResult) Or @error Then Return SetError(1, @extended, 0)
If Not $aResult[0] Then Return SetError(2, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_SetThreadDpiAwarenessContext($DPI_AWARENESS_CONTEXT_value)
Local $aResult = DllCall("user32.dll", "uint", "SetThreadDpiAwarenessContext", @AutoItX64 ? "int64" : "int", $DPI_AWARENESS_CONTEXT_value)
If Not IsArray($aResult) Or @error Then Return SetError(1, @extended, 0)
If Not $aResult[0] Then Return SetError(2, @extended, 0)
Return $aResult[0]
EndFunc
Func _WinAPI_SetProcessDpiAwareness($PROCESS_DPI_AWARENESS = $DPI_AWARENESS_PER_MONITOR_AWARE)
Local $aResult = DllCall("Shcore.dll", "long", "SetProcessDpiAwareness", "int", $PROCESS_DPI_AWARENESS)
If Not IsArray($aResult) Or @error Then Return SetError(1, @extended, 0)
If $aResult[0] Then Return SetError(2, $aResult[0], 0)
Return $aResult[0]
EndFunc
Func _WinAPI_SetDPIAwareness($DPIAwareContext = $DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE, $iMode = 1)
Switch @OSBuild
Case 6000 To 9199
Local $aResult = DllCall("user32.dll", "bool", "SetProcessDPIAware")
If Not $aResult[0] Then Return SetError(1, 0, 0)
Case 9200 To 13999
$DPIAwareContext = ($DPIAwareContext < 0) ? 0 : ($DPIAwareContext > 2) ? 2 : $DPIAwareContext
_WinAPI_SetProcessDpiAwareness($DPIAwareContext)
If @error Then Return SetError(2, @error, 0)
Case @OSBuild > 13999
$DPIAwareContext = ($DPIAwareContext < -5) ? -5 : ($DPIAwareContext > -1) ? -1 : $DPIAwareContext
$iMode = ($iMode < 1) ? 1 : ($iMode > 2) ? 2 : $iMode
Local $iResult
Switch $iMode
Case 1
$iResult = _WinAPI_SetProcessDpiAwarenessContext($DPIAwareContext)
If Not $iResult Or @error Then Return SetError(3, 0, 0)
Case 2
$iResult = _WinAPI_SetThreadDpiAwarenessContext($DPIAwareContext)
If Not $iResult Or @error Then Return SetError(4, 0, 0)
EndSwitch
EndSwitch
Local $iDPI
If @OSBuild < 9200 Then
$iDPI = _WinAPI_GetDPI()
If @error Or Not $iDPI Then Return SetError(5, 0, 0)
Else
$iDPI = _WinAPI_GetDpiForPrimaryMonitor()
If @error Or Not $iDPI Then Return SetError(6, 0, 0)
EndIf
Return $iDPI
EndFunc
Func _ArrayNaturalSort(ByRef $avArray, $iDescending = 0, $iStart = 0, $iEnd = 0, $iSubItem = 0)
Return _ArrayCustomSort($avArray, "_NaturalCompare", $iDescending, $iStart, $iEnd, $iSubItem)
EndFunc
Global $_g_ArrayDisplay_bUserFunc = False
Global $_g_ArrayDisplay_hListView
Global $_g_ArrayDisplay_iTranspose
Global $_g_ArrayDisplay_iDisplayRow
Global $_g_ArrayDisplay_aArray
Global $_g_ArrayDisplay_iDims
Global $_g_ArrayDisplay_nRows
Global $_g_ArrayDisplay_nCols
Global $_g_ArrayDisplay_iItem_Start
Global $_g_ArrayDisplay_iItem_End
Global $_g_ArrayDisplay_iSubItem_Start
Global $_g_ArrayDisplay_iSubItem_End
Global $_g_ArrayDisplay_aIndex
Global $_g_ArrayDisplay_aIndexes[1]
Global $_g_ArrayDisplay_iSortDir
Global $_g_ArrayDisplay_asHeader
Global $_g_ArrayDisplay_aNumericSort
Global $ARRAYDISPLAY_ROWPREFIX = "#"
Global $ARRAYDISPLAY_NUMERICSORT = "*"
Global Const $ARRAYDISPLAY_COLALIGNLEFT = 0
Global Const $ARRAYDISPLAY_TRANSPOSE = 1
Global Const $ARRAYDISPLAY_COLALIGNRIGHT = 2
Global Const $ARRAYDISPLAY_COLALIGNCENTER = 4
Global Const $ARRAYDISPLAY_VERBOSE = 8
Global Const $ARRAYDISPLAY_NOROW = 64
Global Const $ARRAYDISPLAY_CHECKERROR = 128
Global Const $_ARRAYCONSTANT_tagLVITEM = "struct;uint Mask;int Item;int SubItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;lparam Param;" &  "int Indent;int GroupID;uint Columns;ptr pColumns;ptr piColFmt;int iGroup;endstruct"
Func __ArrayDisplay_Share(Const ByRef $aArray, $sTitle = Default, $sArrayRange = Default, $iFlags = Default, $vUser_Separator = Default, $sHeader = Default, $iDesired_Colwidth = Default, $hUser_Function = Default, $bDebug = True, Const $_iScriptLineNumber = @ScriptLineNumber, Const $_iCallerError = @error, Const $_iCallerExtended = @extended)
Local $sMsgBoxTitle = (($bDebug) ? ("_DebugArrayDisplay") : ("_ArrayDisplay"))
If $_g_ArrayDisplay_bUserFunc Then
$hUser_Function = Default
$bDebug = False
EndIf
If Not IsKeyword($hUser_Function) = $KEYWORD_DEFAULT Then
$_g_ArrayDisplay_bUserFunc = True
EndIf
If $sTitle = Default Then $sTitle = $sMsgBoxTitle
If $sArrayRange = Default Then $sArrayRange = ""
If $iFlags = Default Then $iFlags = 0
If $vUser_Separator = Default Then $vUser_Separator = ""
If $sHeader = Default Then $sHeader = ""
Local $iMin_ColWidth = 55
Local $iMax_ColWidth = 350
If $iDesired_Colwidth > 0 Then $iMax_ColWidth = $iDesired_Colwidth
If $iDesired_Colwidth < 0 Then $iMin_ColWidth = -$iDesired_Colwidth
If $iMax_ColWidth = Default Then $iMax_ColWidth = 350
If $iMax_ColWidth > 4095 Then $iMax_ColWidth = 4095
If $hUser_Function = Default Then $hUser_Function = 0
$_g_ArrayDisplay_iTranspose = BitAND($iFlags, $ARRAYDISPLAY_TRANSPOSE)
Local $iColAlign = BitAND($iFlags, 6)
Local $iVerbose = Int(BitAND($iFlags, $ARRAYDISPLAY_VERBOSE))
$_g_ArrayDisplay_iDisplayRow = Int(BitAND($iFlags, $ARRAYDISPLAY_NOROW) = 0)
Local $iButtonBorder = (($bDebug) ? (40) : (20))
Local $sMsg = "", $iRet = 1
Local $fTimer = 0
If IsArray($aArray) Then
$_g_ArrayDisplay_aArray = $aArray
$_g_ArrayDisplay_iDims = UBound($_g_ArrayDisplay_aArray, $UBOUND_DIMENSIONS)
If $_g_ArrayDisplay_iDims = 1 Then $_g_ArrayDisplay_iTranspose = 0
$_g_ArrayDisplay_nRows = UBound($_g_ArrayDisplay_aArray, $UBOUND_ROWS)
$_g_ArrayDisplay_nCols = ($_g_ArrayDisplay_iDims = 2) ? UBound($_g_ArrayDisplay_aArray, $UBOUND_COLUMNS) : 1
Dim $_g_ArrayDisplay_aNumericSort[$_g_ArrayDisplay_nCols]
If $_g_ArrayDisplay_iDims > 2 Then
$sMsg = "Larger than 2D array passed to function"
$iRet = 2
EndIf
If $_iCallerError Then
If $bDebug Then
If IsDeclared("__g_sReportCallBack_DebugReport_Debug") Then
$sMsg = "@@ Debug( " & $_iScriptLineNumber & ") : @error = " & $_iCallerError & " in " & $sMsgBoxTitle & "( '" & $sTitle & "' )"
Execute('$__g_sReportCallBack_DebugReport_Debug("' & $sMsg & '")')
EndIf
$iRet = 3
ElseIf BitAND($iFlags, $ARRAYDISPLAY_CHECKERROR) Then
$sMsg = "@error = " & $_iCallerError & " when calling the function"
If $_iScriptLineNumber > 0 Then $sMsg &= " at line " & $_iScriptLineNumber
$iRet = 3
EndIf
EndIf
Else
$sMsg = "No array variable passed to function"
EndIf
If $sMsg Then
If $iVerbose And MsgBox($MB_SYSTEMMODAL + $MB_ICONERROR + $MB_YESNO,  $sMsgBoxTitle & "() Error: " & $sTitle, $sMsg & @CRLF & @CRLF & "Exit the script?") = $IDYES Then
Exit
Else
Return SetError($iRet, 0, 0)
EndIf
EndIf
Local $iCW_ColWidth = Number($vUser_Separator)
Local $sCurr_Separator = Opt("GUIDataSeparatorChar")
If $vUser_Separator = "" Then $vUser_Separator = $sCurr_Separator
$_g_ArrayDisplay_iItem_Start = 0
$_g_ArrayDisplay_iItem_End = $_g_ArrayDisplay_nRows - 1
$_g_ArrayDisplay_iSubItem_Start = 0
$_g_ArrayDisplay_iSubItem_End = (($_g_ArrayDisplay_iDims = 2) ? ($_g_ArrayDisplay_nCols - 1) : (0))
Local $avRangeSplit
If $sArrayRange Then
Local $vTmp, $aArray_Range = StringRegExp($sArrayRange & "||", "(?U)(.*)\|", $STR_REGEXPARRAYGLOBALMATCH)
If $aArray_Range[0] Then
$avRangeSplit = StringSplit($aArray_Range[0], ":")
If @error Then
$_g_ArrayDisplay_iItem_End = Number($aArray_Range[0])
Else
$_g_ArrayDisplay_iItem_Start = Number($avRangeSplit[1])
If $avRangeSplit[2] <> "" Then
$_g_ArrayDisplay_iItem_End = Number($avRangeSplit[2])
EndIf
EndIf
EndIf
If $_g_ArrayDisplay_iItem_Start < 0 Then $_g_ArrayDisplay_iItem_Start = 0
If $_g_ArrayDisplay_iItem_End >= $_g_ArrayDisplay_nRows Then $_g_ArrayDisplay_iItem_End = $_g_ArrayDisplay_nRows - 1
If ($_g_ArrayDisplay_iItem_Start > $_g_ArrayDisplay_iItem_End) And ($_g_ArrayDisplay_iItem_End > 0) Then
$vTmp = $_g_ArrayDisplay_iItem_Start
$_g_ArrayDisplay_iItem_Start = $_g_ArrayDisplay_iItem_End
$_g_ArrayDisplay_iItem_End = $vTmp
EndIf
If $_g_ArrayDisplay_iDims = 2 And $aArray_Range[1] Then
$avRangeSplit = StringSplit($aArray_Range[1], ":")
If @error Then
$_g_ArrayDisplay_iSubItem_End = Number($aArray_Range[1])
Else
$_g_ArrayDisplay_iSubItem_Start = Number($avRangeSplit[1])
If $avRangeSplit[2] <> "" Then
$_g_ArrayDisplay_iSubItem_End = Number($avRangeSplit[2])
EndIf
EndIf
If $_g_ArrayDisplay_iSubItem_Start > $_g_ArrayDisplay_iSubItem_End Then
$vTmp = $_g_ArrayDisplay_iSubItem_Start
$_g_ArrayDisplay_iSubItem_Start = $_g_ArrayDisplay_iSubItem_End
$_g_ArrayDisplay_iSubItem_End = $vTmp
EndIf
If $_g_ArrayDisplay_iSubItem_Start < 0 Then $_g_ArrayDisplay_iSubItem_Start = 0
If $_g_ArrayDisplay_iSubItem_End >= $_g_ArrayDisplay_nCols Then $_g_ArrayDisplay_iSubItem_End = $_g_ArrayDisplay_nCols - 1
EndIf
EndIf
Local $sDisplayData = "[" & $_g_ArrayDisplay_nRows & "]"
If $_g_ArrayDisplay_iDims = 2 Then
$sDisplayData &= " [" & $_g_ArrayDisplay_nCols & "]"
EndIf
Local $sTipData = ""
If $sArrayRange Then
If $sTipData Then $sTipData &= " - "
$sTipData &= "Range set " & $sArrayRange
EndIf
If $_g_ArrayDisplay_iTranspose Then
If $sTipData Then $sTipData &= " - "
$sTipData &= "Transposed"
EndIf
If $sArrayRange Or $_g_ArrayDisplay_iTranspose Then $_g_ArrayDisplay_aArray = __ArrayDisplay_CreateSubArray()
$_g_ArrayDisplay_asHeader = StringSplit($sHeader, $sCurr_Separator, $STR_NOCOUNT)
If UBound($_g_ArrayDisplay_asHeader) = 0 Then Dim $_g_ArrayDisplay_asHeader[1] = [""]
$sHeader = "Row"
Local $iIndex = $_g_ArrayDisplay_iSubItem_Start
If $_g_ArrayDisplay_iTranspose Then
$sHeader = "Row"
For $j = 0 To $_g_ArrayDisplay_nCols - 1
$sHeader &= $sCurr_Separator & $ARRAYDISPLAY_ROWPREFIX & " " & $j + $_g_ArrayDisplay_iSubItem_Start
Next
Else
If $_g_ArrayDisplay_asHeader[0] Then
For $iIndex = $_g_ArrayDisplay_iSubItem_Start To $_g_ArrayDisplay_iSubItem_End
If $iIndex >= UBound($_g_ArrayDisplay_asHeader) Then ExitLoop
If StringRight($_g_ArrayDisplay_asHeader[$iIndex], 1) = $ARRAYDISPLAY_NUMERICSORT Then
$_g_ArrayDisplay_asHeader[$iIndex] = StringTrimRight($_g_ArrayDisplay_asHeader[$iIndex], 1)
$_g_ArrayDisplay_aNumericSort[$iIndex - $_g_ArrayDisplay_iSubItem_Start] = 1
EndIf
$sHeader &= $sCurr_Separator & $_g_ArrayDisplay_asHeader[$iIndex]
Next
EndIf
For $j = $iIndex To $_g_ArrayDisplay_iSubItem_End
$sHeader &= $sCurr_Separator & "Col " & $j
Next
EndIf
If Not $_g_ArrayDisplay_iDisplayRow Then $sHeader = StringTrimLeft($sHeader, 4)
__ArrayDisplay_SortIndexes(0, -1)
Local $hTimer = TimerInit()
__ArrayDisplay_SortIndexes(1, 1)
$fTimer = TimerDiff($hTimer)
If $fTimer * $_g_ArrayDisplay_nCols < 1000 Then
__ArrayDisplay_SortIndexes(2, $_g_ArrayDisplay_nCols)
Else
EndIf
If $iVerbose And ($_g_ArrayDisplay_nRows * $_g_ArrayDisplay_nCols) > 1000 Then
SplashTextOn($sMsgBoxTitle, "Preparing display" & @CRLF & @CRLF & "Please be patient", 300, 100)
EndIf
Local Const $_ARRAYCONSTANT_GUI_DOCKBOTTOM = 64
Local Const $_ARRAYCONSTANT_GUI_DOCKBORDERS = 102
Local Const $_ARRAYCONSTANT_GUI_DOCKHEIGHT = 512
Local Const $_ARRAYCONSTANT_GUI_DOCKLEFT = 2
Local Const $_ARRAYCONSTANT_GUI_DOCKRIGHT = 4
Local Const $_ARRAYCONSTANT_GUI_DOCKHCENTER = 8
Local Const $_ARRAYCONSTANT_GUI_EVENT_CLOSE = -3
Local Const $_ARRAYCONSTANT_GUI_EVENT_ARRAY = 1
Local Const $_ARRAYCONSTANT_GUI_FOCUS = 256
Local Const $_ARRAYCONSTANT_SS_CENTER = 0x1
Local Const $_ARRAYCONSTANT_SS_CENTERIMAGE = 0x0200
Local Const $_ARRAYCONSTANT_LVM_GETITEMRECT = (0x1000 + 14)
Local Const $_ARRAYCONSTANT_LVM_GETITEMSTATE = (0x1000 + 44)
Local Const $_ARRAYCONSTANT_LVM_GETSELECTEDCOUNT = (0x1000 + 50)
Local Const $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE = (0x1000 + 54)
Local Const $_ARRAYCONSTANT_LVS_EX_GRIDLINES = 0x1
Local Const $_ARRAYCONSTANT_LVIS_SELECTED = 0x0002
Local Const $_ARRAYCONSTANT_LVS_SHOWSELALWAYS = 0x8
Local Const $_ARRAYCONSTANT_LVS_OWNERDATA = 0x1000
Local Const $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT = 0x20
Local Const $_ARRAYCONSTANT_LVS_EX_DOUBLEBUFFER = 0x00010000
Local Const $_ARRAYCONSTANT_WS_EX_CLIENTEDGE = 0x0200
Local Const $_ARRAYCONSTANT_WS_MAXIMIZEBOX = 0x00010000
Local Const $_ARRAYCONSTANT_WS_MINIMIZEBOX = 0x00020000
Local Const $_ARRAYCONSTANT_WS_SIZEBOX = 0x00040000
Local $iCoordMode = Opt("GUICoordMode", 1)
Local $iOrgWidth = 210, $iHeight = 200, $iMinSize = 250
Local $hGUI = GUICreate($sTitle, $iOrgWidth, $iHeight, Default, Default, BitOR($_ARRAYCONSTANT_WS_SIZEBOX, $_ARRAYCONSTANT_WS_MINIMIZEBOX, $_ARRAYCONSTANT_WS_MAXIMIZEBOX))
Local $aiGUISize = WinGetClientSize($hGUI)
Local $idListView = GUICtrlCreateListView($sHeader, 0, 0, $aiGUISize[0], $aiGUISize[1] - $iButtonBorder, BitOR($_ARRAYCONSTANT_LVS_SHOWSELALWAYS, $_ARRAYCONSTANT_LVS_OWNERDATA))
$_g_ArrayDisplay_hListView = GUICtrlGetHandle($idListView)
GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE, $_ARRAYCONSTANT_LVS_EX_GRIDLINES, $_ARRAYCONSTANT_LVS_EX_GRIDLINES)
GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE, $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT, $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT)
GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE, $_ARRAYCONSTANT_LVS_EX_DOUBLEBUFFER, $_ARRAYCONSTANT_LVS_EX_DOUBLEBUFFER)
GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE, $_ARRAYCONSTANT_WS_EX_CLIENTEDGE, $_ARRAYCONSTANT_WS_EX_CLIENTEDGE)
Local $hHeader = HWnd(GUICtrlSendMsg($idListView, (0x1000 + 31), 0, 0))
GUICtrlSetResizing($idListView, $_ARRAYCONSTANT_GUI_DOCKBORDERS)
Local $iColFill = $_g_ArrayDisplay_nCols + $_g_ArrayDisplay_iDisplayRow
If $iColAlign Then
For $i = 0 To $iColFill - 1
__ArrayDisplay_JustifyColumn($idListView, $i, $iColAlign / 2)
Next
EndIf
GUICtrlSendMsg($idListView, (0x1000 + 47), $_g_ArrayDisplay_nRows, 0)
Local $tRECT = DllStructCreate("struct; long Left;long Top;long Right;long Bottom; endstruct")
DllCall("user32.dll", "struct*", "SendMessageW", "hwnd", $_g_ArrayDisplay_hListView, "uint", $_ARRAYCONSTANT_LVM_GETITEMRECT, "wparam", 0, "struct*", $tRECT)
Local $aiWin_Pos = WinGetPos($hGUI)
Local $aiLV_Pos = ControlGetPos($hGUI, "", $idListView)
$iHeight = (($_g_ArrayDisplay_nRows + 3) * (DllStructGetData($tRECT, "Bottom") - DllStructGetData($tRECT, "Top"))) + $aiWin_Pos[3] - $aiLV_Pos[3]
If $iHeight > @DesktopHeight - 100 Then
$iHeight = @DesktopHeight - 100
ElseIf $iHeight < $iMinSize Then
$iHeight = $iMinSize
EndIf
If $iVerbose Then SplashOff()
$_g_ArrayDisplay_iSortDir = 0x00000400
Local $iColumn = 0, $iColumnPrev = -1
If $_g_ArrayDisplay_iDisplayRow Then
$iColumnPrev = $iColumn
__ArrayDisplay_HeaderSetItemFormat($hHeader, $iColumn, 0x00004000 + $_g_ArrayDisplay_iSortDir + $iColAlign / 2)
EndIf
$_g_ArrayDisplay_aIndex = $_g_ArrayDisplay_aIndexes[0]
Local $p__ArrayDisplay_NotifyHandler = DllCallbackGetPtr(DllCallbackRegister("__ArrayDisplay_NotifyHandler", "lresult", "hwnd;uint;wparam;lparam;uint_ptr;dword_ptr"))
DllCall("comctl32.dll", "bool", "SetWindowSubclass", "hwnd", $hGUI, "ptr", $p__ArrayDisplay_NotifyHandler, "uint_ptr", 0, "dword_ptr", 0)
Local $iWidth = 40, $iColWidth = 0, $aiColWidth[$iColFill]
Local $iColWidthHeader, $iMin_ColW = 55
For $i = 0 To $iColFill - 1
If $i > 0 Then $iMin_ColW = $iMin_ColWidth
GUICtrlSendMsg($idListView, (0x1000 + 30), $i, -1)
$iColWidth = GUICtrlSendMsg($idListView, (0x1000 + 29), $i, 0)
If $sHeader <> "" Then
If $iColWidth = 0 Then ExitLoop
GUICtrlSendMsg($idListView, (0x1000 + 30), $i, -2)
$iColWidthHeader = GUICtrlSendMsg($idListView, (0x1000 + 29), $i, 0)
If $iColWidth < $iMin_ColW And $iColWidthHeader < $iMin_ColW Then
GUICtrlSendMsg($idListView, (0x1000 + 30), $i, $iMin_ColW)
$iColWidth = $iMin_ColW
ElseIf $iColWidthHeader < $iColWidth Then
GUICtrlSendMsg($idListView, (0x1000 + 30), $i, $iColWidth)
Else
$iColWidth = $iColWidthHeader
EndIf
Else
If $iColWidth < $iMin_ColW Then
GUICtrlSendMsg($idListView, (0x1000 + 30), $i, $iMin_ColW)
$iColWidth = $iMin_ColW
EndIf
EndIf
$iWidth += $iColWidth
$aiColWidth[$i] = $iColWidth
Next
If $iWidth > @DesktopWidth - 100 Then
$iWidth = 40
For $i = 0 To $iColFill - 1
If $aiColWidth[$i] > $iMax_ColWidth Then
GUICtrlSendMsg($idListView, (0x1000 + 30), $i, $iMax_ColWidth)
$iWidth += $iMax_ColWidth
Else
$iWidth += $aiColWidth[$i]
EndIf
If $i < 20 And $bDebug Then ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $iWidth = ' & $iWidth & " $i = " & $i & @CRLF)
Next
EndIf
If $iWidth > @DesktopWidth - 100 Then
$iWidth = @DesktopWidth - 100
ElseIf $iWidth < $iMinSize Then
$iWidth = $iMinSize
EndIf
Local $iScrollBarSize = 0
If $iHeight = (@DesktopHeight - 100) Then $iScrollBarSize = 15
WinMove($hGUI, "", (@DesktopWidth - $iWidth + $iScrollBarSize) / 2, (@DesktopHeight - $iHeight) / 2, $iWidth + $iScrollBarSize, $iHeight)
$aiGUISize = WinGetClientSize($hGUI)
GUICtrlSetPos($idListView, 0, 0, $iWidth, $aiGUISize[1] - $iButtonBorder)
Local $iButtonWidth_1 = $aiGUISize[0] / 2
Local $iButtonWidth_2 = $aiGUISize[0] / 3
Local $idCopy_ID = 9999, $idCopy_Data = 99999, $idData_Label = 99999, $idUser_Func = 99999, $idExit_Script = 99999
If $bDebug Then
$idCopy_ID = GUICtrlCreateButton("Copy Data && Hdr/Row", 0, $aiGUISize[1] - $iButtonBorder, $iButtonWidth_1, 20)
$idCopy_Data = GUICtrlCreateButton("Copy Data Only", $iButtonWidth_1, $aiGUISize[1] - $iButtonBorder, $iButtonWidth_1, 20)
Local $iButtonWidth_Var = $iButtonWidth_1
Local $iOffset = $iButtonWidth_1
If IsFunc($hUser_Function) Then
$idUser_Func = GUICtrlCreateButton("Run User Func", $iButtonWidth_2, $aiGUISize[1] - 20, $iButtonWidth_2, 20)
$iButtonWidth_Var = $iButtonWidth_2
$iOffset = $iButtonWidth_2 * 2
EndIf
$idExit_Script = GUICtrlCreateButton("Exit Script", $iOffset, $aiGUISize[1] - 20, $iButtonWidth_Var, 20)
$idData_Label = GUICtrlCreateLabel($sDisplayData, 0, $aiGUISize[1] - 20, $iButtonWidth_Var, 18, BitOR($_ARRAYCONSTANT_SS_CENTER, $_ARRAYCONSTANT_SS_CENTERIMAGE))
Else
$idData_Label = GUICtrlCreateLabel($sDisplayData, 0, $aiGUISize[1] - 20, $aiGUISize[0], 18, BitOR($_ARRAYCONSTANT_SS_CENTER, $_ARRAYCONSTANT_SS_CENTERIMAGE))
EndIf
If $_g_ArrayDisplay_iTranspose Or $sArrayRange Then
GUICtrlSetColor($idData_Label, 0xFF0000)
GUICtrlSetTip($idData_Label, $sTipData)
EndIf
GUICtrlSetResizing($idCopy_ID, $_ARRAYCONSTANT_GUI_DOCKLEFT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
GUICtrlSetResizing($idCopy_Data, $_ARRAYCONSTANT_GUI_DOCKRIGHT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
GUICtrlSetResizing($idData_Label, $_ARRAYCONSTANT_GUI_DOCKLEFT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
GUICtrlSetResizing($idUser_Func, $_ARRAYCONSTANT_GUI_DOCKHCENTER + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
GUICtrlSetResizing($idExit_Script, $_ARRAYCONSTANT_GUI_DOCKRIGHT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
GUISetState(@SW_SHOW, $hGUI)
If $fTimer > 1000 And Not $sArrayRange Then
Beep(750, 250)
ToolTip("Sorting Action can take as long as " & Ceiling($fTimer / 1000) & " sec" & @CRLF & @CRLF & "Please be patient when you click to sort a column", 50, 50, $sMsgBoxTitle, $TIP_WARNINGICON, $TIP_BALLOON)
Sleep(3000)
ToolTip("")
EndIf
Local $iOnEventMode = Opt("GUIOnEventMode", 0), $aMsg
While 1
$aMsg = GUIGetMsg($_ARRAYCONSTANT_GUI_EVENT_ARRAY)
If $aMsg[1] = $hGUI Then
Switch $aMsg[0]
Case $_ARRAYCONSTANT_GUI_EVENT_CLOSE
ExitLoop
Case $idCopy_ID, $idCopy_Data
Local $iSel_Count = GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_GETSELECTEDCOUNT, 0, 0)
If $iVerbose And (Not $iSel_Count) And ($_g_ArrayDisplay_iItem_End - $_g_ArrayDisplay_iItem_Start) * ($_g_ArrayDisplay_iSubItem_End - $_g_ArrayDisplay_iSubItem_Start) > 10000 Then
SplashTextOn($sMsgBoxTitle, "Copying data" & @CRLF & @CRLF & "Please be patient", 300, 100)
EndIf
Local $sClip = "", $sItem, $aSplit, $iFirstCol = 0
If $aMsg[0] = $idCopy_Data And $_g_ArrayDisplay_iDisplayRow Then $iFirstCol = 1
For $i = 0 To GUICtrlSendMsg($idListView, 0X1004, 0, 0) - 1
If $iSel_Count And Not (GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_GETITEMSTATE, $i, $_ARRAYCONSTANT_LVIS_SELECTED) <> 0) Then
ContinueLoop
EndIf
$sItem = __ArrayDisplay_GetItemTextStringSelected($idListView, $i, $iFirstCol)
If $aMsg[0] = $idCopy_ID And Not $_g_ArrayDisplay_iDisplayRow Then
$sItem = $ARRAYDISPLAY_ROWPREFIX & " " & ($i + $_g_ArrayDisplay_iItem_Start) & $sCurr_Separator & $sItem
EndIf
If $iCW_ColWidth Then
$aSplit = StringSplit($sItem, $sCurr_Separator)
$sItem = ""
For $j = 1 To $aSplit[0]
$sItem &= StringFormat("%-" & $iCW_ColWidth + 1 & "s", StringLeft($aSplit[$j], $iCW_ColWidth))
Next
Else
$sItem = StringReplace($sItem, $sCurr_Separator, $vUser_Separator)
EndIf
$sClip &= $sItem & @CRLF
Next
$sItem = $sHeader
If $aMsg[0] = $idCopy_ID Then
$sItem = $sHeader
If Not $_g_ArrayDisplay_iDisplayRow Then
$sItem = "Row" & $sCurr_Separator & $sItem
EndIf
If $iCW_ColWidth Then
$aSplit = StringSplit($sItem, $sCurr_Separator)
$sItem = ""
For $j = 1 To $aSplit[0]
$sItem &= StringFormat("%-" & $iCW_ColWidth + 1 & "s", StringLeft($aSplit[$j], $iCW_ColWidth))
Next
Else
$sItem = StringReplace($sItem, $sCurr_Separator, $vUser_Separator)
EndIf
$sClip = $sItem & @CRLF & $sClip
EndIf
ClipPut($sClip)
SplashOff()
GUICtrlSetState($idListView, $_ARRAYCONSTANT_GUI_FOCUS)
Case $idListView
$iColumn = GUICtrlGetState($idListView)
If Not IsArray($_g_ArrayDisplay_aIndexes[$iColumn + Not $_g_ArrayDisplay_iDisplayRow]) Then
__ArrayDisplay_SortIndexes($iColumn + Not $_g_ArrayDisplay_iDisplayRow)
EndIf
If $iColumn <> $iColumnPrev Then
__ArrayDisplay_HeaderSetItemFormat($hHeader, $iColumnPrev, 0x00004000 + $iColAlign / 2)
If $_g_ArrayDisplay_iDisplayRow And $iColumn = 0 Then
$_g_ArrayDisplay_aIndex = $_g_ArrayDisplay_aIndexes[0]
Else
$_g_ArrayDisplay_aIndex = $_g_ArrayDisplay_aIndexes[$iColumn + Not $_g_ArrayDisplay_iDisplayRow]
EndIf
EndIf
$_g_ArrayDisplay_iSortDir = ($iColumn = $iColumnPrev) ? $_g_ArrayDisplay_iSortDir = 0x00000400 ? 0x00000200 : 0x00000400 : 0x00000400
__ArrayDisplay_HeaderSetItemFormat($hHeader, $iColumn, 0x00004000 + $_g_ArrayDisplay_iSortDir + $iColAlign / 2)
GUICtrlSendMsg($idListView, (0x1000 + 140), $iColumn, 0)
GUICtrlSendMsg($idListView, (0x1000 + 47), $_g_ArrayDisplay_nRows, 0)
$iColumnPrev = $iColumn
Case $idUser_Func
Local $aiSelItems[1] = [0]
For $i = 0 To GUICtrlSendMsg($idListView, 0x1004, 0, 0) - 1
If (GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_GETITEMSTATE, $i, $_ARRAYCONSTANT_LVIS_SELECTED) <> 0) Then
$aiSelItems[0] += 1
ReDim $aiSelItems[$aiSelItems[0] + 1]
$aiSelItems[$aiSelItems[0]] = $i + $_g_ArrayDisplay_iItem_Start
EndIf
Next
$hUser_Function($_g_ArrayDisplay_aArray, $aiSelItems)
$_g_ArrayDisplay_bUserFunc = False
__ArrayDisplay_CleanUp($hGUI, $iCoordMode, $iOnEventMode, $_iCallerError, $_iCallerExtended, $p__ArrayDisplay_NotifyHandler)
Return SetError($_iCallerError, $_iCallerExtended, -1)
Case $idExit_Script
GUIDelete($hGUI)
Exit
EndSwitch
EndIf
WEnd
__ArrayDisplay_CleanUp($hGUI, $iCoordMode, $iOnEventMode, $_iCallerError, $_iCallerExtended, $p__ArrayDisplay_NotifyHandler)
Return SetError($_iCallerError, $_iCallerExtended, 1)
EndFunc
Func __ArrayDisplay_CleanUp($hGUI, $iCoordMode, $iOnEventMode, $_iCallerError, $_iCallerExtended, $p__ArrayDisplay_NotifyHandler)
DllCall("comctl32.dll", "bool", "RemoveWindowSubclass", "hwnd", $hGUI, "ptr", $p__ArrayDisplay_NotifyHandler, "uint_ptr", 0)
$_g_ArrayDisplay_aIndex = 0
Dim $_g_ArrayDisplay_aIndexes[1]
GUIDelete($hGUI)
Opt("GUICoordMode", $iCoordMode)
Opt("GUIOnEventMode", $iOnEventMode)
Return SetError($_iCallerError, $_iCallerExtended, 1)
EndFunc
Func __ArrayDisplay_NotifyHandler($hWnd, $iMsg, $wParam, $lParam, $iSubclassId, $pData)
If $iMsg <> 0x004E Then Return DllCall("comctl32.dll", "lresult", "DefSubclassProc", "hwnd", $hWnd, "uint", $iMsg, "wparam", $wParam, "lparam", $lParam)[0]
Local Static $tagNMHDR = "struct;hwnd hWndFrom;uint_ptr IDFrom;INT Code;endstruct"
Local Static $tagNMLVDISPINFO = $tagNMHDR & ";" & $_ARRAYCONSTANT_tagLVITEM
Local $tNMLVDISPINFO = DllStructCreate($tagNMLVDISPINFO, $lParam)
Switch HWnd(DllStructGetData($tNMLVDISPINFO, "hWndFrom"))
Case $_g_ArrayDisplay_hListView
Switch DllStructGetData($tNMLVDISPINFO, "Code")
Case -177
Local Static $tText = DllStructCreate("wchar[4096]"), $pText = DllStructGetPtr($tText)
Local $iItem = DllStructGetData($tNMLVDISPINFO, "Item")
Local $iRow = ($_g_ArrayDisplay_iSortDir = 0x00000400) ? $_g_ArrayDisplay_aIndex[$iItem] : $_g_ArrayDisplay_aIndex[$_g_ArrayDisplay_nRows - 1 - $iItem]
Local $iCol = DllStructGetData($tNMLVDISPINFO, "SubItem")
Local $sTemp
If $_g_ArrayDisplay_iDisplayRow = 0 Then
$sTemp = __ArrayDisplay_GetData($iRow, $iCol)
DllStructSetData($tText, 1, $sTemp)
DllStructSetData($tNMLVDISPINFO, "Text", $pText)
Else
If $iCol = 0 Then
If $_g_ArrayDisplay_iTranspose Then
Local $sCaptionCplt = ""
If $iRow + $_g_ArrayDisplay_iItem_Start < UBound($_g_ArrayDisplay_asHeader)  And StringStripWS($_g_ArrayDisplay_asHeader[$iRow + $_g_ArrayDisplay_iItem_Start], 1 + 2) <> "" Then
$sCaptionCplt = " (" & StringStripWS($_g_ArrayDisplay_asHeader[$iRow + $_g_ArrayDisplay_iItem_Start], 1 + 2)
If StringRight($sCaptionCplt, 1) = $ARRAYDISPLAY_NUMERICSORT Then $sCaptionCplt = StringTrimRight($sCaptionCplt, 1)
$sCaptionCplt &= ")"
EndIf
DllStructSetData($tText, 1, "Col " & ($iRow + $_g_ArrayDisplay_iItem_Start) & $sCaptionCplt)
Else
DllStructSetData($tText, 1, $ARRAYDISPLAY_ROWPREFIX & " " & $iRow + $_g_ArrayDisplay_iItem_Start)
EndIf
DllStructSetData($tNMLVDISPINFO, "Text", $pText)
Else
$sTemp = __ArrayDisplay_GetData($iRow, $iCol - 1)
DllStructSetData($tText, 1, $sTemp)
DllStructSetData($tNMLVDISPINFO, "Text", $pText)
EndIf
EndIf
Return
EndSwitch
EndSwitch
Return DllCall("comctl32.dll", "lresult", "DefSubclassProc", "hwnd", $hWnd, "uint", $iMsg, "wparam", $wParam, "lparam", $lParam)[0]
#forceref $iSubclassId, $pData
EndFunc
Func __ArrayDisplay_GetData($iRow, $iCol)
Local $sTemp
If $_g_ArrayDisplay_iDims = 2 Then
$sTemp = $_g_ArrayDisplay_aArray[$iRow][$iCol]
Else
$sTemp = $_g_ArrayDisplay_aArray[$iRow]
EndIf
Switch VarGetType($sTemp)
Case "Array"
Local $sSubscript = ""
For $i = 1 To UBound($sTemp, 0)
$sSubscript = "[" & UBound($sTemp, $i) & "]"
Next
$sTemp = "{Array" & $sSubscript & "}"
Case "Map"
$sTemp = "{Map[" & UBound($sTemp) & "]}"
Case "Object"
$sTemp = "{Object}"
EndSwitch
If StringLen($sTemp) > 4095 Then $sTemp = StringLeft($sTemp, 4095)
Return $sTemp
EndFunc
Func __ArrayDisplay_SortIndexes($iColStart, $iColEnd = $iColStart)
Dim $_g_ArrayDisplay_aIndex[$_g_ArrayDisplay_nRows]
If $iColEnd = -1 Then
Dim $_g_ArrayDisplay_aIndexes[$_g_ArrayDisplay_nCols + $_g_ArrayDisplay_iDisplayRow + 1]
For $i = 0 To $_g_ArrayDisplay_nRows - 1
$_g_ArrayDisplay_aIndex[$i] = $i
Next
$_g_ArrayDisplay_aIndexes[0] = $_g_ArrayDisplay_aIndex
EndIf
If $iColStart = -1 Then
$iColStart = 1
$iColEnd = $_g_ArrayDisplay_nCols
EndIf
If $iColStart Then
Local $tIndex
For $i = $iColStart To $iColEnd
$tIndex = __ArrayDisplay_GetSortColStruct($_g_ArrayDisplay_aArray, $i - 1)
For $j = 0 To $_g_ArrayDisplay_nRows - 1
$_g_ArrayDisplay_aIndex[$j] = DllStructGetData($tIndex, 1, $j + 1)
Next
$_g_ArrayDisplay_aIndexes[$i] = $_g_ArrayDisplay_aIndex
Next
EndIf
EndFunc
Func __ArrayDisplay_GetSortColStruct(Const ByRef $aArray, $iCol)
If UBound($aArray, $UBOUND_DIMENSIONS) < 1 Or UBound($aArray, $UBOUND_DIMENSIONS) > 2 Then
Return SetError(6, 0, 0)
EndIf
Return __ArrayDisplay_SortArrayStruct($aArray, $iCol)
EndFunc
Func __ArrayDisplay_SortArrayStruct(Const ByRef $aArray, $iCol)
Local $iDims = UBound($aArray, $UBOUND_DIMENSIONS)
Local $tIndex = DllStructCreate("uint[" & $_g_ArrayDisplay_nRows & "]")
Local $pIndex = DllStructGetPtr($tIndex)
Static $hDll = DllOpen("kernel32.dll")
Static $hDllComp = DllOpen("shlwapi.dll")
Local $lo, $hi, $mi, $r, $nVal1, $nVal2
For $i = 1 To $_g_ArrayDisplay_nRows - 1
$lo = 0
$hi = $i - 1
Do
$mi = Int(($lo + $hi) / 2)
If Not $_g_ArrayDisplay_iTranspose And $_g_ArrayDisplay_aNumericSort[$iCol] Then
If $iDims = 1 Then
$nVal1 = Number($aArray[$i])
$nVal2 = Number($aArray[DllStructGetData($tIndex, 1, $mi + 1)])
Else
$nVal1 = Number($aArray[$i][$iCol])
$nVal2 = Number($aArray[DllStructGetData($tIndex, 1, $mi + 1)][$iCol])
EndIf
$r = $nVal1 < $nVal2 ? -1 : $nVal1 > $nVal2 ? 1 : 0
Else
If $iDims = 1 Then
$r = DllCall($hDllComp, 'int', 'StrCmpLogicalW', 'wstr', String($aArray[$i]), 'wstr', String($aArray[DllStructGetData($tIndex, 1, $mi + 1)]))[0]
Else
$r = DllCall($hDllComp, 'int', 'StrCmpLogicalW', 'wstr', String($aArray[$i][$iCol]), 'wstr', String($aArray[DllStructGetData($tIndex, 1, $mi + 1)][$iCol]))[0]
EndIf
EndIf
Switch $r
Case -1
$hi = $mi - 1
Case 1
$lo = $mi + 1
Case 0
ExitLoop
EndSwitch
Until $lo > $hi
DllCall($hDll, "none", "RtlMoveMemory", "struct*", $pIndex + ($mi + 1) * 4, "struct*", $pIndex + $mi * 4, "ulong_ptr", ($i - $mi) * 4)
DllStructSetData($tIndex, 1, $i, $mi + 1 + ($lo = $mi + 1))
Next
Return $tIndex
EndFunc
Func __ArrayDisplay_CreateSubArray()
Local $nRows = $_g_ArrayDisplay_iItem_End - $_g_ArrayDisplay_iItem_Start + 1
Local $nCols = $_g_ArrayDisplay_iSubItem_End - $_g_ArrayDisplay_iSubItem_Start + 1
Local $iRow = -1, $iCol, $iTemp, $aTemp
If $_g_ArrayDisplay_iTranspose Then
Dim $aTemp[$nCols][$nRows]
For $i = $_g_ArrayDisplay_iItem_Start To $_g_ArrayDisplay_iItem_End
$iRow += 1
$iCol = -1
For $j = $_g_ArrayDisplay_iSubItem_Start To $_g_ArrayDisplay_iSubItem_End
$iCol += 1
$aTemp[$iCol][$iRow] = $_g_ArrayDisplay_aArray[$i][$j]
Next
Next
$iTemp = $_g_ArrayDisplay_iItem_Start
$_g_ArrayDisplay_iItem_Start = $_g_ArrayDisplay_iSubItem_Start
$_g_ArrayDisplay_iSubItem_Start = $iTemp
$iTemp = $_g_ArrayDisplay_iItem_End
$_g_ArrayDisplay_iItem_End = $_g_ArrayDisplay_iSubItem_End
$_g_ArrayDisplay_iSubItem_End = $iTemp
$_g_ArrayDisplay_nRows = $nCols
$_g_ArrayDisplay_nCols = $nRows
Else
If $_g_ArrayDisplay_iDims = 1 Then
Dim $aTemp[$nRows]
For $i = $_g_ArrayDisplay_iItem_Start To $_g_ArrayDisplay_iItem_End
$iRow += 1
$aTemp[$iRow] = $_g_ArrayDisplay_aArray[$i]
Next
Else
Dim $aTemp[$nRows][$nCols]
For $i = $_g_ArrayDisplay_iItem_Start To $_g_ArrayDisplay_iItem_End
$iRow += 1
$iCol = -1
For $j = $_g_ArrayDisplay_iSubItem_Start To $_g_ArrayDisplay_iSubItem_End
$iCol += 1
$aTemp[$iRow][$iCol] = $_g_ArrayDisplay_aArray[$i][$j]
Next
Next
$_g_ArrayDisplay_nCols = $nCols
EndIf
$_g_ArrayDisplay_nRows = $nRows
EndIf
Return $aTemp
EndFunc
Func __ArrayDisplay_HeaderSetItemFormat($hWnd, $iIndex, $iFormat)
Local Static $tHDItem = DllStructCreate("uint Mask;int XY;ptr Text;handle hBMP;int TextMax;int Fmt;lparam Param;int Image;int Order;uint Type;ptr pFilter;uint State")
DllStructSetData($tHDItem, "Mask", 0x00000004)
DllStructSetData($tHDItem, "Fmt", $iFormat)
Local $aResult = DllCall("user32.dll", "lresult", "SendMessageW", "hwnd", $hWnd, "uint", 0x120C, "wparam", $iIndex, "struct*", $tHDItem)
Return $aResult[0] <> 0
EndFunc
Func __ArrayDisplay_GetItemText($idListView, $iIndex, $iSubItem = 0)
Local $tBuffer = DllStructCreate("wchar Text[4096]")
Local $pBuffer = DllStructGetPtr($tBuffer)
Local $tItem = DllStructCreate($_ARRAYCONSTANT_tagLVITEM)
DllStructSetData($tItem, "SubItem", $iSubItem)
DllStructSetData($tItem, "TextMax", 4096)
DllStructSetData($tItem, "Text", $pBuffer)
If IsHWnd($idListView) Then
DllCall("user32.dll", "lresult", "SendMessageW", "hwnd", $idListView, "uint", 0x1073, "wparam", $iIndex, "struct*", $tItem)
Else
Local $pItem = DllStructGetPtr($tItem)
GUICtrlSendMsg($idListView, 0x1073, $iIndex, $pItem)
EndIf
Return DllStructGetData($tBuffer, "Text")
EndFunc
Func __ArrayDisplay_GetItemTextStringSelected($idListView, $iItem, $iFirstCol)
Local $sRow = "", $sSeparatorChar = Opt('GUIDataSeparatorChar')
Local $iSelected = $iItem
Local $hHeader = HWnd(GUICtrlSendMsg($idListView, 0x101F, 0, 0))
Local $nCol = DllCall("user32.dll", "lresult", "SendMessageW", "hwnd", $hHeader, "uint", 0x1200, "wparam", 0, "lparam", 0)[0]
For $x = $iFirstCol To $nCol - 1
$sRow &= __ArrayDisplay_GetItemText($idListView, $iSelected, $x) & $sSeparatorChar
Next
Return StringTrimRight($sRow, 1)
EndFunc
Func __ArrayDisplay_JustifyColumn($idListView, $iIndex, $iAlign = -1)
Local $tColumn = DllStructCreate("uint Mask;int Fmt;int CX;ptr Text;int TextMax;int SubItem;int Image;int Order;int cxMin;int cxDefault;int cxIdeal")
If $iAlign < 0 Or $iAlign > 2 Then $iAlign = 0
DllStructSetData($tColumn, "Mask", 0x01)
DllStructSetData($tColumn, "Fmt", $iAlign)
Local $pColumn = DllStructGetPtr($tColumn)
Local $iRet = GUICtrlSendMsg($idListView, 0x1060, $iIndex, $pColumn)
Return $iRet <> 0
EndFunc
Global Enum $ARRAYFILL_FORCE_DEFAULT, $ARRAYFILL_FORCE_SINGLEITEM, $ARRAYFILL_FORCE_INT, $ARRAYFILL_FORCE_NUMBER,  $ARRAYFILL_FORCE_PTR, $ARRAYFILL_FORCE_HWND, $ARRAYFILL_FORCE_STRING, $ARRAYFILL_FORCE_BOOLEAN
Global Enum $ARRAYUNIQUE_NOCOUNT, $ARRAYUNIQUE_COUNT
Global Enum $ARRAYUNIQUE_AUTO, $ARRAYUNIQUE_FORCE32, $ARRAYUNIQUE_FORCE64, $ARRAYUNIQUE_MATCH, $ARRAYUNIQUE_DISTINCT
Func _ArrayAdd(ByRef $aArray, $vValue, $iStart = 0, $sDelim_Item = "|", $sDelim_Row = @CRLF, $iForce = $ARRAYFILL_FORCE_DEFAULT)
If $iStart = Default Then $iStart = 0
If $sDelim_Item = Default Then $sDelim_Item = "|"
If $sDelim_Row = Default Then $sDelim_Row = @CRLF
If $iForce = Default Then $iForce = $ARRAYFILL_FORCE_DEFAULT
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS)
Local $hDataType = 0
Switch $iForce
Case $ARRAYFILL_FORCE_INT
$hDataType = Int
Case $ARRAYFILL_FORCE_NUMBER
$hDataType = Number
Case $ARRAYFILL_FORCE_PTR
$hDataType = Ptr
Case $ARRAYFILL_FORCE_HWND
$hDataType = Hwnd
Case $ARRAYFILL_FORCE_STRING
$hDataType = String
Case $ARRAYFILL_FORCE_BOOLEAN
$hDataType = "Boolean"
EndSwitch
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If $iForce = $ARRAYFILL_FORCE_SINGLEITEM Then
ReDim $aArray[$iDim_1 + 1]
$aArray[$iDim_1] = $vValue
Return $iDim_1
EndIf
If IsArray($vValue) Then
If UBound($vValue, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(5, 0, -1)
$hDataType = 0
Else
Local $aTmp = StringSplit($vValue, $sDelim_Item, $STR_NOCOUNT + $STR_ENTIRESPLIT)
If UBound($aTmp, $UBOUND_ROWS) = 1 Then
$aTmp[0] = $vValue
EndIf
$vValue = $aTmp
EndIf
Local $iAdd = UBound($vValue, $UBOUND_ROWS)
ReDim $aArray[$iDim_1 + $iAdd]
For $i = 0 To $iAdd - 1
If String($hDataType) = "Boolean" Then
Switch $vValue[$i]
Case "True", "1"
$aArray[$iDim_1 + $i] = True
Case "False", "0", ""
$aArray[$iDim_1 + $i] = False
EndSwitch
ElseIf IsFunc($hDataType) Then
$aArray[$iDim_1 + $i] = $hDataType($vValue[$i])
Else
$aArray[$iDim_1 + $i] = $vValue[$i]
EndIf
Next
Return $iDim_1 + $iAdd - 1
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS)
If $iStart < 0 Or $iStart > $iDim_2 - 1 Then Return SetError(4, 0, -1)
Local $iValDim_1, $iValDim_2 = 0, $iColCount
If IsArray($vValue) Then
If UBound($vValue, $UBOUND_DIMENSIONS) <> 2 Then Return SetError(5, 0, -1)
$iValDim_1 = UBound($vValue, $UBOUND_ROWS)
$iValDim_2 = UBound($vValue, $UBOUND_COLUMNS)
$hDataType = 0
Else
Local $aSplit_1 = StringSplit($vValue, $sDelim_Row, $STR_NOCOUNT + $STR_ENTIRESPLIT)
$iValDim_1 = UBound($aSplit_1, $UBOUND_ROWS)
Local $aTmp[$iValDim_1][0], $aSplit_2
For $i = 0 To $iValDim_1 - 1
$aSplit_2 = StringSplit($aSplit_1[$i], $sDelim_Item, $STR_NOCOUNT + $STR_ENTIRESPLIT)
$iColCount = UBound($aSplit_2)
If $iColCount > $iValDim_2 Then
$iValDim_2 = $iColCount
ReDim $aTmp[$iValDim_1][$iValDim_2]
EndIf
For $j = 0 To $iColCount - 1
$aTmp[$i][$j] = $aSplit_2[$j]
Next
Next
$vValue = $aTmp
EndIf
If UBound($vValue, $UBOUND_COLUMNS) + $iStart > UBound($aArray, $UBOUND_COLUMNS) Then Return SetError(3, 0, -1)
ReDim $aArray[$iDim_1 + $iValDim_1][$iDim_2]
For $iWriteTo_Index = 0 To $iValDim_1 - 1
For $j = 0 To $iDim_2 - 1
If $j < $iStart Then
$aArray[$iWriteTo_Index + $iDim_1][$j] = ""
ElseIf $j - $iStart > $iValDim_2 - 1 Then
$aArray[$iWriteTo_Index + $iDim_1][$j] = ""
Else
If String($hDataType) = "Boolean" Then
Switch $vValue[$iWriteTo_Index][$j - $iStart]
Case "True", "1"
$aArray[$iWriteTo_Index + $iDim_1][$j] = True
Case "False", "0", ""
$aArray[$iWriteTo_Index + $iDim_1][$j] = False
EndSwitch
ElseIf IsFunc($hDataType) Then
$aArray[$iWriteTo_Index + $iDim_1][$j] = $hDataType($vValue[$iWriteTo_Index][$j - $iStart])
Else
$aArray[$iWriteTo_Index + $iDim_1][$j] = $vValue[$iWriteTo_Index][$j - $iStart]
EndIf
EndIf
Next
Next
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return UBound($aArray, $UBOUND_ROWS) - 1
EndFunc
Func _ArrayBinarySearch(Const ByRef $aArray, $vValue, $iStart = 0, $iEnd = 0, $iColumn = 0)
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If $iColumn = Default Then $iColumn = 0
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS)
If $iDim_1 = 0 Then Return SetError(6, 0, -1)
If $iEnd < 1 Or $iEnd > $iDim_1 - 1 Then $iEnd = $iDim_1 - 1
If $iStart < 0 Then $iStart = 0
If $iStart > $iEnd Then Return SetError(4, 0, -1)
Local $iMid = Int(($iEnd + $iStart) / 2)
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If $aArray[$iStart] > $vValue Or $aArray[$iEnd] < $vValue Then Return SetError(2, 0, -1)
While $iStart <= $iMid And $vValue <> $aArray[$iMid]
If $vValue < $aArray[$iMid] Then
$iEnd = $iMid - 1
Else
$iStart = $iMid + 1
EndIf
$iMid = Int(($iEnd + $iStart) / 2)
WEnd
If $iStart > $iEnd Then Return SetError(3, 0, -1)
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
If $iColumn < 0 Or $iColumn > $iDim_2 Then Return SetError(7, 0, -1)
If $aArray[$iStart][$iColumn] > $vValue Or $aArray[$iEnd][$iColumn] < $vValue Then Return SetError(2, 0, -1)
While $iStart <= $iMid And $vValue <> $aArray[$iMid][$iColumn]
If $vValue < $aArray[$iMid][$iColumn] Then
$iEnd = $iMid - 1
Else
$iStart = $iMid + 1
EndIf
$iMid = Int(($iEnd + $iStart) / 2)
WEnd
If $iStart > $iEnd Then Return SetError(3, 0, -1)
Case Else
Return SetError(5, 0, -1)
EndSwitch
Return $iMid
EndFunc
Func _ArrayColDelete(ByRef $aArray, $iColumn, $bConvert = False)
If $bConvert = Default Then $bConvert = False
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS)
If UBound($aArray, $UBOUND_DIMENSIONS) <> 2 Then Return SetError(2, 0, -1)
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS)
Switch $iDim_2
Case 2
If $iColumn < 0 Or $iColumn > 1 Then Return SetError(3, 0, -1)
If $bConvert Then
Local $aTempArray[$iDim_1]
For $i = 0 To $iDim_1 - 1
$aTempArray[$i] = $aArray[$i][(Not $iColumn)]
Next
$aArray = $aTempArray
Else
ContinueCase
EndIf
Case Else
If $iColumn < 0 Or $iColumn > $iDim_2 - 1 Then Return SetError(3, 0, -1)
For $i = 0 To $iDim_1 - 1
For $j = $iColumn To $iDim_2 - 2
$aArray[$i][$j] = $aArray[$i][$j + 1]
Next
Next
ReDim $aArray[$iDim_1][$iDim_2 - 1]
EndSwitch
Return UBound($aArray, $UBOUND_COLUMNS)
EndFunc
Func _ArrayColInsert(ByRef $aArray, $iColumn)
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS)
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
Local $aTempArray[$iDim_1][2]
Switch $iColumn
Case 0, 1
For $i = 0 To $iDim_1 - 1
$aTempArray[$i][(Not $iColumn)] = $aArray[$i]
Next
Case Else
Return SetError(3, 0, -1)
EndSwitch
$aArray = $aTempArray
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS)
If $iColumn < 0 Or $iColumn > $iDim_2 Then Return SetError(3, 0, -1)
ReDim $aArray[$iDim_1][$iDim_2 + 1]
For $i = 0 To $iDim_1 - 1
For $j = $iDim_2 To $iColumn + 1 Step -1
$aArray[$i][$j] = $aArray[$i][$j - 1]
Next
$aArray[$i][$iColumn] = ""
Next
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return UBound($aArray, $UBOUND_COLUMNS)
EndFunc
Func _ArrayCombinations(Const ByRef $aArray, $iSet, $sDelimiter = "")
If $sDelimiter = Default Then $sDelimiter = ""
If Not IsArray($aArray) Then Return SetError(1, 0, 0)
If UBound($aArray, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(2, 0, 0)
Local $iN = UBound($aArray)
Local $iR = $iSet
Local $aIdx[$iR]
For $i = 0 To $iR - 1
$aIdx[$i] = $i
Next
Local $iTotal = __Array_Combinations($iN, $iR)
Local $iLeft = $iTotal
Local $aResult[$iTotal + 1]
$aResult[0] = $iTotal
Local $iCount = 1
While $iLeft > 0
__Array_GetNext($iN, $iR, $iLeft, $iTotal, $aIdx)
For $i = 0 To $iSet - 1
$aResult[$iCount] &= $aArray[$aIdx[$i]] & $sDelimiter
Next
If $sDelimiter <> "" Then $aResult[$iCount] = StringTrimRight($aResult[$iCount], 1)
$iCount += 1
WEnd
Return $aResult
EndFunc
Func _ArrayConcatenate(ByRef $aArrayTarget, Const ByRef $aArraySource, $iStart = 0)
If $iStart = Default Then $iStart = 0
If Not IsArray($aArrayTarget) Then Return SetError(1, 0, -1)
If Not IsArray($aArraySource) Then Return SetError(2, 0, -1)
Local $iDim_Total_Tgt = UBound($aArrayTarget, $UBOUND_DIMENSIONS)
Local $iDim_Total_Src = UBound($aArraySource, $UBOUND_DIMENSIONS)
Local $iDim_1_Tgt = UBound($aArrayTarget, $UBOUND_ROWS)
Local $iDim_1_Src = UBound($aArraySource, $UBOUND_ROWS)
If $iStart < 0 Or $iStart > $iDim_1_Src - 1 Then Return SetError(6, 0, -1)
Switch $iDim_Total_Tgt
Case 1
If $iDim_Total_Src <> 1 Then Return SetError(4, 0, -1)
ReDim $aArrayTarget[$iDim_1_Tgt + $iDim_1_Src - $iStart]
For $i = $iStart To $iDim_1_Src - 1
$aArrayTarget[$iDim_1_Tgt + $i - $iStart] = $aArraySource[$i]
Next
Case 2
If $iDim_Total_Src <> 2 Then Return SetError(4, 0, -1)
Local $iDim_2_Tgt = UBound($aArrayTarget, $UBOUND_COLUMNS)
If UBound($aArraySource, $UBOUND_COLUMNS) <> $iDim_2_Tgt Then Return SetError(5, 0, -1)
ReDim $aArrayTarget[$iDim_1_Tgt + $iDim_1_Src - $iStart][$iDim_2_Tgt]
For $i = $iStart To $iDim_1_Src - 1
For $j = 0 To $iDim_2_Tgt - 1
$aArrayTarget[$iDim_1_Tgt + $i - $iStart][$j] = $aArraySource[$i][$j]
Next
Next
Case Else
Return SetError(3, 0, -1)
EndSwitch
Return UBound($aArrayTarget, $UBOUND_ROWS)
EndFunc
Func _ArrayDelete(ByRef $aArray, $vRange)
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
If IsArray($vRange) Then
If UBound($vRange, $UBOUND_DIMENSIONS) <> 1 Or UBound($vRange, $UBOUND_ROWS) < 2 Then Return SetError(4, 0, -1)
Else
Local $iNumber, $aSplit_1, $aSplit_2
$vRange = StringStripWS($vRange, 8)
$aSplit_1 = StringSplit($vRange, ";")
$vRange = ""
For $i = 1 To $aSplit_1[0]
If Not StringRegExp($aSplit_1[$i], "^\d+(-\d+)?$") Then Return SetError(3, 0, -1)
$aSplit_2 = StringSplit($aSplit_1[$i], "-")
Switch $aSplit_2[0]
Case 1
$vRange &= $aSplit_2[1] & ";"
Case 2
If Number($aSplit_2[2]) >= Number($aSplit_2[1]) Then
$iNumber = $aSplit_2[1] - 1
Do
$iNumber += 1
$vRange &= $iNumber & ";"
Until $iNumber = $aSplit_2[2]
EndIf
EndSwitch
Next
$vRange = StringSplit(StringTrimRight($vRange, 1), ";")
EndIf
For $i = 1 To $vRange[0]
$vRange[$i] = Number($vRange[$i])
Next
If $vRange[1] < 0 Or $vRange[$vRange[0]] > $iDim_1 Then Return SetError(5, 0, -1)
Local $iCopyTo_Index = 0
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
For $i = 1 To $vRange[0]
$aArray[$vRange[$i]] = ChrW(0xFAB1)
Next
For $iReadFrom_Index = 0 To $iDim_1
If $aArray[$iReadFrom_Index] == ChrW(0xFAB1) Then
ContinueLoop
Else
If $iReadFrom_Index <> $iCopyTo_Index Then
$aArray[$iCopyTo_Index] = $aArray[$iReadFrom_Index]
EndIf
$iCopyTo_Index += 1
EndIf
Next
ReDim $aArray[$iDim_1 - $vRange[0] + 1]
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
For $i = 1 To $vRange[0]
$aArray[$vRange[$i]][0] = ChrW(0xFAB1)
Next
For $iReadFrom_Index = 0 To $iDim_1
If $aArray[$iReadFrom_Index][0] == ChrW(0xFAB1) Then
ContinueLoop
Else
If $iReadFrom_Index <> $iCopyTo_Index Then
For $j = 0 To $iDim_2
$aArray[$iCopyTo_Index][$j] = $aArray[$iReadFrom_Index][$j]
Next
EndIf
$iCopyTo_Index += 1
EndIf
Next
ReDim $aArray[$iDim_1 - $vRange[0] + 1][$iDim_2 + 1]
Case Else
Return SetError(2, 0, False)
EndSwitch
Return UBound($aArray, $UBOUND_ROWS)
EndFunc
Func _ArrayDisplay(Const ByRef $aArray, $sTitle = Default, $sArrayRange = Default, $iFlags = Default, $vUser_Separator = Default, $sHeader = Default, $iDesired_Colwidth = Default)
#forceref $vUser_Separator
Local $iRet = __ArrayDisplay_Share($aArray, $sTitle, $sArrayRange, $iFlags, Default, $sHeader, $iDesired_Colwidth, 0, False)
Return SetError(@error, @extended, $iRet)
EndFunc
Func _ArrayExtract(Const ByRef $aArray, $iStart_Row = -1, $iEnd_Row = -1, $iStart_Col = -1, $iEnd_Col = -1)
If $iStart_Row = Default Then $iStart_Row = -1
If $iEnd_Row = Default Then $iEnd_Row = -1
If $iStart_Col = Default Then $iStart_Col = -1
If $iEnd_Col = Default Then $iEnd_Col = -1
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
If $iEnd_Row = -1 Then $iEnd_Row = $iDim_1
If $iStart_Row = -1 Then $iStart_Row = 0
If $iStart_Row < -1 Or $iEnd_Row < -1 Then Return SetError(3, 0, -1)
If $iStart_Row > $iDim_1 Or $iEnd_Row > $iDim_1 Then Return SetError(3, 0, -1)
If $iStart_Row > $iEnd_Row Then Return SetError(4, 0, -1)
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
Local $aRetArray[$iEnd_Row - $iStart_Row + 1]
For $i = 0 To $iEnd_Row - $iStart_Row
$aRetArray[$i] = $aArray[$i + $iStart_Row]
Next
Return $aRetArray
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
If $iEnd_Col = -1 Then $iEnd_Col = $iDim_2
If $iStart_Col = -1 Then $iStart_Col = 0
If $iStart_Col < -1 Or $iEnd_Col < -1 Then Return SetError(5, 0, -1)
If $iStart_Col > $iDim_2 Or $iEnd_Col > $iDim_2 Then Return SetError(5, 0, -1)
If $iStart_Col > $iEnd_Col Then Return SetError(6, 0, -1)
If $iStart_Col = $iEnd_Col Then
Local $aRetArray[$iEnd_Row - $iStart_Row + 1]
Else
Local $aRetArray[$iEnd_Row - $iStart_Row + 1][$iEnd_Col - $iStart_Col + 1]
EndIf
For $i = 0 To $iEnd_Row - $iStart_Row
For $j = 0 To $iEnd_Col - $iStart_Col
If $iStart_Col = $iEnd_Col Then
$aRetArray[$i] = $aArray[$i + $iStart_Row][$j + $iStart_Col]
Else
$aRetArray[$i][$j] = $aArray[$i + $iStart_Row][$j + $iStart_Col]
EndIf
Next
Next
Return $aRetArray
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return 1
EndFunc
Func _ArrayFindAll(Const ByRef $aArray, $vValue, $iStart = 0, $iEnd = 0, $iCase = 0, $iCompare = 0, $iSubItem = 0, $bRow = False)
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If $iCase = Default Then $iCase = 0
If $iCompare = Default Then $iCompare = 0
If $iSubItem = Default Then $iSubItem = 0
If $bRow = Default Then $bRow = False
$iStart = _ArraySearch($aArray, $vValue, $iStart, $iEnd, $iCase, $iCompare, 1, $iSubItem, $bRow)
If @error Then Return SetError(@error, 0, -1)
Local $iIndex = 0, $avResult[UBound($aArray, ($bRow ? $UBOUND_COLUMNS : $UBOUND_ROWS))]
Do
$avResult[$iIndex] = $iStart
$iIndex += 1
$iStart = _ArraySearch($aArray, $vValue, $iStart + 1, $iEnd, $iCase, $iCompare, 1, $iSubItem, $bRow)
Until @error
ReDim $avResult[$iIndex]
Return $avResult
EndFunc
Func _ArrayFromString($sArrayStr, $sDelim_Col = "|", $sDelim_Row = @CRLF, $bForce2D = False, $iStripWS = $STR_STRIPLEADING + $STR_STRIPTRAILING)
If $sDelim_Col = Default Then $sDelim_Col = "|"
If $sDelim_Row = Default Then $sDelim_Row = @CRLF
If $bForce2D = Default Then $bForce2D = False
If $iStripWS = Default Then $iStripWS = $STR_STRIPLEADING + $STR_STRIPTRAILING
Local $aRow, $aCol = StringSplit($sArrayStr, $sDelim_Row, $STR_ENTIRESPLIT + $STR_NOCOUNT)
$aRow = StringSplit($aCol[0], $sDelim_Col, $STR_ENTIRESPLIT + $STR_NOCOUNT)
If UBound($aCol) = 1 And Not $bForce2D Then
For $m = 0 To UBound($aRow) - 1
$aRow[$m] = ($iStripWS ? StringStripWS($aRow[$m], $iStripWS) : $aRow[$m])
Next
Return $aRow
EndIf
Local $aRet[UBound($aCol)][UBound($aRow)]
For $n = 0 To UBound($aCol) - 1
$aRow = StringSplit($aCol[$n], $sDelim_Col, $STR_ENTIRESPLIT + $STR_NOCOUNT)
If UBound($aRow) > UBound($aRet, 2) Then Return SetError(1)
For $m = 0 To UBound($aRow) - 1
$aRet[$n][$m] = ($iStripWS ? StringStripWS($aRow[$m], $iStripWS) : $aRow[$m])
Next
Next
Return $aRet
EndFunc
Func _ArrayInsert(ByRef $aArray, $vRange, $vValue = "", $iStart = 0, $sDelim_Item = "|", $sDelim_Row = @CRLF, $iForce = $ARRAYFILL_FORCE_DEFAULT)
If $vValue = Default Then $vValue = ""
If $iStart = Default Then $iStart = 0
If $sDelim_Item = Default Then $sDelim_Item = "|"
If $sDelim_Row = Default Then $sDelim_Row = @CRLF
If $iForce = Default Then $iForce = $ARRAYFILL_FORCE_DEFAULT
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
Local $hDataType = 0
Switch $iForce
Case $ARRAYFILL_FORCE_INT
$hDataType = Int
Case $ARRAYFILL_FORCE_NUMBER
$hDataType = Number
Case $ARRAYFILL_FORCE_PTR
$hDataType = Ptr
Case $ARRAYFILL_FORCE_HWND
$hDataType = Hwnd
Case $ARRAYFILL_FORCE_STRING
$hDataType = String
EndSwitch
Local $aSplit_1, $aSplit_2
If IsArray($vRange) Then
If UBound($vRange, $UBOUND_DIMENSIONS) <> 1 Or UBound($vRange, $UBOUND_ROWS) < 2 Then Return SetError(4, 0, -1)
Else
Local $iNumber
$vRange = StringStripWS($vRange, 8)
$aSplit_1 = StringSplit($vRange, ";")
$vRange = ""
For $i = 1 To $aSplit_1[0]
If Not StringRegExp($aSplit_1[$i], "^\d+(-\d+)?$") Then Return SetError(3, 0, -1)
$aSplit_2 = StringSplit($aSplit_1[$i], "-")
Switch $aSplit_2[0]
Case 1
$vRange &= $aSplit_2[1] & ";"
Case 2
If Number($aSplit_2[2]) >= Number($aSplit_2[1]) Then
$iNumber = $aSplit_2[1] - 1
Do
$iNumber += 1
$vRange &= $iNumber & ";"
Until $iNumber = $aSplit_2[2]
EndIf
EndSwitch
Next
$vRange = StringSplit(StringTrimRight($vRange, 1), ";")
EndIf
For $i = 1 To $vRange[0]
$vRange[$i] = Number($vRange[$i])
Next
If $vRange[1] < 0 Or $vRange[$vRange[0]] > $iDim_1 Then Return SetError(5, 0, -1)
For $i = 2 To $vRange[0]
If $vRange[$i] < $vRange[$i - 1] Then Return SetError(3, 0, -1)
Next
Local $iCopyTo_Index = $iDim_1 + $vRange[0]
Local $iInsertPoint_Index = $vRange[0]
Local $iInsert_Index = $vRange[$iInsertPoint_Index]
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If $iForce = $ARRAYFILL_FORCE_SINGLEITEM Then
ReDim $aArray[$iDim_1 + $vRange[0] + 1]
For $iReadFromIndex = $iDim_1 To 0 Step -1
$aArray[$iCopyTo_Index] = $aArray[$iReadFromIndex]
$iCopyTo_Index -= 1
$iInsert_Index = $vRange[$iInsertPoint_Index]
While $iReadFromIndex = $iInsert_Index
$aArray[$iCopyTo_Index] = $vValue
$iCopyTo_Index -= 1
$iInsertPoint_Index -= 1
If $iInsertPoint_Index < 1 Then ExitLoop 2
$iInsert_Index = $vRange[$iInsertPoint_Index]
WEnd
Next
Return $iDim_1 + $vRange[0] + 1
EndIf
ReDim $aArray[$iDim_1 + $vRange[0] + 1]
If IsArray($vValue) Then
If UBound($vValue, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(5, 0, -1)
$hDataType = 0
Else
Local $aTmp = StringSplit($vValue, $sDelim_Item, $STR_NOCOUNT + $STR_ENTIRESPLIT)
If UBound($aTmp, $UBOUND_ROWS) = 1 Then
$aTmp[0] = $vValue
$hDataType = 0
EndIf
$vValue = $aTmp
EndIf
For $iReadFromIndex = $iDim_1 To 0 Step -1
$aArray[$iCopyTo_Index] = $aArray[$iReadFromIndex]
$iCopyTo_Index -= 1
$iInsert_Index = $vRange[$iInsertPoint_Index]
While $iReadFromIndex = $iInsert_Index
If $iInsertPoint_Index <= UBound($vValue, $UBOUND_ROWS) Then
If IsFunc($hDataType) Then
$aArray[$iCopyTo_Index] = $hDataType($vValue[$iInsertPoint_Index - 1])
Else
$aArray[$iCopyTo_Index] = $vValue[$iInsertPoint_Index - 1]
EndIf
Else
$aArray[$iCopyTo_Index] = ""
EndIf
$iCopyTo_Index -= 1
$iInsertPoint_Index -= 1
If $iInsertPoint_Index = 0 Then ExitLoop 2
$iInsert_Index = $vRange[$iInsertPoint_Index]
WEnd
Next
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS)
If $iStart < 0 Or $iStart > $iDim_2 - 1 Then Return SetError(6, 0, -1)
Local $iValDim_1, $iValDim_2
If IsArray($vValue) Then
If UBound($vValue, $UBOUND_DIMENSIONS) <> 2 Then Return SetError(7, 0, -1)
$iValDim_1 = UBound($vValue, $UBOUND_ROWS)
$iValDim_2 = UBound($vValue, $UBOUND_COLUMNS)
$hDataType = 0
Else
$aSplit_1 = StringSplit($vValue, $sDelim_Row, $STR_NOCOUNT + $STR_ENTIRESPLIT)
$iValDim_1 = UBound($aSplit_1, $UBOUND_ROWS)
StringReplace($aSplit_1[0], $sDelim_Item, "")
$iValDim_2 = @extended + 1
Local $aTmp[$iValDim_1][$iValDim_2]
For $i = 0 To $iValDim_1 - 1
$aSplit_2 = StringSplit($aSplit_1[$i], $sDelim_Item, $STR_NOCOUNT + $STR_ENTIRESPLIT)
For $j = 0 To $iValDim_2 - 1
$aTmp[$i][$j] = $aSplit_2[$j]
Next
Next
$vValue = $aTmp
EndIf
If UBound($vValue, $UBOUND_COLUMNS) + $iStart > UBound($aArray, $UBOUND_COLUMNS) Then Return SetError(8, 0, -1)
ReDim $aArray[$iDim_1 + $vRange[0] + 1][$iDim_2]
For $iReadFromIndex = $iDim_1 To 0 Step -1
For $j = 0 To $iDim_2 - 1
$aArray[$iCopyTo_Index][$j] = $aArray[$iReadFromIndex][$j]
Next
$iCopyTo_Index -= 1
$iInsert_Index = $vRange[$iInsertPoint_Index]
While $iReadFromIndex = $iInsert_Index
For $j = 0 To $iDim_2 - 1
If $j < $iStart Then
$aArray[$iCopyTo_Index][$j] = ""
ElseIf $j - $iStart > $iValDim_2 - 1 Then
$aArray[$iCopyTo_Index][$j] = ""
Else
If $iInsertPoint_Index - 1 < $iValDim_1 Then
If IsFunc($hDataType) Then
$aArray[$iCopyTo_Index][$j] = $hDataType($vValue[$iInsertPoint_Index - 1][$j - $iStart])
Else
$aArray[$iCopyTo_Index][$j] = $vValue[$iInsertPoint_Index - 1][$j - $iStart]
EndIf
Else
$aArray[$iCopyTo_Index][$j] = ""
EndIf
EndIf
Next
$iCopyTo_Index -= 1
$iInsertPoint_Index -= 1
If $iInsertPoint_Index = 0 Then ExitLoop 2
$iInsert_Index = $vRange[$iInsertPoint_Index]
WEnd
Next
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return UBound($aArray, $UBOUND_ROWS)
EndFunc
Func _ArrayMax(Const ByRef $aArray, $iCompNumeric = 0, $iStart = -1, $iEnd = -1, $iSubItem = 0)
Local $iResult = _ArrayMaxIndex($aArray, $iCompNumeric, $iStart, $iEnd, $iSubItem)
If @error Then Return SetError(@error, 0, "")
If UBound($aArray, $UBOUND_DIMENSIONS) = 1 Then
Return $aArray[$iResult]
Else
Return $aArray[$iResult][$iSubItem]
EndIf
EndFunc
Func _ArrayMaxIndex(Const ByRef $aArray, $iCompNumeric = 0, $iStart = -1, $iEnd = -1, $iSubItem = 0)
If $iCompNumeric = Default Then $iCompNumeric = 0
If $iStart = Default Then $iStart = -1
If $iEnd = Default Then $iEnd = -1
If $iSubItem = Default Then $iSubItem = 0
Local $iRet = __Array_MinMaxIndex($aArray, $iCompNumeric, $iStart, $iEnd, $iSubItem, __Array_GreaterThan)
Return SetError(@error, 0, $iRet)
EndFunc
Func _ArrayMin(Const ByRef $aArray, $iCompNumeric = 0, $iStart = -1, $iEnd = -1, $iSubItem = 0)
Local $iResult = _ArrayMinIndex($aArray, $iCompNumeric, $iStart, $iEnd, $iSubItem)
If @error Then Return SetError(@error, 0, "")
If UBound($aArray, $UBOUND_DIMENSIONS) = 1 Then
Return $aArray[$iResult]
Else
Return $aArray[$iResult][$iSubItem]
EndIf
EndFunc
Func _ArrayMinIndex(Const ByRef $aArray, $iCompNumeric = 0, $iStart = -1, $iEnd = -1, $iSubItem = 0)
If $iCompNumeric = Default Then $iCompNumeric = 0
If $iStart = Default Then $iStart = -1
If $iEnd = Default Then $iEnd = -1
If $iSubItem = Default Then $iSubItem = 0
Local $iRet = __Array_MinMaxIndex($aArray, $iCompNumeric, $iStart, $iEnd, $iSubItem, __Array_LessThan)
Return SetError(@error, 0, $iRet)
EndFunc
Func _ArrayPermute(ByRef $aArray, $sDelimiter = "")
If $sDelimiter = Default Then $sDelimiter = ""
If Not IsArray($aArray) Then Return SetError(1, 0, 0)
If UBound($aArray, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(2, 0, 0)
Local $iSize = UBound($aArray), $iFactorial = 1, $aIdx[$iSize], $aResult[1], $iCount = 1
If UBound($aArray) Then
For $i = 0 To $iSize - 1
$aIdx[$i] = $i
Next
For $i = $iSize To 1 Step -1
$iFactorial *= $i
Next
ReDim $aResult[$iFactorial + 1]
$aResult[0] = $iFactorial
__Array_ExeterInternal($aArray, 0, $iSize, $sDelimiter, $aIdx, $aResult, $iCount)
Else
$aResult[0] = 0
EndIf
Return $aResult
EndFunc
Func _ArrayPop(ByRef $aArray)
If (Not IsArray($aArray)) Then Return SetError(1, 0, "")
If UBound($aArray, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(2, 0, "")
Local $iUBound = UBound($aArray) - 1
If $iUBound = -1 Then Return SetError(3, 0, "")
Local $sLastVal = $aArray[$iUBound]
If $iUBound > -1 Then
ReDim $aArray[$iUBound]
EndIf
Return $sLastVal
EndFunc
Func _ArrayPush(ByRef $aArray, $vValue, $iDirection = 0)
If $iDirection = Default Then $iDirection = 0
If (Not IsArray($aArray)) Then Return SetError(1, 0, 0)
If UBound($aArray, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(3, 0, 0)
Local $iUBound = UBound($aArray) - 1
If IsArray($vValue) Then
Local $iUBoundS = UBound($vValue)
If ($iUBoundS - 1) > $iUBound Then Return SetError(2, 0, 0)
If $iDirection Then
For $i = $iUBound To $iUBoundS Step -1
$aArray[$i] = $aArray[$i - $iUBoundS]
Next
For $i = 0 To $iUBoundS - 1
$aArray[$i] = $vValue[$i]
Next
Else
For $i = 0 To $iUBound - $iUBoundS
$aArray[$i] = $aArray[$i + $iUBoundS]
Next
For $i = 0 To $iUBoundS - 1
$aArray[$i + $iUBound - $iUBoundS + 1] = $vValue[$i]
Next
EndIf
Else
If $iUBound > -1 Then
If $iDirection Then
For $i = $iUBound To 1 Step -1
$aArray[$i] = $aArray[$i - 1]
Next
$aArray[0] = $vValue
Else
For $i = 0 To $iUBound - 1
$aArray[$i] = $aArray[$i + 1]
Next
$aArray[$iUBound] = $vValue
EndIf
EndIf
EndIf
Return 1
EndFunc
Func _ArrayReverse(ByRef $aArray, $iStart = 0, $iEnd = 0)
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If Not IsArray($aArray) Then Return SetError(1, 0, 0)
If UBound($aArray, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(3, 0, 0)
If Not UBound($aArray) Then Return SetError(4, 0, 0)
Local $vTmp, $iUBound = UBound($aArray) - 1
If $iEnd < 1 Or $iEnd > $iUBound Then $iEnd = $iUBound
If $iStart < 0 Then $iStart = 0
If $iStart > $iEnd Then Return SetError(2, 0, 0)
For $i = $iStart To Int(($iStart + $iEnd - 1) / 2)
$vTmp = $aArray[$i]
$aArray[$i] = $aArray[$iEnd]
$aArray[$iEnd] = $vTmp
$iEnd -= 1
Next
Return 1
EndFunc
Func _ArraySearch(Const ByRef $aArray, $vValue, $iStart = 0, $iEnd = 0, $iCase = 0, $iCompare = 0, $iForward = 1, $iSubItem = -1, $bRow = False)
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If $iCase = Default Then $iCase = 0
If $iCompare = Default Then $iCompare = 0
If $iForward = Default Then $iForward = 1
If $iSubItem = Default Then $iSubItem = -1
If $bRow = Default Then $bRow = False
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray) - 1
If $iDim_1 = -1 Then Return SetError(3, 0, -1)
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
Local $bCompType = False
If $iCompare = 2 Then
$iCompare = 0
$bCompType = True
EndIf
If $bRow Then
If UBound($aArray, $UBOUND_DIMENSIONS) = 1 Then Return SetError(5, 0, -1)
If $iEnd < 1 Or $iEnd > $iDim_2 Then $iEnd = $iDim_2
If $iStart < 0 Then $iStart = 0
If $iStart > $iEnd Then Return SetError(4, 0, -1)
Else
If $iEnd < 1 Or $iEnd > $iDim_1 Then $iEnd = $iDim_1
If $iStart < 0 Then $iStart = 0
If $iStart > $iEnd Then Return SetError(4, 0, -1)
EndIf
Local $iStep = 1
If Not $iForward Then
Local $iTmp = $iStart
$iStart = $iEnd
$iEnd = $iTmp
$iStep = -1
EndIf
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If Not $iCompare Then
If Not $iCase Then
For $i = $iStart To $iEnd Step $iStep
If $bCompType And VarGetType($aArray[$i]) <> VarGetType($vValue) Then ContinueLoop
If $aArray[$i] = $vValue Then Return $i
Next
Else
For $i = $iStart To $iEnd Step $iStep
If $bCompType And VarGetType($aArray[$i]) <> VarGetType($vValue) Then ContinueLoop
If $aArray[$i] == $vValue Then Return $i
Next
EndIf
Else
For $i = $iStart To $iEnd Step $iStep
If $iCompare = 3 Then
If StringRegExp($aArray[$i], $vValue) Then Return $i
Else
If StringInStr($aArray[$i], $vValue, $iCase) > 0 Then Return $i
EndIf
Next
EndIf
Case 2
Local $iDim_Sub
If $bRow Then
$iDim_Sub = $iDim_1
If $iSubItem > $iDim_Sub Then $iSubItem = $iDim_Sub
If $iSubItem < 0 Then
$iSubItem = 0
Else
$iDim_Sub = $iSubItem
EndIf
Else
$iDim_Sub = $iDim_2
If $iSubItem > $iDim_Sub Then $iSubItem = $iDim_Sub
If $iSubItem < 0 Then
$iSubItem = 0
Else
$iDim_Sub = $iSubItem
EndIf
EndIf
For $j = $iSubItem To $iDim_Sub
If Not $iCompare Then
If Not $iCase Then
For $i = $iStart To $iEnd Step $iStep
If $bRow Then
If $bCompType And VarGetType($aArray[$j][$i]) <> VarGetType($vValue) Then ContinueLoop
If $aArray[$j][$i] = $vValue Then Return $i
Else
If $bCompType And VarGetType($aArray[$i][$j]) <> VarGetType($vValue) Then ContinueLoop
If $aArray[$i][$j] = $vValue Then Return $i
EndIf
Next
Else
For $i = $iStart To $iEnd Step $iStep
If $bRow Then
If $bCompType And VarGetType($aArray[$j][$i]) <> VarGetType($vValue) Then ContinueLoop
If $aArray[$j][$i] == $vValue Then Return $i
Else
If $bCompType And VarGetType($aArray[$i][$j]) <> VarGetType($vValue) Then ContinueLoop
If $aArray[$i][$j] == $vValue Then Return $i
EndIf
Next
EndIf
Else
For $i = $iStart To $iEnd Step $iStep
If $iCompare = 3 Then
If $bRow Then
If StringRegExp($aArray[$j][$i], $vValue) Then Return $i
Else
If StringRegExp($aArray[$i][$j], $vValue) Then Return $i
EndIf
Else
If $bRow Then
If StringInStr($aArray[$j][$i], $vValue, $iCase) > 0 Then Return $i
Else
If StringInStr($aArray[$i][$j], $vValue, $iCase) > 0 Then Return $i
EndIf
EndIf
Next
EndIf
Next
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return SetError(6, 0, -1)
EndFunc
Func _ArrayShuffle(ByRef $aArray, $iStart_Row = 0, $iEnd_Row = 0, $iCol = -1)
If $iStart_Row = Default Then $iStart_Row = 0
If $iEnd_Row = Default Then $iEnd_Row = 0
If $iCol = Default Then $iCol = -1
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS)
If $iEnd_Row = 0 Then $iEnd_Row = $iDim_1 - 1
If $iStart_Row < 0 Or $iStart_Row > $iDim_1 - 1 Then Return SetError(3, 0, -1)
If $iEnd_Row < 1 Or $iEnd_Row > $iDim_1 - 1 Then Return SetError(3, 0, -1)
If $iStart_Row > $iEnd_Row Then Return SetError(4, 0, -1)
Local $vTmp, $iRand
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
For $i = $iEnd_Row To $iStart_Row + 1 Step -1
$iRand = Random($iStart_Row, $i, 1)
$vTmp = $aArray[$i]
$aArray[$i] = $aArray[$iRand]
$aArray[$iRand] = $vTmp
Next
Return 1
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS)
If $iCol < -1 Or $iCol > $iDim_2 - 1 Then Return SetError(5, 0, -1)
Local $iCol_Start, $iCol_End
If $iCol = -1 Then
$iCol_Start = 0
$iCol_End = $iDim_2 - 1
Else
$iCol_Start = $iCol
$iCol_End = $iCol
EndIf
For $i = $iEnd_Row To $iStart_Row + 1 Step -1
$iRand = Random($iStart_Row, $i, 1)
For $j = $iCol_Start To $iCol_End
$vTmp = $aArray[$i][$j]
$aArray[$i][$j] = $aArray[$iRand][$j]
$aArray[$iRand][$j] = $vTmp
Next
Next
Return 1
Case Else
Return SetError(2, 0, -1)
EndSwitch
EndFunc
Func _ArraySort(ByRef $aArray, $iDescending = 0, $iStart = 0, $iEnd = 0, $iSubItem = 0, $iPivot = 0)
If $iDescending = Default Then $iDescending = 0
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If $iSubItem = Default Then $iSubItem = 0
If $iPivot = Default Then $iPivot = 0
If Not IsArray($aArray) Then Return SetError(1, 0, 0)
Local $iUBound = UBound($aArray) - 1
If $iUBound = -1 Then Return SetError(5, 0, 0)
If $iEnd = Default Then $iEnd = 0
If $iEnd < 1 Or $iEnd > $iUBound Or $iEnd = Default Then $iEnd = $iUBound
If $iStart < 0 Or $iStart = Default Then $iStart = 0
If $iStart > $iEnd Then Return SetError(2, 0, 0)
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If $iPivot Then
__ArrayDualPivotSort($aArray, $iStart, $iEnd)
Else
__ArrayQuickSort1D($aArray, $iStart, $iEnd)
EndIf
If $iDescending Then _ArrayReverse($aArray, $iStart, $iEnd)
Case 2
If $iPivot Then Return SetError(6, 0, 0)
Local $iSubMax = UBound($aArray, $UBOUND_COLUMNS) - 1
If $iSubItem > $iSubMax Then Return SetError(3, 0, 0)
If $iDescending Then
$iDescending = -1
Else
$iDescending = 1
EndIf
__ArrayQuickSort2D($aArray, $iDescending, $iStart, $iEnd, $iSubItem, $iSubMax)
Case Else
Return SetError(4, 0, 0)
EndSwitch
Return 1
EndFunc
Func __ArrayQuickSort1D(ByRef $aArray, Const ByRef $iStart, Const ByRef $iEnd)
If $iEnd <= $iStart Then Return
Local $vTmp
If ($iEnd - $iStart) < 15 Then
Local $vCur
For $i = $iStart + 1 To $iEnd
$vTmp = $aArray[$i]
If IsNumber($vTmp) Then
For $j = $i - 1 To $iStart Step -1
$vCur = $aArray[$j]
If ($vTmp >= $vCur And IsNumber($vCur)) Or (Not IsNumber($vCur) And StringCompare($vTmp, $vCur) >= 0) Then ExitLoop
$aArray[$j + 1] = $vCur
Next
Else
For $j = $i - 1 To $iStart Step -1
If (StringCompare($vTmp, $aArray[$j]) >= 0) Then ExitLoop
$aArray[$j + 1] = $aArray[$j]
Next
EndIf
$aArray[$j + 1] = $vTmp
Next
Return
EndIf
Local $L = $iStart, $R = $iEnd, $vPivot = $aArray[Int(($iStart + $iEnd) / 2)], $bNum = IsNumber($vPivot)
Do
If $bNum Then
While ($aArray[$L] < $vPivot And IsNumber($aArray[$L])) Or (Not IsNumber($aArray[$L]) And StringCompare($aArray[$L], $vPivot) < 0)
$L += 1
WEnd
While ($aArray[$R] > $vPivot And IsNumber($aArray[$R])) Or (Not IsNumber($aArray[$R]) And StringCompare($aArray[$R], $vPivot) > 0)
$R -= 1
WEnd
Else
While (StringCompare($aArray[$L], $vPivot) < 0)
$L += 1
WEnd
While (StringCompare($aArray[$R], $vPivot) > 0)
$R -= 1
WEnd
EndIf
If $L <= $R Then
$vTmp = $aArray[$L]
$aArray[$L] = $aArray[$R]
$aArray[$R] = $vTmp
$L += 1
$R -= 1
EndIf
Until $L > $R
__ArrayQuickSort1D($aArray, $iStart, $R)
__ArrayQuickSort1D($aArray, $L, $iEnd)
EndFunc
Func __ArrayQuickSort2D(ByRef $aArray, Const ByRef $iStep, Const ByRef $iStart, Const ByRef $iEnd, Const ByRef $iSubItem, Const ByRef $iSubMax)
If $iEnd <= $iStart Then Return
Local $vTmp, $L = $iStart, $R = $iEnd, $vPivot = $aArray[Int(($iStart + $iEnd) / 2)][$iSubItem], $bNum = IsNumber($vPivot)
Do
If $bNum Then
While ($iStep * ($aArray[$L][$iSubItem] - $vPivot) < 0 And IsNumber($aArray[$L][$iSubItem])) Or (Not IsNumber($aArray[$L][$iSubItem]) And $iStep * StringCompare($aArray[$L][$iSubItem], $vPivot) < 0)
$L += 1
WEnd
While ($iStep * ($aArray[$R][$iSubItem] - $vPivot) > 0 And IsNumber($aArray[$R][$iSubItem])) Or (Not IsNumber($aArray[$R][$iSubItem]) And $iStep * StringCompare($aArray[$R][$iSubItem], $vPivot) > 0)
$R -= 1
WEnd
Else
While ($iStep * StringCompare($aArray[$L][$iSubItem], $vPivot) < 0)
$L += 1
WEnd
While ($iStep * StringCompare($aArray[$R][$iSubItem], $vPivot) > 0)
$R -= 1
WEnd
EndIf
If $L <= $R Then
For $i = 0 To $iSubMax
$vTmp = $aArray[$L][$i]
$aArray[$L][$i] = $aArray[$R][$i]
$aArray[$R][$i] = $vTmp
Next
$L += 1
$R -= 1
EndIf
Until $L > $R
__ArrayQuickSort2D($aArray, $iStep, $iStart, $R, $iSubItem, $iSubMax)
__ArrayQuickSort2D($aArray, $iStep, $L, $iEnd, $iSubItem, $iSubMax)
EndFunc
Func __ArrayDualPivotSort(ByRef $aArray, $iPivot_Left, $iPivot_Right, $bLeftMost = True)
If $iPivot_Left > $iPivot_Right Then Return
Local $iLength = $iPivot_Right - $iPivot_Left + 1
Local $i, $j, $k, $iAi, $iAk, $iA1, $iA2, $iLast
If $iLength < 45 Then
If $bLeftMost Then
$i = $iPivot_Left
While $i < $iPivot_Right
$j = $i
$iAi = $aArray[$i + 1]
While $iAi < $aArray[$j]
$aArray[$j + 1] = $aArray[$j]
$j -= 1
If $j + 1 = $iPivot_Left Then ExitLoop
WEnd
$aArray[$j + 1] = $iAi
$i += 1
WEnd
Else
While 1
If $iPivot_Left >= $iPivot_Right Then Return 1
$iPivot_Left += 1
If $aArray[$iPivot_Left] < $aArray[$iPivot_Left - 1] Then ExitLoop
WEnd
While 1
$k = $iPivot_Left
$iPivot_Left += 1
If $iPivot_Left > $iPivot_Right Then ExitLoop
$iA1 = $aArray[$k]
$iA2 = $aArray[$iPivot_Left]
If $iA1 < $iA2 Then
$iA2 = $iA1
$iA1 = $aArray[$iPivot_Left]
EndIf
$k -= 1
While $iA1 < $aArray[$k]
$aArray[$k + 2] = $aArray[$k]
$k -= 1
WEnd
$aArray[$k + 2] = $iA1
While $iA2 < $aArray[$k]
$aArray[$k + 1] = $aArray[$k]
$k -= 1
WEnd
$aArray[$k + 1] = $iA2
$iPivot_Left += 1
WEnd
$iLast = $aArray[$iPivot_Right]
$iPivot_Right -= 1
While $iLast < $aArray[$iPivot_Right]
$aArray[$iPivot_Right + 1] = $aArray[$iPivot_Right]
$iPivot_Right -= 1
WEnd
$aArray[$iPivot_Right + 1] = $iLast
EndIf
Return 1
EndIf
Local $iSeventh = BitShift($iLength, 3) + BitShift($iLength, 6) + 1
Local $iE1, $iE2, $iE3, $iE4, $iE5, $t
$iE3 = Ceiling(($iPivot_Left + $iPivot_Right) / 2)
$iE2 = $iE3 - $iSeventh
$iE1 = $iE2 - $iSeventh
$iE4 = $iE3 + $iSeventh
$iE5 = $iE4 + $iSeventh
If $aArray[$iE2] < $aArray[$iE1] Then
$t = $aArray[$iE2]
$aArray[$iE2] = $aArray[$iE1]
$aArray[$iE1] = $t
EndIf
If $aArray[$iE3] < $aArray[$iE2] Then
$t = $aArray[$iE3]
$aArray[$iE3] = $aArray[$iE2]
$aArray[$iE2] = $t
If $t < $aArray[$iE1] Then
$aArray[$iE2] = $aArray[$iE1]
$aArray[$iE1] = $t
EndIf
EndIf
If $aArray[$iE4] < $aArray[$iE3] Then
$t = $aArray[$iE4]
$aArray[$iE4] = $aArray[$iE3]
$aArray[$iE3] = $t
If $t < $aArray[$iE2] Then
$aArray[$iE3] = $aArray[$iE2]
$aArray[$iE2] = $t
If $t < $aArray[$iE1] Then
$aArray[$iE2] = $aArray[$iE1]
$aArray[$iE1] = $t
EndIf
EndIf
EndIf
If $aArray[$iE5] < $aArray[$iE4] Then
$t = $aArray[$iE5]
$aArray[$iE5] = $aArray[$iE4]
$aArray[$iE4] = $t
If $t < $aArray[$iE3] Then
$aArray[$iE4] = $aArray[$iE3]
$aArray[$iE3] = $t
If $t < $aArray[$iE2] Then
$aArray[$iE3] = $aArray[$iE2]
$aArray[$iE2] = $t
If $t < $aArray[$iE1] Then
$aArray[$iE2] = $aArray[$iE1]
$aArray[$iE1] = $t
EndIf
EndIf
EndIf
EndIf
Local $iLess = $iPivot_Left
Local $iGreater = $iPivot_Right
If (($aArray[$iE1] <> $aArray[$iE2]) And ($aArray[$iE2] <> $aArray[$iE3]) And ($aArray[$iE3] <> $aArray[$iE4]) And ($aArray[$iE4] <> $aArray[$iE5])) Then
Local $iPivot_1 = $aArray[$iE2]
Local $iPivot_2 = $aArray[$iE4]
$aArray[$iE2] = $aArray[$iPivot_Left]
$aArray[$iE4] = $aArray[$iPivot_Right]
Do
$iLess += 1
Until $aArray[$iLess] >= $iPivot_1
Do
$iGreater -= 1
Until $aArray[$iGreater] <= $iPivot_2
$k = $iLess
While $k <= $iGreater
$iAk = $aArray[$k]
If $iAk < $iPivot_1 Then
$aArray[$k] = $aArray[$iLess]
$aArray[$iLess] = $iAk
$iLess += 1
ElseIf $iAk > $iPivot_2 Then
While $aArray[$iGreater] > $iPivot_2
$iGreater -= 1
If $iGreater + 1 = $k Then ExitLoop 2
WEnd
If $aArray[$iGreater] < $iPivot_1 Then
$aArray[$k] = $aArray[$iLess]
$aArray[$iLess] = $aArray[$iGreater]
$iLess += 1
Else
$aArray[$k] = $aArray[$iGreater]
EndIf
$aArray[$iGreater] = $iAk
$iGreater -= 1
EndIf
$k += 1
WEnd
$aArray[$iPivot_Left] = $aArray[$iLess - 1]
$aArray[$iLess - 1] = $iPivot_1
$aArray[$iPivot_Right] = $aArray[$iGreater + 1]
$aArray[$iGreater + 1] = $iPivot_2
__ArrayDualPivotSort($aArray, $iPivot_Left, $iLess - 2, True)
__ArrayDualPivotSort($aArray, $iGreater + 2, $iPivot_Right, False)
If ($iLess < $iE1) And ($iE5 < $iGreater) Then
While $aArray[$iLess] = $iPivot_1
$iLess += 1
WEnd
While $aArray[$iGreater] = $iPivot_2
$iGreater -= 1
WEnd
$k = $iLess
While $k <= $iGreater
$iAk = $aArray[$k]
If $iAk = $iPivot_1 Then
$aArray[$k] = $aArray[$iLess]
$aArray[$iLess] = $iAk
$iLess += 1
ElseIf $iAk = $iPivot_2 Then
While $aArray[$iGreater] = $iPivot_2
$iGreater -= 1
If $iGreater + 1 = $k Then ExitLoop 2
WEnd
If $aArray[$iGreater] = $iPivot_1 Then
$aArray[$k] = $aArray[$iLess]
$aArray[$iLess] = $iPivot_1
$iLess += 1
Else
$aArray[$k] = $aArray[$iGreater]
EndIf
$aArray[$iGreater] = $iAk
$iGreater -= 1
EndIf
$k += 1
WEnd
EndIf
__ArrayDualPivotSort($aArray, $iLess, $iGreater, False)
Else
Local $iPivot = $aArray[$iE3]
$k = $iLess
While $k <= $iGreater
If $aArray[$k] = $iPivot Then
$k += 1
ContinueLoop
EndIf
$iAk = $aArray[$k]
If $iAk < $iPivot Then
$aArray[$k] = $aArray[$iLess]
$aArray[$iLess] = $iAk
$iLess += 1
Else
While $aArray[$iGreater] > $iPivot
$iGreater -= 1
WEnd
If $aArray[$iGreater] < $iPivot Then
$aArray[$k] = $aArray[$iLess]
$aArray[$iLess] = $aArray[$iGreater]
$iLess += 1
Else
$aArray[$k] = $iPivot
EndIf
$aArray[$iGreater] = $iAk
$iGreater -= 1
EndIf
$k += 1
WEnd
__ArrayDualPivotSort($aArray, $iPivot_Left, $iLess - 1, True)
__ArrayDualPivotSort($aArray, $iGreater + 1, $iPivot_Right, False)
EndIf
EndFunc
Func _ArraySwap(ByRef $aArray, $iIndex_1, $iIndex_2, $bCol = False, $iStart = -1, $iEnd = -1)
If $bCol = Default Then $bCol = False
If $iStart = Default Then $iStart = -1
If $iEnd = Default Then $iEnd = -1
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
If $iDim_2 = -1 Then
$bCol = False
$iStart = -1
$iEnd = -1
EndIf
If $iStart > $iEnd Then Return SetError(5, 0, -1)
If $bCol Then
If $iIndex_1 < 0 Or $iIndex_2 > $iDim_2 Then Return SetError(3, 0, -1)
If $iStart = -1 Then $iStart = 0
If $iEnd = -1 Then $iEnd = $iDim_1
Else
If $iIndex_1 < 0 Or $iIndex_2 > $iDim_1 Then Return SetError(3, 0, -1)
If $iStart = -1 Then $iStart = 0
If $iEnd = -1 Then $iEnd = $iDim_2
EndIf
Local $vTmp
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
$vTmp = $aArray[$iIndex_1]
$aArray[$iIndex_1] = $aArray[$iIndex_2]
$aArray[$iIndex_2] = $vTmp
Case 2
If $iStart < -1 Or $iEnd < -1 Then Return SetError(4, 0, -1)
If $bCol Then
If $iStart > $iDim_1 Or $iEnd > $iDim_1 Then Return SetError(4, 0, -1)
For $j = $iStart To $iEnd
$vTmp = $aArray[$j][$iIndex_1]
$aArray[$j][$iIndex_1] = $aArray[$j][$iIndex_2]
$aArray[$j][$iIndex_2] = $vTmp
Next
Else
If $iStart > $iDim_2 Or $iEnd > $iDim_2 Then Return SetError(4, 0, -1)
For $j = $iStart To $iEnd
$vTmp = $aArray[$iIndex_1][$j]
$aArray[$iIndex_1][$j] = $aArray[$iIndex_2][$j]
$aArray[$iIndex_2][$j] = $vTmp
Next
EndIf
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return 1
EndFunc
Func _ArrayToClip(Const ByRef $aArray, $sDelim_Col = "|", $iStart_Row = -1, $iEnd_Row = -1, $sDelim_Row = @CRLF, $iStart_Col = -1, $iEnd_Col = -1)
Local $sResult = _ArrayToString($aArray, $sDelim_Col, $iStart_Row, $iEnd_Row, $sDelim_Row, $iStart_Col, $iEnd_Col)
If @error Then Return SetError(@error, 0, 0)
If ClipPut($sResult) Then Return 1
Return SetError(-1, 0, 0)
EndFunc
Func _ArrayToString(Const ByRef $aArray, $sDelim_Col = "|", $iStart_Row = Default, $iEnd_Row = Default, $sDelim_Row = @CRLF, $iStart_Col = Default, $iEnd_Col = Default)
If $sDelim_Col = Default Then $sDelim_Col = "|"
If $sDelim_Row = Default Then $sDelim_Row = @CRLF
If $iStart_Row = Default Then $iStart_Row = -1
If $iEnd_Row = Default Then $iEnd_Row = -1
If $iStart_Col = Default Then $iStart_Col = -1
If $iEnd_Col = Default Then $iEnd_Col = -1
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
If $iDim_1 = -1 Then Return ""
If $iStart_Row = -1 Then $iStart_Row = 0
If $iEnd_Row = -1 Then $iEnd_Row = $iDim_1
If $iStart_Row < -1 Or $iEnd_Row < -1 Then Return SetError(3, 0, -1)
If $iStart_Row > $iDim_1 Or $iEnd_Row > $iDim_1 Then Return SetError(3, 0, "")
If $iStart_Row > $iEnd_Row Then Return SetError(4, 0, -1)
Local $sRet = ""
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
For $i = $iStart_Row To $iEnd_Row
$sRet &= $aArray[$i] & $sDelim_Col
Next
Return StringTrimRight($sRet, StringLen($sDelim_Col))
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
If $iDim_2 = -1 Then Return ""
If $iStart_Col = -1 Then $iStart_Col = 0
If $iEnd_Col = -1 Then $iEnd_Col = $iDim_2
If $iStart_Col < -1 Or $iEnd_Col < -1 Then Return SetError(5, 0, -1)
If $iStart_Col > $iDim_2 Or $iEnd_Col > $iDim_2 Then Return SetError(5, 0, -1)
If $iStart_Col > $iEnd_Col Then Return SetError(6, 0, -1)
Local $iDelimColLen = StringLen($sDelim_Col)
For $i = $iStart_Row To $iEnd_Row
For $j = $iStart_Col To $iEnd_Col
$sRet &= $aArray[$i][$j] & $sDelim_Col
Next
$sRet = StringTrimRight($sRet, $iDelimColLen) & $sDelim_Row
Next
Return StringTrimRight($sRet, StringLen($sDelim_Row))
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return 1
EndFunc
Func _ArrayTranspose(ByRef $aArray, $bForce1D = False)
Local $aTemp
Switch $bForce1D
Case Default
$bForce1D = False
Case True, False
Case Else
Return SetError(3, 0, 0)
EndSwitch
Switch UBound($aArray, 0)
Case 0
Return SetError(2, 0, 0)
Case 1
Local $aTemp[1][UBound($aArray)]
For $i = 0 To UBound($aArray) - 1
$aTemp[0][$i] = $aArray[$i]
Next
$aArray = $aTemp
Case 2
Local $iDim_1 = UBound($aArray, 1), $iDim_2 = UBound($aArray, 2)
If $iDim_1 <> $iDim_2 Then
Local $aTemp[$iDim_2][$iDim_1]
For $i = 0 To $iDim_1 - 1
For $j = 0 To $iDim_2 - 1
$aTemp[$j][$i] = $aArray[$i][$j]
Next
Next
$aArray = $aTemp
Else
Local $vElement
For $i = 0 To $iDim_1 - 1
For $j = $i + 1 To $iDim_2 - 1
$vElement = $aArray[$i][$j]
$aArray[$i][$j] = $aArray[$j][$i]
$aArray[$j][$i] = $vElement
Next
Next
EndIf
If $bForce1D = True And UBound($aArray, 2) = 1 Then
$aTemp = $aArray
ReDim $aArray[UBound($aTemp)]
For $i = 0 To UBound($aTemp) - 1
$aArray[$i] = $aTemp[$i][0]
Next
EndIf
Case Else
Return SetError(1, 0, 0)
EndSwitch
Return 1
EndFunc
Func _ArrayTrim(ByRef $aArray, $iTrimNum, $iDirection = 0, $iStart = 0, $iEnd = 0, $iSubItem = 0)
If $iDirection = Default Then $iDirection = 0
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If $iSubItem = Default Then $iSubItem = 0
If Not IsArray($aArray) Then Return SetError(1, 0, 0)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
If $iEnd = 0 Then $iEnd = $iDim_1
If $iStart > $iEnd Then Return SetError(3, 0, -1)
If $iStart < 0 Or $iEnd < 0 Then Return SetError(3, 0, -1)
If $iStart > $iDim_1 Or $iEnd > $iDim_1 Then Return SetError(3, 0, -1)
If $iStart > $iEnd Then Return SetError(4, 0, -1)
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If $iDirection Then
For $i = $iStart To $iEnd
$aArray[$i] = StringTrimRight($aArray[$i], $iTrimNum)
Next
Else
For $i = $iStart To $iEnd
$aArray[$i] = StringTrimLeft($aArray[$i], $iTrimNum)
Next
EndIf
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
If $iSubItem < 0 Or $iSubItem > $iDim_2 Then Return SetError(5, 0, -1)
If $iDirection Then
For $i = $iStart To $iEnd
$aArray[$i][$iSubItem] = StringTrimRight($aArray[$i][$iSubItem], $iTrimNum)
Next
Else
For $i = $iStart To $iEnd
$aArray[$i][$iSubItem] = StringTrimLeft($aArray[$i][$iSubItem], $iTrimNum)
Next
EndIf
Case Else
Return SetError(2, 0, 0)
EndSwitch
Return 1
EndFunc
Func _ArrayUnique(Const ByRef $aArray, $iColumn = 0, $iBase = 0, $iCase = 0, $iCount = $ARRAYUNIQUE_COUNT, $iIntType = $ARRAYUNIQUE_AUTO)
If $iColumn = Default Then $iColumn = 0
If $iBase = Default Then $iBase = 0
If $iCase = Default Then $iCase = 0
If $iCount = Default Then $iCount = $ARRAYUNIQUE_COUNT
If $iIntType = Default Then $iIntType = $ARRAYUNIQUE_AUTO
If UBound($aArray, $UBOUND_ROWS) = 0 Then Return SetError(1, 0, 0)
Local $iDims = UBound($aArray, $UBOUND_DIMENSIONS), $iNumColumns = UBound($aArray, $UBOUND_COLUMNS)
If $iDims > 2 Then Return SetError(2, 0, 0)
If $iBase < 0 Or $iBase > 1 Or (Not IsInt($iBase)) Then Return SetError(3, 0, 0)
If $iCase < 0 Or $iCase > 1 Or (Not IsInt($iCase)) Then Return SetError(3, 0, 0)
If $iCount < 0 Or $iCount > 1 Or (Not IsInt($iCount)) Then Return SetError(4, 0, 0)
If $iIntType < 0 Or $iIntType > 4 Or (Not IsInt($iIntType)) Then Return SetError(5, 0, 0)
If $iColumn < 0 Or ($iNumColumns = 0 And $iColumn > 0) Or ($iNumColumns > 0 And $iColumn >= $iNumColumns) Then Return SetError(6, 0, 0)
If $iIntType = $ARRAYUNIQUE_AUTO Then
Local $bInt, $sVarType
If $iDims = 1 Then
$bInt = IsInt($aArray[$iBase])
$sVarType = VarGetType($aArray[$iBase])
Else
$bInt = IsInt($aArray[$iBase][$iColumn])
$sVarType = VarGetType($aArray[$iBase][$iColumn])
EndIf
If $bInt And $sVarType = "Int64" Then
$iIntType = $ARRAYUNIQUE_FORCE64
Else
$iIntType = $ARRAYUNIQUE_FORCE32
EndIf
EndIf
ObjEvent("AutoIt.Error", __ArrayUnique_AutoErrFunc)
Local $oDictionary = ObjCreate("Scripting.Dictionary")
$oDictionary.CompareMode = Number(Not $iCase)
Local $vElem, $sType, $vKey, $bCOMError = False
For $i = $iBase To UBound($aArray) - 1
If $iDims = 1 Then
$vElem = $aArray[$i]
Else
$vElem = $aArray[$i][$iColumn]
EndIf
Switch $iIntType
Case $ARRAYUNIQUE_FORCE32
$oDictionary.Item($vElem)
If @error Then
$bCOMError = True
ExitLoop
EndIf
Case $ARRAYUNIQUE_FORCE64
$sType = VarGetType($vElem)
If $sType = "Int32" Then
$bCOMError = True
ExitLoop
EndIf
$vKey = "#" & $sType & "#" & String($vElem)
If Not $oDictionary.Item($vKey) Then
$oDictionary($vKey) = $vElem
EndIf
Case $ARRAYUNIQUE_MATCH
$sType = VarGetType($vElem)
If StringLeft($sType, 3) = "Int" Then
$vKey = "#Int#" & String($vElem)
Else
$vKey = "#" & $sType & "#" & String($vElem)
EndIf
If Not $oDictionary.Item($vKey) Then
$oDictionary($vKey) = $vElem
EndIf
Case $ARRAYUNIQUE_DISTINCT
$vKey = "#" & VarGetType($vElem) & "#" & String($vElem)
If Not $oDictionary.Item($vKey) Then
$oDictionary($vKey) = $vElem
EndIf
EndSwitch
Next
Local $aValues, $j = 0
If $bCOMError Then
Return SetError(7, 0, 0)
ElseIf $iIntType <> $ARRAYUNIQUE_FORCE32 Then
Local $aValues[$oDictionary.Count]
For $vKey In $oDictionary.Keys()
$aValues[$j] = $oDictionary($vKey)
If StringLeft($vKey, 5) = "#Ptr#" Then
$aValues[$j] = Ptr($aValues[$j])
EndIf
$j += 1
Next
Else
$aValues = $oDictionary.Keys()
EndIf
If $iCount Then
_ArrayInsert($aValues, 0, $oDictionary.Count)
EndIf
Return $aValues
EndFunc
Func _Array1DToHistogram($aArray, $iSizing = 100)
If UBound($aArray, 0) > 1 Then Return SetError(1, 0, "")
$iSizing = $iSizing * 8
Local $t, $n, $iMin = 0, $iMax = 0, $iOffset = 0
For $i = 0 To UBound($aArray) - 1
$t = $aArray[$i]
$t = IsNumber($t) ? Round($t) : 0
If $t < $iMin Then $iMin = $t
If $t > $iMax Then $iMax = $t
Next
Local $iRange = Int(Round(($iMax - $iMin) / 8)) * 8
Local $iSpaceRatio = 4
For $i = 0 To UBound($aArray) - 1
$t = $aArray[$i]
If $t Then
$n = Abs(Round(($iSizing * $t) / $iRange) / 8)
$aArray[$i] = ""
If $t > 0 Then
If $iMin Then
$iOffset = Int(Abs(Round(($iSizing * $iMin) / $iRange) / 8) / 8 * $iSpaceRatio)
$aArray[$i] = __Array_StringRepeat(ChrW(0x20), $iOffset)
EndIf
Else
If $iMin <> $t Then
$iOffset = Int(Abs(Round(($iSizing * ($t - $iMin)) / $iRange) / 8) / 8 * $iSpaceRatio)
$aArray[$i] = __Array_StringRepeat(ChrW(0x20), $iOffset)
EndIf
EndIf
$aArray[$i] &= __Array_StringRepeat(ChrW(0x2588), Int($n / 8))
$n = Mod($n, 8)
If $n > 0 Then $aArray[$i] &= ChrW(0x2588 + 8 - $n)
$aArray[$i] &= ' ' & $t
Else
$aArray[$i] = ""
EndIf
Next
Return $aArray
EndFunc
Func _Array2DCreate($aArray1, $aArray2)
If Not IsArray($aArray1) Or Not IsArray($aArray2) Then Return SetError(3, 0, "")
Local $iDim1 = UBound($aArray1, $UBOUND_DIMENSIONS), $iDim2 = UBound($aArray2, $UBOUND_DIMENSIONS)
If $iDim1 > 2 Or $iDim2 > 2 Then Return SetError(1, 0, "")
Local $nRows = UBound($aArray1, $UBOUND_ROWS)
If $nRows <> UBound($aArray2, $UBOUND_ROWS) Then Return SetError(2, 0, "")
Local $nCols1 = ($iDim1 = 1 ? 1 : UBound($aArray1, $UBOUND_COLUMNS))
Local $nCols2 = ($iDim2 = 1 ? 1 : UBound($aArray2, $UBOUND_COLUMNS))
Local $aTmp[$nRows][$nCols1 + $nCols2]
Select
Case $iDim1 = 1 And $iDim2 = 1
For $i = 0 To $nRows - 1
$aTmp[$i][0] = $aArray1[$i]
$aTmp[$i][1] = $aArray2[$i]
Next
Case $iDim1 = 1 And $iDim2 = 2
For $i = 0 To $nRows - 1
$aTmp[$i][0] = $aArray1[$i]
Next
For $j = 1 To $nCols2
For $i = 0 To $nRows - 1
$aTmp[$i][$j] = $aArray2[$i][$j - 1]
Next
Next
Case $iDim1 = 2 And $iDim2 = 1
For $j = 0 To $nCols1 - 1
For $i = 0 To $nRows - 1
$aTmp[$i][$j] = $aArray1[$i][$j]
Next
Next
For $i = 0 To $nRows - 1
$aTmp[$i][$nCols1] = $aArray2[$i]
Next
Case $iDim1 = 2 And $iDim2 = 2
For $j = 0 To $nCols1 - 1
For $i = 0 To $nRows - 1
$aTmp[$i][$j] = $aArray1[$i][$j]
Next
Next
For $j = $nCols1 To ($nCols1 + $nCols2) - 1
For $i = 0 To $nRows - 1
$aTmp[$i][$j] = $aArray2[$i][$j - $nCols1]
Next
Next
EndSelect
Return $aTmp
EndFunc
Func __Array_StringRepeat($sString, $iRepeatCount)
$iRepeatCount = Int($iRepeatCount)
If StringLen($sString) < 1 Or $iRepeatCount <= 0 Then Return SetError(1, 0, "")
Local $sResult = ""
While $iRepeatCount > 1
If BitAND($iRepeatCount, 1) Then $sResult &= $sString
$sString &= $sString
$iRepeatCount = BitShift($iRepeatCount, 1)
WEnd
Return $sString & $sResult
EndFunc
Func __Array_ExeterInternal(ByRef $aArray, $iStart, $iSize, $sDelimiter, ByRef $aIdx, ByRef $aResult, ByRef $iCount)
If $iStart == $iSize - 1 Then
For $i = 0 To $iSize - 1
$aResult[$iCount] &= $aArray[$aIdx[$i]] & $sDelimiter
Next
If $sDelimiter <> "" Then $aResult[$iCount] = StringTrimRight($aResult[$iCount], StringLen($sDelimiter))
$iCount += 1
Else
Local $iTemp
For $i = $iStart To $iSize - 1
$iTemp = $aIdx[$i]
$aIdx[$i] = $aIdx[$iStart]
$aIdx[$iStart] = $iTemp
__Array_ExeterInternal($aArray, $iStart + 1, $iSize, $sDelimiter, $aIdx, $aResult, $iCount)
$aIdx[$iStart] = $aIdx[$i]
$aIdx[$i] = $iTemp
Next
EndIf
EndFunc
Func __Array_Combinations($iN, $iR)
Local $i_Total = 1
For $i = $iR To 1 Step -1
$i_Total *= ($iN / $i)
$iN -= 1
Next
Return Round($i_Total)
EndFunc
Func __Array_GetNext($iN, $iR, ByRef $iLeft, $iTotal, ByRef $aIdx)
If $iLeft == $iTotal Then
$iLeft -= 1
Return
EndIf
Local $i = $iR - 1
While $aIdx[$i] == $iN - $iR + $i
$i -= 1
WEnd
$aIdx[$i] += 1
For $j = $i + 1 To $iR - 1
$aIdx[$j] = $aIdx[$i] + $j - $i
Next
$iLeft -= 1
EndFunc
Func __Array_MinMaxIndex(Const ByRef $aArray, $iCompNumeric, $iStart, $iEnd, $iSubItem, $fuComparison)
If $iCompNumeric = Default Then $iCompNumeric = 0
If $iCompNumeric <> 1 Then $iCompNumeric = 0
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If $iSubItem = Default Then $iSubItem = 0
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
If $iDim_1 < 0 Then Return SetError(1, 0, -1)
If $iEnd = -1 Then $iEnd = $iDim_1
If $iStart = -1 Then $iStart = 0
If $iStart < -1 Or $iEnd < -1 Then Return SetError(3, 0, -1)
If $iStart > $iDim_1 Or $iEnd > $iDim_1 Then Return SetError(3, 0, -1)
If $iStart > $iEnd Then Return SetError(4, 0, -1)
If $iDim_1 < 0 Then Return SetError(5, 0, -1)
Local $iMaxMinIndex = $iStart
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If $iCompNumeric Then
For $i = $iStart To $iEnd
If $fuComparison(Number($aArray[$i]), Number($aArray[$iMaxMinIndex])) Then $iMaxMinIndex = $i
Next
Else
For $i = $iStart To $iEnd
If $fuComparison($aArray[$i], $aArray[$iMaxMinIndex]) Then $iMaxMinIndex = $i
Next
EndIf
Case 2
If $iSubItem < 0 Or $iSubItem > UBound($aArray, $UBOUND_COLUMNS) - 1 Then Return SetError(6, 0, -1)
If $iCompNumeric Then
For $i = $iStart To $iEnd
If $fuComparison(Number($aArray[$i][$iSubItem]), Number($aArray[$iMaxMinIndex][$iSubItem])) Then $iMaxMinIndex = $i
Next
Else
For $i = $iStart To $iEnd
If $fuComparison($aArray[$i][$iSubItem], $aArray[$iMaxMinIndex][$iSubItem]) Then $iMaxMinIndex = $i
Next
EndIf
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return $iMaxMinIndex
EndFunc
Func __Array_GreaterThan($vValue1, $vValue2)
Return $vValue1 > $vValue2
EndFunc
Func __Array_LessThan($vValue1, $vValue2)
Return $vValue1 < $vValue2
EndFunc
Func __ArrayUnique_AutoErrFunc()
EndFunc
Func _ArrayCustomSort(ByRef $avArray, $sSortFunc, $iDescending = 0, $iStart = 0, $iEnd = 0, $iSubItem = 0)
If Not IsArray($avArray) Then Return SetError(1, 0, 0)
If Not IsString($sSortFunc) Then Return SetError(5, 0, 0)
Local $iUBound = UBound($avArray) - 1
If $iEnd < 1 Or $iEnd > $iUBound Then $iEnd = $iUBound
If $iStart < 0 Then $iStart = 0
If $iStart > $iEnd Then Return SetError(2, 0, 0)
Switch UBound($avArray, 0)
Case 1
__ArrayCustomQuickSort1D($avArray, $sSortFunc, $iStart, $iEnd)
If $iDescending Then _ArrayReverse($avArray, $iStart, $iEnd)
Case 2
Local $iSubMax = UBound($avArray, 2) - 1
If $iSubItem > $iSubMax Then Return SetError(3, 0, 0)
If $iDescending Then
$iDescending = -1
Else
$iDescending = 1
EndIf
__ArrayCustomQuickSort2D($avArray, $sSortFunc, $iDescending, $iStart, $iEnd, $iSubItem, $iSubMax)
Case Else
Return SetError(4, 0, 0)
EndSwitch
Return 1
EndFunc
Func __ArrayCustomQuickSort1D(ByRef $avArray, ByRef $sSortFunc, ByRef $iStart, ByRef $iEnd)
If $iEnd <= $iStart Then Return
Local $vTmp
If ($iEnd - $iStart) < 15 Then
Local $i, $j
For $i = $iStart + 1 To $iEnd
$vTmp = $avArray[$i]
For $j = $i - 1 To $iStart Step -1
If (Call($sSortFunc, $vTmp, $avArray[$j]) >= 0) Then ExitLoop
$avArray[$j + 1] = $avArray[$j]
Next
$avArray[$j + 1] = $vTmp
Next
Return
EndIf
Local $L = $iStart, $R = $iEnd, $vPivot = $avArray[Int(($iStart + $iEnd) / 2)]
Do
While (Call($sSortFunc, $avArray[$L], $vPivot) < 0)
$L += 1
WEnd
While (Call($sSortFunc, $avArray[$R], $vPivot) > 0)
$R -= 1
WEnd
If $L <= $R Then
$vTmp = $avArray[$L]
$avArray[$L] = $avArray[$R]
$avArray[$R] = $vTmp
$L += 1
$R -= 1
EndIf
Until $L > $R
__ArrayCustomQuickSort1D($avArray, $sSortFunc, $iStart, $R)
__ArrayCustomQuickSort1D($avArray, $sSortFunc, $L, $iEnd)
EndFunc
Func __ArrayCustomQuickSort2D(ByRef $avArray, ByRef $sSortFunc, ByRef $iStep, ByRef $iStart, ByRef $iEnd, ByRef $iSubItem, ByRef $iSubMax)
If $iEnd <= $iStart Then Return
Local $i, $vTmp, $L = $iStart, $R = $iEnd, $vPivot = $avArray[Int(($iStart + $iEnd) / 2)][$iSubItem]
Do
While ($iStep * Call($sSortFunc, $avArray[$L][$iSubItem], $vPivot) < 0)
$L += 1
WEnd
While ($iStep * Call($sSortFunc, $avArray[$R][$iSubItem], $vPivot) > 0)
$R -= 1
WEnd
If $L <= $R Then
For $i = 0 To $iSubMax
$vTmp = $avArray[$L][$i]
$avArray[$L][$i] = $avArray[$R][$i]
$avArray[$R][$i] = $vTmp
Next
$L += 1
$R -= 1
EndIf
Until $L > $R
__ArrayCustomQuickSort2D($avArray, $sSortFunc, $iStep, $iStart, $R, $iSubItem, $iSubMax)
__ArrayCustomQuickSort2D($avArray, $sSortFunc, $iStep, $L, $iEnd, $iSubItem, $iSubMax)
EndFunc
Func _NaturalCompare($s1, $s2, $iCase = 0)
If (Not IsString($s1)) Then $s1 = String($s1)
If (Not IsString($s2)) Then $s2 = String($s2)
If $iCase <> 0 And $iCase <> 1 Then $iCase = 0
Local $n = 0
Local $s1chunk, $s2chunk
Local $idx, $i1chunk, $i2chunk
Local $s1temp, $s2temp
While $n = 0
$s1chunk = StringRegExp($s1, "^(\d+|\D+)", 1)
If @error Then
$s1chunk = ""
Else
$s1chunk = $s1chunk[0]
EndIf
$s2chunk = StringRegExp($s2, "^(\d+|\D+)", 1)
If @error Then
$s2chunk = ""
Else
$s2chunk = $s2chunk[0]
EndIf
If $s1chunk = "" And $s2chunk = "" Then Return 0
$s1 = StringMid($s1, StringLen($s1chunk) + 1)
$s2 = StringMid($s2, StringLen($s2chunk) + 1)
Select
Case (Not StringIsDigit($s1chunk)) And (Not StringIsDigit($s2chunk))
$n = StringCompare($s1chunk, $s2chunk, $iCase)
Case StringIsDigit($s1chunk) And StringIsDigit($s2chunk)
$s1temp = $s1chunk
$s2temp = $s2chunk
$s1chunk = StringRegExpReplace($s1chunk, "^0*", "")
$s2chunk = StringRegExpReplace($s2chunk, "^0*", "")
$s1temp = StringLen($s1temp) - StringLen($s1chunk)
$s2temp = StringLen($s2temp) - StringLen($s2chunk)
If StringLen($s1chunk) > StringLen($s2chunk) Then
Return 1
ElseIf StringLen($s1chunk) < StringLen($s2chunk) Then
Return -1
EndIf
$idx = 1
While 1
$i1chunk = Int(StringMid($s1chunk, $idx, 8))
$i2chunk = Int(StringMid($s2chunk, $idx, 8))
If $i1chunk = "" And $i2chunk = "" Then
If $s1temp > $s2temp Then
Return -1
ElseIf $s1temp < $s2temp Then
Return 1
Else
ExitLoop
EndIf
EndIf
If $i1chunk > $i2chunk Then
Return 1
ElseIf $i1chunk < $i2chunk Then
Return -1
EndIf
$idx += 8
WEnd
Case Else
Return StringCompare($s1chunk, $s2chunk, $iCase)
EndSelect
WEnd
Return $n
EndFunc
Func _ClipPutHTML($sHTMLStr,$sPlainText="")
Local $sCF_HTMLStr=_ClipBoard_FormatHTML($sHTMLStr)
If @error Then Return SetError(@error,0,0)
Local $vRet=_ClipBoard_SendHTML($sCF_HTMLStr,$sPlainText)
SetError(@error,@extended)
Return $vRet
EndFunc
Func _ClipPutHyperlink($sURL,$sLabel="",$sSourceURL="")
If Not IsString($sURL) Or Not IsString($sSourceURL) Then Return SetError(1,0,0)
If Not IsString($sLabel) Then $sLabel=String($sLabel)
If $sLabel="" Then $sLabel=$sURL
Local $sUTF8Label=BinaryToString(StringToBinary($sLabel,4),1)
Local $sHTMLStr="<html><body>" & @CRLF &  '<a href="' & $sURL & '">' & $sUTF8Label & '</a>' & @CRLF &  "</body>" & @CRLF & "</html>"
$sHTMLClipStr=_ClipBoard_FormatHTML($sHTMLStr,15,15+StringLen($sURL)+15+StringLen($sUTF8Label)-1,1,-1,$sSourceURL)
Local $vRet=_ClipBoard_SendHTML($sHTMLClipStr,$sLabel)
SetError(@error,@extended)
Return $vRet
EndFunc
Func _ClipBoard_FormatHTML($sHTMLStr,$iFragmentStart=1,$iFragmentEnd=-1,$iHTMLStart=1,$iHTMLEnd=-1,$sSourceURL="")
If Not IsString($sHTMLStr) Then Return SetError(1,0,"")
Local $iHTMLLen=StringLen($sHTMLStr)
If $iHTMLEnd=-1 Then $iHTMLEnd=$iHTMLLen
If $iFragmentEnd=-1 Then $iFragmentEnd=$iHTMLLen
If $iHTMLStart<1 Or $iHTMLStart>$iHTMLEnd Or $iHTMLEnd>$iHTMLLen Then Return SetError(1,0,"")
If $iFragmentStart<$iHTMLStart Or $iFragmentStart>$iFragmentEnd Or $iFragmentEnd>$iHTMLEnd Then Return SetError(1,0,"")
Local $iCF_HTMLLen=97
If $sSourceURL<>"" Then
$iCF_HTMLLen+=12+StringLen($sSourceURL)
$sSourceURL="SourceURL:"&$sSourceURL&@CRLF
EndIf
Return ("Version:0.9" & @CRLF &  "StartHTML:"& StringRight("0000000"&($iHTMLStart+$iCF_HTMLLen-1),8) & @CRLF &  "EndHTML:"& StringRight("0000000"&($iHTMLEnd+$iCF_HTMLLen),8) & @CRLF &  "StartFragment:"& StringRight("0000000"&($iFragmentStart+$iCF_HTMLLen-1),8) & @CRLF &  "EndFragment:"& StringRight("0000000"&($iFragmentEnd+$iCF_HTMLLen),8) & @CRLF &  $sSourceURL & $sHTMLStr)
EndFunc
Func _ClipBoard_SendHTML(Const ByRef $sHTMLData, Const ByRef $sPlainText)
Local $tData, $hLock, $hMemory, $hPTMemory, $iSize, $iCF_HTMLFormat, $iClipErr=0
$iSize = StringLen($sHTMLData) + 1
$hMemory = _MemGlobalAlloc($iSize, $GHND)
If $hMemory = 0 Then Return SetError(-1, 0, 0)
$hLock = _MemGlobalLock($hMemory)
If $hLock = 0 Then Return SetError(-2, 0, 0)
$tData = DllStructCreate("char[" & $iSize & "]", $hLock)
DllStructSetData($tData,1,$sHTMLData)
_MemGlobalUnlock($hMemory)
If $sPlainText<>"" Then
$iSize = StringLen($sPlainText) + 1
$hPTMemory = _MemGlobalAlloc($iSize*2, $GHND)
If $hPTMemory = 0 Then Return SetError(-1, 1, 0)
$hLock = _MemGlobalLock($hPTMemory)
If $hLock = 0 Then Return SetError(-2, 1, 0)
$tData = DllStructCreate("wchar[" & $iSize & "]", $hLock)
DllStructSetData($tData,1,$sPlainText)
_MemGlobalUnlock($hPTMemory)
Else
$hPTMemory=0
EndIf
If Not _ClipBoard_Open(0) Then Return SetError(-5, 0, 0)
If Not _ClipBoard_Empty() Then Return SetError(-6, 0, 0)
$iCF_HTMLFormat=_ClipBoard_RegisterFormat("HTML Format")
If $iCF_HTMLFormat=0 Then
$iClipErr=-9
ElseIf Not _ClipBoard_SetDataEx($hMemory,$iCF_HTMLFormat) Then
$iClipErr=-7
ElseIf $sPlainText<>"" And Not _ClipBoard_SetDataEx($hPTMemory,13) Then
$iClipErr=-8
EndIf
_ClipBoard_Close()
If $iClipErr Then
If $iClipErr<>-8 Then Return SetError($iClipErr,0,0)
SetError($iClipErr,0)
Else
SetError(0,$hPTMemory)
EndIf
Return $hMemory
EndFunc
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
Global $gCtxMain
Global $aCtxMenu[1][5]
$aCtxMenu[0][0]=0
_InitDefMenu()
Global $sClipAct, $gsTooltip, $ghToolTip, $ghCtxMain
Global $aDisplays, $aMousePos[4], $aMon[4]
Global $aPins[0][2]
Global $aMenu[0]
Local $iLeftLast,$iTopLast
Global $hSelfLib, $hGraphics, $hBitmap, $hContext, $hHBitmap, $hBrushBl, $hBrushGr, $hBrushRd, $hBrushBk, $hIcon, $hHBitmap
Global $g_sLog=$g_sDataDir&"\cwOverlay.log"
FileClose(FileOpen($g_sLog,2))
_WinAPI_SetProcessDpiAwarenessContext($DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2)
Global $iDpiLast,$iDpiScale=1.5
Global $aMonitors=_GetMonInfo()
Global $iPriMon=$aMonitors[0][1]
Global $iMonLast=-1
Global $iDpiNoScale=$aMonitors[$iPriMon][5]/96
Global $iDpi=1.0
_Log(StringFormat("[a] iDpiScale:%0.3f, iDpiNoScale:%0.3f, iDpi:%0.3f",$iDpiScale,$iDpiNoScale,$iDpi))
Local $iSizeIco, $iMargin, $iWidth, $iHeight, $iRight, $iTop
_gfxRecalc()
Global $hGUI
$iLeft=@DesktopWidth-$iRight
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
$hBitmapIcon=_GDIPlus_ImageResize($hIcon,$iSizeIco,$iSizeIco)
_GDIPlus_BitmapSetResolution($hBitmapIcon,96,96)
_Log(StringFormat("[c] iDpi:%0.3f, iSizeIco:%d, iDpiNoScale:%0.3f, iSizeIco*iDpiNoScale:%0.3f, 24*iDpiNoScale:%f",$iDpi,$iSizeIco,$iDpiNoScale,$iSizeIco*$iDpiNoScale,24*$iDpiNoScale))
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
_GDIPlus_GraphicsFillEllipse($hContext, 0, 0, $iMargin+$iSizeIco+$iMargin, $iMargin+$iSizeIco+$iMargin, $hBrushBk)
_GDIPlus_GraphicsFillRect($hContext, $iMargin+($iSizeIco/2), 0, $iWidth-$iMargin-($iSizeIco/2), $iMargin+$iSizeIco+$iMargin, $hBrushBk)
$iIcoHeight=_GDIPlus_ImageGetHeight($hBitmapIcon)
_Log(StringFormat("[d] iIcoHeight:%d, iMargin:%d",$iIcoHeight,$iMargin))
_GDIPlus_GraphicsFillEllipse($hContext, $iMargin, $iMargin, $iSizeIco, $iSizeIco, $hBrushRd)
_GDIPlus_GraphicsDrawImage($hContext, $hBitmapIcon, $iMargin, $iMargin)
$hHBitmap=_GDIPlus_BitmapCreateHBITMAPFromBitmap($hBitmap)
EndFunc
Func _gfxReload()
_gfxDispose()
_gfxDraw()
_WinAPI_UpdateLayeredWindowEx($hGUI, -1, -1, $hHBitmap,0xBB)
EndFunc
Func initUI()
_GDIPlus_Startup()
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
_WinAPI_UpdateLayeredWindowEx($hGUI, -1, -1, $hHBitmap,0xBB)
EndFunc
Func WM_EVENTS($hWnd,$MsgID,$WParam,$LParam)
If $hWnd<>$hGui Or $MsgID<>$WM_MOUSEACTIVATE Then Return $GUI_RUNDEFMSG
Local $aPos=GUIGetCursorInfo($hGui)
If Pixel_Distance($aPos[0],$aPos[1],$iMargin+($iSizeIco/2),$iMargin+($iSizeIco/2))<=($iSizeIco/2) Then
Local $iX=$iMargin+($iSizeIco/2)
Local $iY=$iX
GUISetState(@SW_SHOWNOACTIVATE, $hGUI)
AdlibRegister("_ctxEvent")
EndIf
Return $MA_NOACTIVATEANDEAT
EndFunc
Func WM_SYSCOMMAND($hWnd,$Msg,$wParam,$lParam)
If $hWnd<>$hGui Then $GUI_RUNDEFMSG
If BitAND($wParam,0xFFF0)=0xF010 Then Return 0
Return $GUI_RUNDEFMSG
EndFunc
Func WM_NCHITTEST($hWnd,$iMsg,$wParam,$lParam)
#forceref $hWnd, $iMsg, $wParam, $lParam
Return $HTCAPTION
EndFunc
Func WM_MOVING($hWnd,$iMsg,$wParam,$lParam)
If $hWnd=$hGui Then Return 1
Return $GUI_RUNDEFMSG
EndFunc
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
_MenuAdd($aCtxMenu,2,'Clip',$aCtxClip)
_MenuAdd($aCtxMenu,0)
_MenuAdd($aCtxMenu,1,'Dismiss','_ctxReload')
_MenuAdd($aCtxMenu,1,'Exit','_ctxExit')
EndFunc
Func _InitMenu2(ByRef $aMenu, $idParent)
Local $idCtrl,$hCtrl,$sAlias,$iType,$vActPar
For $i=1 To $aMenu[0][0]
$iType=$aMenu[$i][0]
$sAlias=$aMenu[$i][1]
$vActPar=$aMenu[$i][2]
Switch $iType
Case 0
$idCtrl=GUICtrlCreateMenuItem('', $idParent)
Case 1
$idCtrl=GUICtrlCreateMenuItem($sAlias, $idParent)
GUICtrlSetOnEvent($idCtrl,$vActPar)
Case 2
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
Func Pixel_Distance($x1, $y1, $x2, $y2)
Local $a, $b, $c
If $x2 = $x1 And $y2 = $y1 Then
Return 0
Else
$a = $y2 - $y1
$b = $x2 - $x1
$c = Sqrt($a * $a + $b * $B)
Return $c
EndIf
EndFunc
Func onDisplayChange($hWnd, $nMsgID, $wParam, $lParam)
ConsoleWrite('Resolution changed to "' & @DesktopWidth & 'x' & @DesktopHeight & '".'&@CRLF)
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
$aDPI = _WinAPI_GetDpiForMonitor($aDisplays[$i][0], 0)
If IsArray($aDPI) Then
$aDisplays[$i][15]=$aDPI[0]
$aDisplays[$i][16]=$aDPI[1]
EndIf
Next
EndFunc
Func posTrackCall()
posTrack()
EndFunc
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
$aPos=WinGetPos($hGui)
If $bForce Or ($aPos[0]<>$iLeft Or $aPos[1]<>$iTop) Then
GUISetState(@SW_HIDE, $hGui)
_gfxReload()
WinMove($hGui,"",$iLeft,$iTop)
_WinAPI_SetProcessDpiAwarenessContext($DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2)
EndIf
GUISetState(@SW_SHOWNOACTIVATE, $hGui)
EndIf
Return SetError(0,5,0)
EndFunc
Func ShowMenu($hWnd, $nContextID, $X, $Y, $iMouse=0)
Local $hMenu = GUICtrlGetHandle($nContextID)
ClientToScreen($hWnd, $X, $Y)
If $iMouse Then
$X = MouseGetPos(0)
$Y = MouseGetPos(1)
EndIf
DllCall("user32.dll", "int", "TrackPopupMenuEx", "hwnd", $hMenu, "int", 0x0008, "int", $X, "int", $Y, "hwnd", $hWnd, "ptr", 0)
EndFunc
Func ClientToScreen($hWnd, ByRef $x, ByRef $y)
Local $stPoint = DllStructCreate("int;int")
DllStructSetData($stPoint, 1, $x)
DllStructSetData($stPoint, 2, $y)
DllCall("user32.dll", "int", "ClientToScreen", "hwnd", $hWnd, "ptr", DllStructGetPtr($stPoint))
$x = DllStructGetData($stPoint, 1)
$y = DllStructGetData($stPoint, 2)
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
_destroyMenu($aCtxMenu, $gCtxMain)
_InitMenu2($aCtxMenu, $gCtxMain)
$aPos=MouseGetPos()
ShowMenu($hGui, $gCtxMain,0,0,1)
EndFunc
Func __ClipPutHyperlink($sURL,$sLabel="",$sSourceURL="")
If Not IsString($sURL) Or Not IsString($sSourceURL) Then Return SetError(1,0,0)
If Not IsString($sLabel) Then $sLabel=String($sLabel)
If $sLabel="" Then $sLabel=$sURL
Local $sUTF8Label=BinaryToString(StringToBinary($sLabel,4),1)
Local $sHTMLStr="<html><body>" & @CRLF & '<p style="font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace;"><a href="' & $sURL & '">' & $sUTF8Label & '</a></p>' & @CRLF & "</body>" & @CRLF & "</html>"
$sHTMLClipStr=_ClipBoard_FormatHTML($sHTMLStr,15,15+StringLen($sURL)+15+StringLen($sUTF8Label)-1,1,-1,$sSourceURL)
Local $vRet=_ClipBoard_SendHTML($sHTMLClipStr,$sLabel)
SetError(@error,@extended)
Return $vRet
EndFunc
Func _isWindowsLocked()
If _WinAPI_OpenInputDesktop() Then Return False
Return True
EndFunc
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
Func __WinAPI_EnumDisplayMonitors($hDC = 0, $tRECT = 0)
Local $hEnumProc = DllCallbackRegister('__EnumDisplayMonitorsProc', 'bool', 'handle;handle;ptr;lparam')
Dim $__g_vEnum[101][2] = [[0]]
Local $aCall = DllCall($gDll_hUser32, 'bool', 'EnumDisplayMonitors', 'handle', $hDC, 'struct*', $tRECT, 'ptr', DllCallbackGetPtr($hEnumProc), 'lparam', 0)
If @error Or Not $aCall[0] Or Not $__g_vEnum[0][0] Then
$__g_vEnum = @error + 10
EndIf
DllCallbackFree($hEnumProc)
If $__g_vEnum Then Return SetError($__g_vEnum, 0, 0)
__Inc($__g_vEnum, -1)
Return $__g_vEnum
EndFunc
Func __WinAPI_GetMonitorInfo($hMonitor)
Local $tMIEX = DllStructCreate('dword;long[4];long[4];dword;wchar[32]')
DllStructSetData($tMIEX, 1, DllStructGetSize($tMIEX))
Local $aCall = DllCall($gDll_hUser32, 'bool', 'GetMonitorInfoW', 'handle', $hMonitor, 'struct*', $tMIEX)
If @error Or Not $aCall[0] Then Return SetError(@error + 10, @extended, 0)
Local $aRet[4]
For $i = 0 To 1
$aRet[$i] = DllStructCreate($tagRECT)
__WinAPI_MoveMemory($aRet[$i], DllStructGetPtr($tMIEX, $i + 2), 16)
Next
$aRet[3] = DllStructGetData($tMIEX, 5)
Switch DllStructGetData($tMIEX, 4)
Case 1
$aRet[2] = 1
Case Else
$aRet[2] = 0
EndSwitch
Return $aRet
EndFunc
Func __WinAPI_MoveMemory($pDestination, $pSource, $iLength)
If __WinAPI_IsBadReadPtr($pSource, $iLength) Then Return SetError(10, @extended, 0)
If __WinAPI_IsBadWritePtr($pDestination, $iLength) Then Return SetError(11, @extended, 0)
DllCall($gDll_hNTDll, 'none', 'RtlMoveMemory', 'struct*', $pDestination, 'struct*', $pSource, 'ulong_ptr', $iLength)
If @error Then Return SetError(@error, @extended, 0)
Return 1
EndFunc
Func __WinAPI_IsBadReadPtr($pAddress, $iLength)
Local $aCall = DllCall($gDll_hKernel32, 'bool', 'IsBadReadPtr', 'struct*', $pAddress, 'uint_ptr', $iLength)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
Func __WinAPI_IsBadWritePtr($pAddress, $iLength)
Local $aCall = DllCall($gDll_hKernel32, 'bool', 'IsBadWritePtr', 'struct*', $pAddress, 'uint_ptr', $iLength)
If @error Then Return SetError(@error, @extended, False)
Return $aCall[0]
EndFunc
