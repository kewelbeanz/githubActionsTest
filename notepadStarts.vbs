' Script 1 to start notepad

' Create WScript Shell Object to access filesystem.
Set WshShell = WScript.CreateObject("WScript.Shell")

' Setup for logging
dtmStartTime=Timer

' Start / Run NOTEPAD.EXE
WshShell.Run "%windir%\notepad.exe"
Dim lengthy
lengthy=Round(Timer-dtmStartTime,5)

' Taking away the 5 seconds added in earlier
'lengthy=Round(lengthy-5,5)

WshShell.SendKeys "{ENTER}Execution time:  "& lengthy &" seconds!"

' Setup for saving the time
Dim output,fileSystemObject, filePath
filePath="C:\Users\VBASPTHILDER\Documents\Downloads\I_robot\vbsScripts\outputFiles\1-notepadStart.txt"
Set fileSystemObject=CreateObject("Scripting.FileSystemObject")
Set output=fileSystemObject.CreateTextFile(filePath, true)
output.WriteLine("Notepad started in "+lengthy+" seconds.")
output.Close
