%1@mshta "vbscript:CreateObject("Shell.Application").ShellExecute("cmd", "/c """"%~f0"", "::", "", "runas", 0)"
@echo off
pushd "%~dp0bin\"

SET "bin_name=opera-proxy.windows-amd64-service.exe"

for %%i in (opera-proxy-EU,opera-proxy-AS) do call :remove_service %%i

pause */
exit /b 0

:remove_service
 %bin_name% stop %~1.xml
 %bin_name% uninstall %~1.xml
