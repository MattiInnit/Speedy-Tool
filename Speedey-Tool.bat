@echo off

:: ----------------------------L'avvio richiede privilegi amministrativi.--------------------------

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system" && (
    set "ADMINISTRATOR=1"
) || (
    set "ADMINISTRATOR="
)
if not defined ADMINISTRATOR (
    echo Questo file deve essere aperto come AMMINISTRATORE, riprova.
    timeout /t 5 /nobreak >nul
    exit /b 1
)
chcp 65001 >nul
title Speedey Tool / Creato da Bad_0320
:main
color F
cls
echo ██╗  ██╗ ██████╗ ███╗   ███╗███████╗
echo ██║  ██║██╔═══██╗████╗ ████║██╔════╝
echo ███████║██║   ██║██╔████╔██║█████╗  
echo ██╔══██║██║   ██║██║╚██╔╝██║██╔══╝  
echo ██║  ██║╚██████╔╝██║ ╚═╝ ██║███████╗
echo ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝
:home
set /p home=Entra in una sezione: 

if %home% == clear goto main
if %home% == ss goto ScreenShare
if %home% == macro goto Macro
if %home% == macros goto Macro
if %home% == screenshare goto ScreenShare
if %home% == logs goto ControlliLogs
if %home% == log goto ControlliLogs
if %home% == tools goto DownloadTools
if %home% == tool goto DownloadTools
if %home% == download goto DownloadTools
if %home% == downloads goto DownloadTools

:: Destruct
if %home% == quit del "%~f0" >> %temp%\Speedey-Tool.bat

echo this isn't a valid code, try again
ping localhost -n 2 >nul
goto main

:fileeliminati
fsutil usn readjournal c: csv | findstr /i /C:"0x80000200" | findstr /i /C:.exe\^" /i /C:.py\^" /i /C:.jar\^" /i /C:.dll\^" /i /C:.com\^" /i /C:.pif\^" /i /C:.txt\^" /i /C:.jpg\^" /i /C:.jpeg\^" /i /C:.png\^" /i /C:.lnk\^" /i /C:.mp3\^" /i /C:.mp4\^" /i /C:.mkv\^" /i /C:.avi\^" /i /C:.ico\^" /i /C:.bat\^" /i /C:.cmd\^" /i /C:.reg\^" /i /C:.zip\^" /i /C:.rar\^" /i /C:.7z\^" /i /C:.ini\^" /i /C:.html\^" /i /C:.ppt\^" /i /C:.docx\^" /i /C:.xlsx\^" /i /C:.chm\^" /i /C:.aspx\^" /i /C:.app\^" /i /C:? > %homepath%\Documents\Temp\deletedfiles.txt
"%homepath%\Documents\Temp\deletedfiles.txt"
goto ScreenShare

:filerinominati
fsutil usn readjournal c: csv | findstr /i /C:"0x00002000" /i /C:"0x00001000" | findstr /i /C:.exe\^" /i /C:.py\^" /i /C:.jar\^" /i /C:.dll\^" /i /C:.com\^" /i /C:.pif\^" /i /C:.txt\^" /i /C:.jpg\^" /i /C:.jpeg\^" /i /C:.png\^" /i /C:.lnk\^" /i /C:.mp3\^" /i /C:.mp4\^" /i /C:.mkv\^" /i /C:.avi\^" /i /C:.ico\^" /i /C:.bat\^" /i /C:.cmd\^" /i /C:.reg\^" /i /C:.zip\^" /i /C:.rar\^" /i /C:.7z\^" /i /C:.ini\^" /i /C:.html\^" /i /C:.ppt\^" /i /C:.docx\^" /i /C:.xlsx\^" /i /C:.chm\^" /i /C:.aspx\^" /i /C:.app\^" /i /C:? > %homepath%\Documents\Temp\renamedfiles.txt
"%homepath%\Documents\Temp\renamedfiles.txt"
goto ScreenShare

:logseliminati
fsutil usn readjournal c: csv | findstr /i /C:”0x80000200” | findstr /i /C:”latest.log” /i /C:”.log.gz” /i /C:”launcher_profiles.json” /i /C:”usernamecache.json” /i /C:”shig.inima” /i /C:”launcher_accounts.json” > %homepath%\Documents\Temp\logseliminati.txt
"%homepath%\Documents\Temp\logseliminati.txt"
goto ControlliLogs

