' Create WScript Shell Object to access filesystem.
Set WshShell = WScript.CreateObject("WScript.Shell")

' Setup for logging
dtmStartTime=Timer

' Wait for 5 seconds to account for processor speed
WScript.Sleep 5000

WshShell.SendKeys "Hello Morgan and Sowmya!"
WshShell.SendKeys "{ENTER}"

Dim lengthy
lengthy=Round(Timer-dtmStartTime,5)

' Taking away the 5 seconds added in earlier
lengthy=Round(lengthy-5,5)


WshShell.SendKeys "{ENTER}Execution time:  "& lengthy &" seconds!"

' Setup for saving the time
Dim output,fileSystemObject, filePath
filePath="C:\Users\VBASPTHILDER\Documents\Downloads\I_robot\vbsScripts\outputFiles\3-hellotest.txt"
Set fileSystemObject=CreateObject("Scripting.FileSystemObject")
Set output=fileSystemObject.CreateTextFile(filePath, true)
output.WriteLine("It took "+lengthy+" seconds to say hello")
output.Close