; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=COptionPage3
LastTemplate=CPropertyPage
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "start_new.h"

ClassCount=14
Class1=CStart_newApp
Class2=CStart_newDlg
Class3=CAboutDlg

ResourceCount=11
Resource1=IDD_OPTIONS2
Resource2=IDR_MAINFRAME
Resource3=IDD_ABOUTBOX
Class4=CPlayersDialog
Class5=COptionsDlg
Class6=COptionsSheet
Resource4=IDD_ASTEROIDS
Resource5=IDD_OPTIONS3
Class7=COptionPage1
Class8=COptionPage2
Resource6=IDD_OPTIONS1
Class9=COptionPage3
Resource7=IDD_OPTIONS4
Class10=CShipSelectDlg
Resource8=IDD_PLAYERS
Class11=COptionPage4
Class12=CAviPlayMFC
Resource9=IDD_START_NEW_DIALOG
Class13=CAsteroids
Resource10=IDD_SHIPSELECT
Class14=CSoundPage
Resource11=IDD_SOUND

[CLS:CStart_newApp]
Type=0
HeaderFile=start_new.h
ImplementationFile=start_new.cpp
Filter=N

[CLS:CStart_newDlg]
Type=0
HeaderFile=start_newDlg.h
ImplementationFile=start_newDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC
LastObject=IDC_CREDITS

[CLS:CAboutDlg]
Type=0
HeaderFile=start_newDlg.h
ImplementationFile=start_newDlg.cpp
Filter=D
LastObject=CAboutDlg

[DLG:IDD_ABOUTBOX]
Type=1
Class=CAboutDlg
ControlCount=4
Control1=IDC_STATIC,static,1342177283
Control2=IDC_STATIC,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889

[DLG:IDD_START_NEW_DIALOG]
Type=1
Class=CStart_newDlg
ControlCount=6
Control1=IDC_STARTMULTI,button,1342275584
Control2=IDC_OPTIONS,button,1342275584
Control3=IDC_CREDITS,button,1342275584
Control4=IDC_EXIT,button,1342275584
Control5=IDC_EDITOR,button,1476493312
Control6=IDC_STATS,button,1342275584

[DLG:IDD_PLAYERS]
Type=1
Class=CPlayersDialog
ControlCount=19
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_STATIC,static,1342308352
Control4=IDC_PLAYERS,combobox,1342242819
Control5=IDC_STATIC,static,1342308352
Control6=IDC_CONTROL2,combobox,1344339971
Control7=IDC_STATIC,static,1342308352
Control8=IDC_STATIC,static,1342308352
Control9=IDC_STATIC,static,1342308352
Control10=IDC_CONTROL3,combobox,1344339971
Control11=IDC_CONTROL4,combobox,1344339971
Control12=IDC_CONTROL1,combobox,1344339971
Control13=IDC_NAME1,edit,1350631552
Control14=IDC_NAME2,edit,1350631552
Control15=IDC_NAME3,edit,1350631552
Control16=IDC_NAME4,edit,1350631552
Control17=IDC_STATIC,button,1342177287
Control18=IDC_STATIC,button,1342177287
Control19=IDC_STATIC,button,1342177287

[CLS:CPlayersDialog]
Type=0
HeaderFile=PlayersDialog.h
ImplementationFile=PlayersDialog.cpp
BaseClass=CDialog
Filter=D
LastObject=IDC_CONTROL2
VirtualFilter=dWC

[CLS:COptionsDlg]
Type=0
HeaderFile=OptionsDlg.h
ImplementationFile=OptionsDlg.cpp
BaseClass=CDialog
Filter=D
LastObject=IDC_TRIPLEBUFFERING

[CLS:COptionsSheet]
Type=0
HeaderFile=OptionsSheet.h
ImplementationFile=OptionsSheet.cpp
BaseClass=CPropertySheet
Filter=W
LastObject=COptionsSheet
VirtualFilter=hWC