:bamentries
:: -----------------LAVORAZIONE-------------

:: ------------------COMANDO SS-------------------------

:ScreenShare
chcp 65001 >nul
color 4
cls
echo   ██████  ▄████▄   ██▀███  ▓█████ ▓█████  ███▄    █   ██████  ██░ ██  ▄▄▄       ██▀███  ▓█████ 
echo ▒██    ▒ ▒██▀ ▀█  ▓██ ▒ ██▒▓█   ▀ ▓█   ▀  ██ ▀█   █ ▒██    ▒ ▓██░ ██▒▒████▄    ▓██ ▒ ██▒▓█   ▀ 
echo ░ ▓██▄   ▒▓█    ▄ ▓██ ░▄█ ▒▒███   ▒███   ▓██  ▀█ ██▒░ ▓██▄   ▒██▀▀██░▒██  ▀█▄  ▓██ ░▄█ ▒▒███   
echo   ▒   ██▒▒▓▓▄ ▄██▒▒██▀▀█▄  ▒▓█  ▄ ▒▓█  ▄ ▓██▒  ▐▌██▒  ▒   ██▒░▓█ ░██ ░██▄▄▄▄██ ▒██▀▀█▄  ▒▓█  ▄ 
echo ▒██████▒▒▒ ▓███▀ ░░██▓ ▒██▒░▒████▒░▒████▒▒██░   ▓██░▒██████▒▒░▓█▒░██▓ ▓█   ▓██▒░██▓ ▒██▒░▒████▒
echo ▒ ▒▓▒ ▒ ░░ ░▒ ▒  ░░ ▒▓ ░▒▓░░░ ▒░ ░░░ ▒░ ░░ ▒░   ▒ ▒ ▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒ ▒▒   ▓▒█░░ ▒▓ ░▒▓░░░ ▒░ ░
echo ░ ░▒  ░ ░  ░  ▒     ░▒ ░ ▒░ ░ ░  ░ ░ ░  ░░ ░░   ░ ▒░░ ░▒  ░ ░ ▒ ░▒░ ░  ▒   ▒▒ ░  ░▒ ░ ▒░ ░ ░  ░
echo ░  ░  ░  ░          ░░   ░    ░      ░      ░   ░ ░ ░  ░  ░   ░  ░░ ░  ░   ▒     ░░   ░    ░   
echo       ░  ░ ░         ░        ░  ░   ░  ░         ░       ░   ░  ░  ░      ░  ░   ░        ░  ░
echo          ░                                                                                     

echo -----------------
echo [1] prefetch
echo [2] shell:recent
echo [3] Recycle Bin
echo [4] temp
echo [5] Soon...
echo [6] Eliminati
echo [7] Rinominati
echo -----------------
set /p inputss=Seleziona cosa vuoi controllare: 
if %inputss% == home goto main
if %inputss% == 1 start prefetch
if %inputss% == 2 start shell:recent
if %inputss% == 3 start C:\$Recycle.Bin
if %inputss% == 4 start %temp%
if %inputss% == 5 goto bamentries
if %inputss% == 6 goto fileeliminati
if %inputss% == 7 goto filerinominati
if %inputss% == 1933 msg * "Francy say: NEIN NEIN NEIN NEIN NEIN"
if %inputss% == 33 msg * "Francy say: NEIN NEIN NEIN NEIN NEIN"

echo this isn't a valid code, try again
ping localhost -n 2 >nul
goto ScreenShare

:: ---------------------------COMANDO MACRO------------------------------------------------

