' Bring focus to Notepad

' Create WScript Shell Object to access filesystem.
Set WshShell = WScript.CreateObject("WScript.Shell")

' Setup for logging
dtmStartTime=Timer

' Select, or bring Focus to a window named `NOTEPAD`
WshShell.AppActivate "Notepad"

Dim lengthy
lengthy=Round(Timer-dtmStartTime,5)

' Taking away the 5 seconds added in earlier
' lengthy=Round(lengthy-5,5)

WshShell.SendKeys "{ENTER}Execution time:  "& lengthy &" seconds!"

' Setup for saving the time
Dim output,fileSystemObject, filePath
filePath="C:\Users\VBASPTHILDER\Documents\Downloads\I_robot\vbsScripts\outputFiles\2-focustest.txt"
Set fileSystemObject=CreateObject("Scripting.FileSystemObject")
Set output=fileSystemObject.CreateTextFile(filePath, true)
output.WriteLine("Focusing on Notepad took "+lengthy+" seconds.")
output.Close