[DLG:IDD_OPTIONS1]
Type=1
Class=COptionPage1
ControlCount=19
Control1=IDC_BORG,button,1342242819
Control2=IDC_BORGTIME,edit,1350631552
Control3=IDC_STATIC,static,1342308352
Control4=IDC_CONTROL2,combobox,1344339971
Control5=IDC_STATIC,static,1342308352
Control6=IDC_STATIC,static,1342308352
Control7=IDC_STATIC,static,1342308352
Control8=IDC_CONTROL3,combobox,1344339971
Control9=IDC_CONTROL4,combobox,1344339971
Control10=IDC_CONTROL1,combobox,1344339971
Control11=IDC_NAME1,edit,1350631552
Control12=IDC_NAME2,edit,1350631552
Control13=IDC_NAME3,edit,1350631552
Control14=IDC_NAME4,edit,1350631552
Control15=IDC_STATIC,button,1342177287
Control16=IDC_STATIC,button,1342177287
Control17=IDC_STATIC,button,1342177287
Control18=IDC_STATIC,static,1342308352
Control19=IDC_PLAYERS,combobox,1344339971

[DLG:IDD_OPTIONS2]
Type=1
Class=COptionPage2
ControlCount=17
Control1=IDC_STATIC,static,1342308352
Control2=IDC_COLORDEPTH,combobox,1344339971
Control3=IDC_TRIPLEBUFFERING,button,1342242819
Control4=IDC_WINDOWMODE,button,1342242819
Control5=IDC_CHECK1,button,1342242819
Control6=IDC_CHECK2,button,1342242819
Control7=IDC_CHECK3,button,1342242819
Control8=IDC_CHECK4,button,1342242819
Control9=IDC_CHECK5,button,1342242819
Control10=IDC_CHECK6,button,1342242819
Control11=IDC_CHECK7,button,1342242819
Control12=IDC_CHECK8,button,1342242819
Control13=IDC_CHECK9,button,1342242819
Control14=IDC_STATIC,static,1342308352
Control15=IDC_RESX,edit,1350631552
Control16=IDC_RESY,edit,1350631552
Control17=IDC_STATIC,static,1342308352

[CLS:COptionPage1]
Type=0
HeaderFile=OptionPages.h
ImplementationFile=OptionPages.cpp
BaseClass=CPropertyPage
Filter=D
LastObject=COptionPage1
VirtualFilter=idWC

[CLS:COptionPage2]
Type=0
HeaderFile=optionpages.h
ImplementationFile=optionpages.cpp
BaseClass=CPropertyPage
Filter=D
LastObject=COptionPage2
VirtualFilter=idWC

[DLG:IDD_OPTIONS3]
Type=1
Class=COptionPage3
ControlCount=14
Control1=IDC_STATIC,static,1342308352
Control2=IDC_STATIC,static,1342308352
Control3=IDC_IMAGE,edit,1350631552
Control4=IDC_SOUND,edit,1350631552
Control5=IDC_INFO,button,1342242819
Control6=IDC_STATIC,static,1342308352
Control7=IDC_STATIC,static,1342308352
Control8=IDC_LOADPICTURE,edit,1350631552
Control9=IDC_DEATHSOUND,edit,1350631552
Control10=IDC_CDTRACK,edit,1350631552
Control11=IDC_CDPLAY,button,1342242819
Control12=IDC_STATIC,static,1342308352
Control13=IDC_GAMESPEED,edit,1350631552
Control14=IDC_STATIC,static,1342308352

[CLS:COptionPage3]
Type=0
HeaderFile=optionpages.h
ImplementationFile=optionpages.cpp
BaseClass=CPropertyPage
Filter=D
VirtualFilter=idWC
LastObject=IDC_SOUND2

