@COLOR 0A 
@Title Virus Temizleyici. 
@echo Genel temizlik esnasinda 
@echo Lutfen islemin tamamlanmasini bekleyin 
@echo ------- 
@echo OFF 
taskkill /im explorer.exe /f 
taskkill /im bittorrent.exe /f 
taskkill /im wscript.exe 
taskkill /im activexdebugger32.exe /f 
start reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\EXp lorer\Advanced /v ShowSuperHidden /t REG_DWORD /d 1 /f 
start reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\EXp lorer\Advanced /v Hidden /t REG_DWORD /d 1 /f 
start reg import kill.reg 
del /q /s "%TEMP%\*.*"
for /d %%x in ("%TEMP%\*") do rmdir /q /s "%%x"
cd\ 
attrib -h -r -s fooool.exe 
attrib -h -r -s autorun.inf 
attrib -h -r -s bittorrent.exe 
attrib -h -r -s sxs.exe 
attrib -h -r -s copy.exe 
attrib -h -r -s command.exe 
attrib -h -r -s msvcr71.dll 
attrib -h -r -s ie.exe 
attrib -h -r -s copy.exe 
attrib -h -r -s r6r.exe 
attrib -h -r -s autorun.vbs 
attrib -h -r -s WSscript.exe 
del autorun.inf 
del r6r.exe 
del bittorrent.exe 
del sxs.exe 
del fooool.exe 
del c:\windows\bittorrent.exe 
del copy.exe 
del command.exe 
del ravmonlog 
del msvcr71.dll 
del ie.exe 
del copy.exe 
del autorun.vbs 
del WSscript.exe 
del winfile.exe 
del WSscript.exe 
del autorun.vbs.exe 
cd windows 
cd system32 
attrib -h -r -s activexdebugger32.exe 
del activexdebugger32.exe 
attrib -h -r -s amvo.exe 
attrib -h -r -s amvo0.dll 
del amvo.exe 
del amvo0.dll 
d: 
attrib -h -r -s fooool.exe 
attrib -h -r -s autorun.inf 
attrib -h -r -s bittorrent.exe 
attrib -h -r -s sxs.exe 
attrib -h -r -s copy.exe 
attrib -h -r -s command.exe 
attrib -h -r -s msvcr71.dll 
attrib -h -r -s ie.exe 
attrib -h -r -s copy.exe 
attrib -h -r -s autorun.vbs 
attrib -h -r -s WSscript.exe 
attrib -h -r -s r6r.exe 
del r6r.exe 
del autorun.inf 
del bittorrent.exe 
del fooool.exe 
del sxs.exe 
del copy.exe 
del command.exe 
del ravmonlog 
del msvcr71.dll 
del ie.exe 
del copy.exe 
del autorun.vbs 
del WSscript.exe 
del WSscript.exe 
del autorun.vbs.exe 
del winfile.exe 
e: 
attrib -h -r -s autorun.inf 
attrib -h -r -s bittorrent.exe 
attrib -h -r -s sxs.exe 
attrib -h -r -s fooool.exe 
attrib -h -r -s copy.exe 
attrib -h -r -s command.exe 
attrib -h -r -s msvcr71.dll 
attrib -h -r -s ie.exe 
attrib -h -r -s copy.exe 
attrib -h -r -s r6r.exe 
attrib -h -r -s autorun.vbs 
attrib -h -r -s WSscript.exe 
del autorun.inf 
del r6r.exe 
del bittorrent.exe 
del sxs.exe 
del fooool.exe 
del copy.exe 
del command.exe 
del ravmonlog 
del msvcr71.dll 
del ie.exe 
del copy.exe 
del autorun.vbs 
del WSscript.exe 
del WSscript.exe 
del autorun.vbs.exe 
del winfile.exe 
f: 
attrib -h -r -s autorun.inf 
attrib -h -r -s fooool.exe 
attrib -h -r -s bittorrent.exe 
attrib -h -r -s sxs.exe 
attrib -h -r -s copy.exe 
attrib -h -r -s command.exe 
attrib -h -r -s msvcr71.dll 
attrib -h -r -s ie.exe 
attrib -h -r -s copy.exe 
attrib -h -r -s r6r.exe 
attrib -h -r -s autorun.vbs 
attrib -h -r -s WSscript.exe 
attrib -h -r -s r6r.exe 
del autorun.inf 
del r6r.exe 
del fooool.exe 
del bittorrent.exe 
del sxs.exe 
del copy.exe 
del command.exe 
del ravmonlog 
del msvcr71.dll 
del ie.exe 
del copy.exe 
del autorun.vbs 
del WSscript.exe 
del WSscript.exe 
del autorun.vbs.exe 
del winfile.exe 
g: 
attrib -h -r -s autorun.inf 
attrib -h -r -s fooool.exe 
attrib -h -r -s bittorrent.exe 
attrib -h -r -s sxs.exe 
attrib -h -r -s r6r.exe 
attrib -h -r -s copy.exe 
attrib -h -r -s command.exe 
attrib -h -r -s msvcr71.dll 
attrib -h -r -s ie.exe 
attrib -h -r -s copy.exe 
attrib -h -r -s autorun.vbs 
attrib -h -r -s WSscript.exe 
del autorun.inf 
del bittorrent.exe 
del sxs.exe 
del r6r.exe 
del fooool.exe 
del copy.exe 


del command.exe 
del ravmonlog 
del msvcr71.dll 
del ie.exe 
del copy.exe 
del autorun.vbs 
del WSscript.exe 
del WSscript.exe 
del autorun.vbs.exe 
del winfile.exe 
h: 
attrib -h -r -s autorun.inf 
attrib -h -r -s bittorrent.exe 
attrib -h -r -s sxs.exe 
attrib -h -r -s r6r.exe 
attrib -h -r -s fooool.exe 
attrib -h -r -s copy.exe 
attrib -h -r -s command.exe 
attrib -h -r -s msvcr71.dll 
attrib -h -r -s ie.exe 
attrib -h -r -s copy.exe 
attrib -h -r -s autorun.vbs 
attrib -h -r -s WSscript.exe 
del autorun.inf 
del bittorrent.exe 
del sxs.exe 
del copy.exe 
del r6r.exe 
del command.exe 
del ravmonlog 
del msvcr71.dll 
del fooool.exe 
del ie.exe 
del copy.exe 
del autorun.vbs 
del WSscript.exe 
del WSscript.exe 
del autorun.vbs.exe 
del winfile.exe 
i: 
attrib -h -r -s autorun.inf 
attrib -h -r -s bittorrent.exe 
attrib -h -r -s fooool.exe 
attrib -h -r -s sxs.exe 
attrib -h -r -s r6r.exe 
attrib -h -r -s copy.exe 
attrib -h -r -s command.exe 
attrib -h -r -s msvcr71.dll 
attrib -h -r -s ie.exe 
attrib -h -r -s copy.exe 
attrib -h -r -s autorun.vbs 
attrib -h -r -s WSscript.exe 
del autorun.inf 
del bittorrent.exe 
del sxs.exe 
del r6r.exe 
del fooool.exe 
del copy.exe 
del command.exe 
del ravmonlog 
del msvcr71.dll 
del ie.exe 
del copy.exe 
del autorun.vbs 
del WSscript.exe 
del winfile.exe 
CLS 
start explorer.exe 