:Macro
chcp 65001 >nul
color D
cls
echo  ███▄ ▄███▓ ▄▄▄       ▄████▄   ██▀███   ▒█████    ██████ 
echo ▓██▒▀█▀ ██▒▒████▄    ▒██▀ ▀█  ▓██ ▒ ██▒▒██▒  ██▒▒██    ▒ 
echo ▓██    ▓██░▒██  ▀█▄  ▒▓█    ▄ ▓██ ░▄█ ▒▒██░  ██▒░ ▓██▄   
echo ▒██    ▒██ ░██▄▄▄▄██ ▒▓▓▄ ▄██▒▒██▀▀█▄  ▒██   ██░  ▒   ██▒
echo ▒██▒   ░██▒ ▓█   ▓██▒▒ ▓███▀ ░░██▓ ▒██▒░ ████▓▒░▒██████▒▒
echo ░ ▒░   ░  ░ ▒▒   ▓▒█░░ ░▒ ▒  ░░ ▒▓ ░▒▓░░ ▒░▒░▒░ ▒ ▒▓▒ ▒ ░
echo ░  ░      ░  ▒   ▒▒ ░  ░  ▒     ░▒ ░ ▒░  ░ ▒ ▒░ ░ ░▒  ░ ░
echo ░      ░     ░   ▒   ░          ░░   ░ ░ ░ ░ ▒  ░  ░  ░  
echo        ░         ░  ░░ ░         ░         ░ ░        ░  
echo                      ░                                   

echo ---------------------
echo [1] LGHUB
echo [2] ProgramRazer
echo [3] LocalRazer
echo [4] Crosair
echo [5] Glorious Model O
echo [6] Aukey
echo ---------------------
set /p inputmacro=Seleziona la macro: 
if %inputmacro% == 1 goto LGHUB
if %inputmacro% == 2 goto ProgramRazer
if %inputmacro% == 3 goto LocalRazer
if %inputmacro% == 4 goto Corsair
if %inputmacro% == 5 goto GloriousModelO
if %inputmacro% == 6 goto Aukey
if %inputmacro% == home goto main 

echo this isn't a valid code, try again
ping localhost -n 2 >nul
goto Macro

:: ---------------------------COMANDO MULTIACCOUNT-------------------------------------------

:ControlliLogs
chcp 65001 >nul
color A
cls
echo  ███▄ ▄███▓ █    ██  ██▓  ▄▄▄█████▓ ██▓ ▄▄▄       ▄████▄   ▄████▄   ▒█████   █    ██  ███▄    █ ▄▄▄█████▓
echo ▓██▒▀█▀ ██▒ ██  ▓██▒▓██▒  ▓  ██▒ ▓▒▓██▒▒████▄    ▒██▀ ▀█  ▒██▀ ▀█  ▒██▒  ██▒ ██  ▓██▒ ██ ▀█   █ ▓  ██▒ ▓▒
echo ▓██    ▓██░▓██  ▒██░▒██░  ▒ ▓██░ ▒░▒██▒▒██  ▀█▄  ▒▓█    ▄ ▒▓█    ▄ ▒██░  ██▒▓██  ▒██░▓██  ▀█ ██▒▒ ▓██░ ▒░
echo ▒██    ▒██ ▓▓█  ░██░▒██░  ░ ▓██▓ ░ ░██░░██▄▄▄▄██ ▒▓▓▄ ▄██▒▒▓▓▄ ▄██▒▒██   ██░▓▓█  ░██░▓██▒  ▐▌██▒░ ▓██▓ ░ 
echo ▒██▒   ░██▒▒▒█████▓ ░██████▒▒██▒ ░ ░██░ ▓█   ▓██▒▒ ▓███▀ ░▒ ▓███▀ ░░ ████▓▒░▒▒█████▓ ▒██░   ▓██░  ▒██▒ ░ 
echo ░ ▒░   ░  ░░▒▓▒ ▒ ▒ ░ ▒░▓  ░▒ ░░   ░▓   ▒▒   ▓▒█░░ ░▒ ▒  ░░ ░▒ ▒  ░░ ▒░▒░▒░ ░▒▓▒ ▒ ▒ ░ ▒░   ▒ ▒   ▒ ░░   
echo ░  ░      ░░░▒░ ░ ░ ░ ░ ▒  ░  ░     ▒ ░  ▒   ▒▒ ░  ░  ▒     ░  ▒     ░ ▒ ▒░ ░░▒░ ░ ░ ░ ░░   ░ ▒░    ░    
echo ░      ░    ░░░ ░ ░   ░ ░   ░       ▒ ░  ░   ▒   ░        ░        ░ ░ ░ ▒   ░░░ ░ ░    ░   ░ ░   ░      
echo        ░      ░         ░  ░        ░        ░  ░░ ░      ░ ░          ░ ░     ░              ░          
echo                                                  ░        ░                                              

