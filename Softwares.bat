@echo off

set winrarDonwloadUrl=https://public.sn.files.1drv.com/y4mh9e_gwyLe88S_8GpbBnNoi5AmdPJI1HLm6jLJapx8v_TIyv5yAhjXB60C0VoPATs1p617fPwNAvm1RQVfpN1T25qk4slrz5VsHypNyyliRgGU9J9tQ_fS0ND8-VhHzb25LAxMFN1x0DQaF1fY1bOsMTGYCN5S5i-K2sUKX_kGHVKSu7Ou7IxqBIwdB_4_dBXPFtPen4jqnOrIu9dU0BheEL0w5YeJoEoiTZm2jKvt34?AVOverride=1
set winrarDownloaderPath=%temp%\winrar.exe

set vlcDonwloadUrl=https://public.sn.files.1drv.com/y4m492Vqtm_C_aRCpOuKwX8trzipWgFlQhM_k6xbWWvlX6GKmxirn1blcQijWOMa43cYQDnrVOk5FG_yZwMzPGtlf0npGqQkRP7cS_JklQEWtfuuxgTjJ88evW1bbrrezuONKDii0QOwe8hsjmuwrsOizAW-ifDyjyz75e5NKKxI5Isx3Dg0pJj-4N_cQ9acS2GZzmDJqCs2WZwaqX6xHmQ7SEkBB9UlW7XdzLiACfpw7w?AVOverride=1
set vlcDonwloaderPath=%temp%\vlc-3.0.20-win64.exe

set adobeDonwloadUrl=https://public.sn.files.1drv.com/y4mPzv-uJttyWKZACS4uK7tdjWc_VZrNqdn1ik11YEK3PAuvZ3y-LaM9IG3kas0oUosjKwJqE3zovOD3tfsh7WaAAQbk9kXH2rpRks_uEwqr1IbAVxp-kzGxsvot1SjJ3HTcvWUut-yz0TWd0yzSWF_KqGMjDAzTK1HyqZjosM60KkDtVl9JZx1yBPYviO184d4n1pPC-pARLdCY3KVYIIW3Fp4O6y_TIMi4MMx-swSQzM?AVOverride=1
set adobeDonwloaderPath=%temp%\adobe.exe

set firefoxDonwloadUrl=https://public.sn.files.1drv.com/y4mYCvAiHnrEug7TOF64bcncbEJA4Lb6fIkU1iMN-SC4miTOOgxowqkKm5W3DS0-jxcb2CNoNcP2O9DPTevdIWsYeaRBB5AaQq1JeaOdEG7LCA_y_5vt6_rjqxxT_Jxq3LQtlkpZDjxFB9JZW-0Of_6JqbmyvV0xxlybQYdnvThjf1tevLD5lr8xR_p5urovMuEWdMx9bEEORT_9f93HSvDhUO0iBDvLQgasLHbbC0FUb0?AVOverride=1
set firefoxDonwloaderPath=%temp%\firefox.exe

set chromeDownloadUrl=https://public.sn.files.1drv.com/y4mPrToO8gxS80of2eS8Odohgb_iVe7saxz4r2RUh7Nz65vGZgNVQU76NcCz16hxfewy7yxvn6Xj7aa61CObz8MgQ8e62ehNhbeDItrdmrUa5VQ8VKRRxKDuzNM2U6FmdZDomdcVjugXbjDEjPwMijkftee2fbz-LhZf4UEUf-fWPnRgqzI5oq1hwlMOfkO7OGXY8YfQ4AGXLv4uR7RE1HVyow0i0P-a9r1ko0XwrjhgGA?AVOverride=1
set chromeDonwloaderPath=%temp%\chrome.msi

echo "Donwloading winrar ..."

curl %winrarDonwloadUrl% -o %winrarDownloaderPath%

echo "Installing winrar ..."

start /wait %winrarDownloaderPath% /S

echo "Downloading vlc ..."

curl %vlcDonwloadUrl% -o %vlcDonwloaderPath%

echo "Installing vlc ..."

start /wait %vlcDonwloaderPath% /L=1033 /S

echo "Downloading adobe ..."

curl %adobeDonwloadUrl% -o %adobeDonwloaderPath%

echo "Installing adobe ..."

start /wait %adobeDonwloaderPath% /sAll /rs /msi EULA_ACCEPT=YES

echo "Downloading firefox ..."

curl %firefoxDonwloadUrl% -o %firefoxDonwloaderPath%

echo "Installing firefox ..."

start /wait %firefoxDonwloaderPath% /S

echo "Downloading chrome ..."

curl %chromeDownloadUrl% -o %chromeDonwloaderPath%

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