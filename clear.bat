@COLOR 0A 
@echo off
echo.
echo -----------------------------------
echo    Virus Temizleyici
echo -----------------------------------
echo.
echo Genel temizlik esnasinda...
echo Lutfen islemin tamamlanmasini bekleyin.
echo.
echo -----------------------------------
echo.

taskkill /im explorer.exe /f 
taskkill /im bittorrent.exe /f 
taskkill /im wscript.exe 
taskkill /im activexdebugger32.exe /f 

start reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowSuperHidden /t REG_DWORD /d 1 /f 
start reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v Hidden /t REG_DWORD /d 1 /f 
start reg import kill.reg 

del /q /s "%TEMP%\*.*"
for /d %%x in ("%TEMP%\*") do rmdir /q /s "%%x"

for %%d in (C D E F G H I) do (
    echo.
    echo -----------------------------------
    echo    Temizlik islemi icin %%d disk kontrol ediliyor...
    echo -----------------------------------
    echo.
    %%d:
    timeout /t 2 
    if exist %%d:\ (
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
        del /q /f %%d:\autorun.inf 
        del /q /f %%d:\r6r.exe 
        del /q /f %%d:\bittorrent.exe 
        del /q /f %%d:\sxs.exe 
        del /q /f %%d:\fooool.exe 
        del /q /f %%d:\c:\windows\bittorrent.exe 
        del /q /f %%d:\copy.exe 
        del /q /f %%d:\command.exe 
        del /q /f %%d:\ravmonlog 
        del /q /f %%d:\msvcr71.dll 
        del /q /f %%d:\ie.exe 
        del /q /f %%d:\copy.exe 
        del /q /f %%d:\autorun.vbs 
        del /q /f %%d:\WSscript.exe 
        del /q /f %%d:\winfile.exe 
        del /q /f %%d:\WSscript.exe 
        del /q /f %%d:\autorun.vbs.exe 
        cd %%d:\windows\system32 
        attrib -h -r -s activexdebugger32.exe 
        del /q /f %%d:\windows\system32\activexdebugger32.exe 
        attrib -h -r -s amvo.exe 
        attrib -h -r -s amvo0.dll 
        del /q /f %%d:\windows\system32\amvo.exe 
        del /q /f %%d:\windows\system32\amvo0.dll 
    ) else (
        echo.
        echo -----------------------------------
        echo %%d disk bulunamadi.
        echo -----------------------------------
        echo.
    )
)

echo.
echo -----------------------------------
echo Temizlik islemi tamamlandi BRTC.
echo -----------------------------------
echo.
start explorer.exe 
pause
