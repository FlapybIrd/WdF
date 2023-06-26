@echo off
set "python_installer_url=https://www.python.org/ftp/python/3.9.7/python-3.9.7-amd64.exe"
set "install_dir=C:\Python39"
python --version >nul 2>&1
if %errorlevel% neq 0 (
    bitsadmin.exe /transfer "PythonInstaller" %python_installer_url% python_installer.exe
    start /wait "" python_installer.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0 TargetDir=%install_dir%
    del python_installer.exe
)
echo +
