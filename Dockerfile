#FROM mcr.microsoft.com/windows/servercore/iis 
#FROM mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2022
FROM mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2019

RUN powershell -NoProfile -Command Remove-Item -Recurse C:\inetpub\wwwroot\*

WORKDIR /inetpub/wwwroot

COPY app/ . 

EXPOSE 80