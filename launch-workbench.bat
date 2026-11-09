@echo off
setlocal
:: 综合工作台 · 桌面 App 启动器
:: 双击本文件即可像 App 一样打开工作台（Chrome 无地址栏应用模式）
set "DIR=%~dp0"
set "HTML=%DIR%personal-workbench.html"
set "URI=file:///%HTML:\=/%"
set "CHROME=%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe"

if exist "%CHROME%" (
  start "" "%CHROME%" --app="%URI%" --window-size=1280,860 --window-position=120,60
) else (
  start "" "%HTML%"
)
endlocal
