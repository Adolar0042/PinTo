# PinTo
A simple Powershell script to pin and unpin apps from the Windows 10 Taskbar and Startmenu using technosys's syspin programm.

It temporarily downloads the .exe, uses it to pin / unpin the app and then deletes it again.

# Examples

pinto "C:\Windows\notepad.exe" pinTask
pinTo "C:\Windows\notepad.exe" unpinTask

pinTo "C:\Windows\notepad.exe" pinStart
pinTo "C:\Windows\notepad.exe" unpinStart
