@echo off

set winrarDonwloadUrl=https://github.com/pcanalesm/softwares/raw/main/winrar-x64-624es(1).exe
set winrarDownloaderPath=winrar.exe

set vlcDonwloadUrl=https://github.com/pcanalesm/softwares/raw/main/vlc-3.0.20-win64(1).exe
set vlcDonwloaderPath=vlc-3.0.20-win64.exe

set adobeDonwloadUrl=https://ardownload2.adobe.com/pub/adobe/reader/win/AcrobatDC/2300820421/AcroRdrDC2300820421_es_ES.exe
set adobeDonwloaderPath=adobe.exe

set firefoxDonwloadUrl=https://github.com/pcanalesm/softwares/raw/main/Firefox%20Setup%20121.0.1.exe
set firefoxDonwloaderPath=firefox.exe

set chromeDownloadUrl=https://github.com/pcanalesm/softwares/raw/main/ChromeSetup(1).exe
set chromeDonwloaderPath=chrome.exe

echo "Donwloading winrar ..."

curl -H "Accept: application/vnd.github.VERSION.raw" -L %winrarDonwloadUrl% -o %winrarDownloaderPath%

echo "Installing winrar ..."

start /wait %winrarDownloaderPath% /S

echo "Downloading vlc ..."

curl -H "Accept: application/vnd.github.VERSION.raw" -L  %vlcDonwloadUrl% > %vlcDonwloaderPath%

echo "Installing vlc ..."

start /wait %vlcDonwloaderPath% /L=1033 /S

echo "Downloading adobe ..."

curl %adobeDonwloadUrl% -o %adobeDonwloaderPath%

echo "Installing adobe ..."

start /wait %adobeDonwloaderPath% /sAll /rs /msi EULA_ACCEPT=YES

echo "Downloading firefox ..."

curl -H "Accept: application/vnd.github.VERSION.raw" -L  %firefoxDonwloadUrl% > %firefoxDonwloaderPath%

echo "Installing firefox ..."

start /wait %firefoxDonwloaderPath% /S

echo "Downloading chrome ..."

curl -H "Accept: application/vnd.github.VERSION.raw" -L  %chromeDownloadUrl% > %chromeDonwloaderPath%

echo "Installing chrome ..."

start /wait %chromeDonwloaderPath%

echo "Cleaning.."

del %winrarDownloaderPath%
del %vlcDonwloaderPath%
del %adobeDonwloaderPath%
del %firefoxDonwloaderPath%
del %chromeDonwloaderPath%

echo "Success!!!"

PAUSE