[DLG:IDD_SHIPSELECT]
Type=1
Class=CShipSelectDlg
ControlCount=8
Control1=IDOK,button,1342242817
Control2=IDCANCEL,button,1342242816
Control3=IDC_ANIMATE1,SysAnimate32,1350631428
Control4=IDC_SHIPS,listbox,1352728833
Control5=IDC_PLAYERS,listbox,1352728833
Control6=IDC_STATIC,static,1342308352
Control7=IDC_STATIC,static,1342308352
Control8=IDC_OPTIONS,button,1342251008

[CLS:CShipSelectDlg]
Type=0
HeaderFile=ShipSelectDlg.h
ImplementationFile=ShipSelectDlg.cpp
BaseClass=CDialog
Filter=D
LastObject=CShipSelectDlg
VirtualFilter=dWC

[DLG:IDD_OPTIONS4]
Type=1
Class=COptionPage4
ControlCount=14
Control1=IDC_STATIC,button,1342177287
Control2=IDC_STATIC,static,1342308352
Control3=IDC_STATIC,static,1342308352
Control4=IDC_STATIC,static,1342308352
Control5=IDC_STATIC,static,1342308352
Control6=IDC_UP1,combobox,1344339971
Control7=IDC_RIGHT1,combobox,1344339971
Control8=IDC_DOWN1,combobox,1344339971
Control9=IDC_LEFT1,combobox,1344339971
Control10=IDC_STATIC,static,1342308352
Control11=IDC_FIRE1,combobox,1344339971
Control12=IDC_KEYBOARD,combobox,1344339971
Control13=IDC_SPECIAL,combobox,1344339971
Control14=IDC_STATIC,static,1342308352

[CLS:COptionPage4]
Type=0
HeaderFile=OptionPages.h
ImplementationFile=OptionPages.cpp
BaseClass=CPropertyPage
Filter=D
LastObject=COptionPage4
VirtualFilter=idWC

[CLS:CAviPlayMFC]
Type=0
HeaderFile=\Save\VisualC++6\include\aviplaymfc.h
ImplementationFile=\Save\VisualC++6\include\aviplaymfc.cpp
BaseClass=CWnd
LastObject=CAviPlayMFC
Filter=W
VirtualFilter=WC

[DLG:IDD_ASTEROIDS]
Type=1
Class=CAsteroids
ControlCount=12
Control1=IDC_ASTEROIDS,button,1342242819
Control2=IDC_STATIC,button,1342177287
Control3=IDC_STATIC,static,1342308352
Control4=IDC_STATIC,static,1342308352
Control5=IDC_STATIC,static,1342308352
Control6=IDC_STATIC,static,1342308352
Control7=IDC_STATIC,static,1342308352
Control8=IDC_INTERVAL,edit,1350631552
Control9=IDC_DISTANCE,edit,1350631552
Control10=IDC_COUNT,edit,1350631552
Control11=IDC_SPEED,edit,1350631552
Control12=IDC_RADIUS,edit,1350631552

[CLS:CAsteroids]
Type=0
HeaderFile=Asteroids.h
ImplementationFile=Asteroids.cpp
BaseClass=CPropertyPage
Filter=D
LastObject=CAsteroids
VirtualFilter=idWC

[DLG:IDD_SOUND]
Type=1
Class=CSoundPage
ControlCount=8
Control1=IDC_SFX,msctls_trackbar32,1342242840
Control2=IDC_MUSIC,msctls_trackbar32,1342242840
Control3=IDC_SPEECH,msctls_trackbar32,1342242840
Control4=IDC_STATIC,button,1342177287
Control5=IDC_STATIC,button,1342177287
Control6=IDC_STATIC,button,1342177287
Control7=IDC_MASTER,msctls_trackbar32,1342242840
Control8=IDC_STATIC,button,1342177287

[CLS:CSoundPage]
Type=0
HeaderFile=SoundPage.h
ImplementationFile=SoundPage.cpp
BaseClass=CPropertyPage
Filter=D
VirtualFilter=idWC
LastObject=IDC_MASTER

