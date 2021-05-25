' This file is part of Windows_Proxy_Toggler: https://github.com/ElectricRCAircraftGuy/Windows_Proxy_Toggler
'
' Toggle your Proxy on and off via a clickable desktop shortcut/icon
' By Gabriel Staples, June 2017
' www.ElectricRCAircraftGuy.com
' See the README at the link above.

Option Explicit

'Variables & Constants:
Dim ProxySettings_path, VbsScript_filename
ProxySettings_path = "C:\Users\Gabriel\Proxy Settings"
VbsScript_filename = "toggle_proxy_on_off.vbs"
'sec; change this value to set how long the message box displays when you toggle the proxy setting
Const MESSAGE_BOX_TIMEOUT = 1
Const PROXY_OFF = 0

Dim WSHShell, proxyEnableVal, username
Set WSHShell = WScript.CreateObject("WScript.Shell")
'get the username string for use in path names, since trying to use the "%USERNAME%" variable
'directly in path names throws an error
username = WSHShell.ExpandEnvironmentStrings("%USERNAME%")

'Determine current proxy setting and toggle to opposite setting
proxyEnableVal = wshshell.regread("HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable")
If proxyEnableVal = PROXY_OFF Then
    TurnProxyOn
Else
    TurnProxyOff
End If

'Subroutine to Toggle Proxy Setting to ON
Sub TurnProxyOn
    'turn proxy on via a registry entry
    WSHShell.regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable", 1, "REG_DWORD"
    'create/update desktop shortcut
    CreateOrUpdateDesktopShortcut("on")
    'notify user via an auto-timed popup box
    WSHShell.Popup "Internet proxy is now ON", MESSAGE_BOX_TIMEOUT, "Proxy Settings"
End Sub

'Subroutine to Toggle Proxy Setting to OFF
Sub TurnProxyOff
    'turn proxy off via a registry entry
    WSHShell.regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable", 0, "REG_DWORD"
    'create/update desktop shortcut
    CreateOrUpdateDesktopShortcut("off")
    'notify user via an auto-timed popup box
    WSHShell.Popup "Internet proxy is now OFF", MESSAGE_BOX_TIMEOUT, "Proxy Settings"
End Sub

'Subroutine to create or update a shortcut on the desktop
Sub CreateOrUpdateDesktopShortcut(onOrOff)
    'create a shortcut
    Dim shortcut, iconStr
    Set shortcut = WSHShell.CreateShortcut("C:\Users\" + username + "\Desktop\Proxy On-Off.lnk")
    'Set the target path (target file) to run when the shortcut is clicked
    shortcut.TargetPath = ProxySettings_path + "\" + VbsScript_filename
    'Set the working directory. This is necessary in case you ever make this shortcut call a batch
    '(.bat) file, for instance, which in turn calls a .vbs script. In order to know where the .vbs
    'script file/command is located, the shortcut must be operating in the working directory where
    'the .vbs scripts are located. Otherwise, calls to the .vbs scripts from a .bat file this
    'shortcut points to, for instance, won't work since their directories are not in the Windows
    '%PATH% variable, and you'll get an error which states: "'name_of_vbs_script_file' is not
    'recognized as an internal or external command, operable program or batch file."
    shortcut.WorkingDirectory = ProxySettings_path
    'Set the icon to associate with this shortcut
    If onOrOff = "on" Then
        iconStr = "on.ico"
    ElseIf onOrOff = "off" Then
        iconStr = "off.ico"
    End If
    shortcut.IconLocation = ProxySettings_path + "\Icons\" + iconStr
    'Save the shortcut
    shortcut.Save
End Sub
