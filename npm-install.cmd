@echo off
set NODE_DIR=C:\Users\ADMIN\AppData\Roaming\fnm\node-versions\v24.15.0\installation
set PATH=%NODE_DIR%;%PATH%
cd /d "%~dp0"
call "%NODE_DIR%\npm.cmd" install
