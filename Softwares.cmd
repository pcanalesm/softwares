@echo off

set winrarDonwloadUrl=https://github.com/pcanalesm/softwares/raw/main/winrar-x64-624es(1).exe
set winrarDownloaderPath=winrar.exe

set vlcDonwloadUrl=https://github.com/pcanalesm/softwares/raw/main/vlc-3.0.20-win64(1).exe
set vlcDonwloaderPath=vlc-3.0.20-win64.exe

set adobeDonwloadUrl=https://ardownload2.adobe.com/pub/adobe/reader/win/AcrobatDC/2300820421/AcroRdrDC2300820421_es_ES.exe
set adobeDonwloaderPath=adobe.exe

set firefoxDonwloadUrl=https://cdn.stubdownloader.services.mozilla.com/builds/firefox-latest-ssl/es-CL/win64/cab49bf215d5e0eadcffc0363c012a72c49f57f40afc798b03724ab08556aab3/Firefox%20Setup%20121.0.1.exe
set firefoxDonwloaderPath=firefox.exe

set chromeDownloadUrl=https://github.com/pcanalesm/softwares/raw/main/ChromeSetup(1).exe
set chromeDonwloaderPath=chrome.exe

@REM echo "Donwloading winrar ..."

@REM curl -H "Accept: application/vnd.github.VERSION.raw" -L %winrarDonwloadUrl% -o %winrarDownloaderPath%

@REM echo "Installing winrar ..."

@REM start /wait %winrarDownloaderPath% /S

@REM echo "Downloading vlc ..."

@REM curl -H "Accept: application/vnd.github.VERSION.raw" -L  %vlcDonwloadUrl% -o %vlcDonwloaderPath%

@REM echo "Installing vlc ..."

@REM start /wait %vlcDonwloaderPath% /L=1033 /S

@REM echo "Downloading adobe ..."

@REM curl %adobeDonwloadUrl% -o %adobeDonwloaderPath%

@REM echo "Installing adobe ..."

@REM start /wait %adobeDonwloaderPath% /sAll /rs /msi EULA_ACCEPT=YES

echo "Downloading firefox ..."

curl -J -O https://raw.githubusercontent.com/pcanalesm/softwares/main/Firefox%20Setup%20121.0.1.exe

@REM echo "Installing firefox ..."

@REM start /wait %firefoxDonwloaderPath% /S

@REM echo "Downloading chrome ..."

@REM curl -H "Accept: application/vnd.github.VERSION.raw" -L  %chromeDownloadUrl% -o %chromeDonwloaderPath%

@REM echo "Installing chrome ..."

@REM start /wait %chromeDonwloaderPath%

@REM echo "Cleaning.."

@REM del %winrarDownloaderPath%
@REM del %vlcDonwloaderPath%
@REM del %adobeDonwloaderPath%
@REM del %firefoxDonwloaderPath%
@REM del %chromeDonwloaderPath%

echo "Success!!!"

PAUSE