echo -------------------
echo [1] Accounts/Nomi
echo [2] Recycle Bin
echo [3] Logs Eliminati
echo -------------------
set /p inputlogs=Seleziona cosa vuoi controllare: 
if %inputlogs% == 1 start %appdata%/.minecraft/TlauncherProfiles.json
if %inputlogs% == 1 start %appdata%/.minecraft/usernamecache.json
if %inputlogs% == 1 start %appdata%/.minecraft/usercache.json
if %inputlogs% == 2 start C:\$Recycle.Bin
if %inputlogs% == 3 goto logseliminati
if %inputlogs% == home goto main

echo this isn't a valid code, try again
ping localhost -n 2 >nul
goto ControlliLogs

:: ---------------------------COMANDO DOWNLOADS---------------------------------

:DownloadTools
chcp 65001 >nul
color b
cls
echo ▄▄▄█████▓ ▒█████   ▒█████   ██▓      ██████ 
echo ▓  ██▒ ▓▒▒██▒  ██▒▒██▒  ██▒▓██▒    ▒██    ▒ 
echo ▒ ▓██░ ▒░▒██░  ██▒▒██░  ██▒▒██░    ░ ▓██▄   
echo ░ ▓██▓ ░ ▒██   ██░▒██   ██░▒██░      ▒   ██▒
echo   ▒██▒ ░ ░ ████▓▒░░ ████▓▒░░██████▒▒██████▒▒
echo   ▒ ░░   ░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒░▓  ░▒ ▒▓▒ ▒ ░
echo     ░      ░ ▒ ▒░   ░ ▒ ▒░ ░ ░ ▒  ░░ ░▒  ░ ░
echo   ░ᶠᶦᶻᶻʸ ░ ░ ░ ▒  ░ ░ ░ ▒    ░ ░   ░  ░  ░  
echo              ░ ░      ░ ░      ░  ░      ░  

echo --------------------
echo [1] Process Hacker
echo [2] Everything
echo [3] Luyten
echo [4] WinPrefetchView
echo --------------------
set /p downloadtools=Seleziona cosa vuoi scaricare: 
if %downloadtools% == 1 start https://download.fileeagle.com/files/2016/03/processhacker-2.39-setup.exe
if %downloadtools% == 2 start https://www.voidtools.com/Everything-1.4.1.1024.x64-Setup.exe
if %downloadtools% == 3 start https://github.com/deathmarine/Luyten/releases/download/v0.5.4_Rebuilt_with_Latest_depenencies/luyten-0.5.4.exe
if %downloadtools% == 4 start https://www.nirsoft.net/utils/winprefetchview-x64.zip
if %downloadtools% == home goto main

echo this isn't a valid code, try again
ping localhost -n 2 >nul
goto DownloadTools

:: ---------------Macro path-------------------------

:LGHUB
if exist "%localappdata%\LGHUB" (
goto LGHUBFound
) else (
goto NotFound
)

:ProgramRazer
if exist "%programdata%\Razer\Synapse\Accounts" (
goto ProgramRazerFound
) else (
goto NotFound
)

:LocalRazer
if exist "%localappdata%\Razer\Synapse3\Settings" (
goto LocalRazerFound
) else (
goto NotFound
)

:Corsair
if exist "%appdata%\Corsair\Cue" (
goto CorsairFound
) else (
goto NotFound
)

:GloriousModelO
if exist "%localappdata%\BY-COMBO2" (
goto GloriousModelOFound
) else (
goto NotFound
)

:Aukey
if exist "%localappdata%\JM01" (
goto AukeyFound
) else (
goto NotFound
)

:: -------------------MACRO STUFF----------------

:LGHUBFound
explorer "%localappdata%\LGHUB"
goto Macro

:ProgramRazerFound
explorer "%programdata%\Razer\Synapse\Accounts"
goto Macro

:LocalRazerFound
explorer "%localappdata%\Razer\Synapse3\Settings"
goto Macro

:CorsairFound
explorer "%appdata%\Corsair\Cue"
goto Macro

:GloriousModelOFound
explorer "%localappdata%\BY-COMBO2"
goto Macro

:AukeyFound
explorer "%localappdata%\JM01"
goto Macro

:NotFound
echo Non è stato trovato nulla.
ping localhost -n 4 >nul
goto Macro

::------------------PROCESSO LOOP---------------------

timeout /t 1 /nobreak >nul
goto main