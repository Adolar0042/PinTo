# PinTo
A simple Powershell script to pin and unpin apps from the Windows 10 Taskbar and Startmenu using [technosys's syspin programm](http://www.technosys.net/products/utils/pintotaskbar).

All credit goes to them, I did nothing more than making a function that simplifies its use in a script.

It temporarily downloads the .exe, uses it to pin / unpin the app and then deletes it again.

## Examples

pinto "C:\Windows\notepad.exe" pinTask
pinTo "C:\Windows\notepad.exe" unpinTask

pinTo "C:\Windows\notepad.exe" pinStart
pinTo "C:\Windows\notepad.exe" unpinStart

# unpinTask

A simpler version, that can only unpin from Taskbar, but doesnt use 3rd party programs

## Example

unpinTask "Microsoft Store"
