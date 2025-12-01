@echo off
chcp 65001
title Obsidian Vault Git Sync

:Menu
echo ======================================
echo      Obsidian Vault Git Sync
echo ======================================

echo Choose an action:
echo 1 - Push notes to Github
echo 2 - Pull notes from Github
echo 3 - Configure repository URL
set /p choice=Enter 1, 2 or 3: 

if "%choice%"=="1" goto GitPush
if "%choice%"=="2" goto GitPull
if "%choice%"=="3" goto Configure

echo Invalid input, try again
goto Menu

:Configure
echo Enter Github repository URL:
set /p REPO_URL=Repo URL:

git ls-remote %REPO_URL% >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo Cannot reach repository. Check URL again
    goto Configure
)

echo Repository is reachable, can sync now
goto Menu

:GitPull
if exist "Obsidian Vault" (
    echo Removing existing Obsidian Vault...
    rmdir /s /q "Obsidian Vault"
)
echo Pulling repository from Github...
git clone %REPO_URL% "Obsidian Vault"
echo Pull complete
goto End

:GitPush
if not exist "Obsidian Vault" (
    echo Obsidian Vault folder does not exist. Cannot push
    goto End
)
cd "Obsidian Vault"
git add .
git commit -m "Sync on %date% %time%"
git push origin main
if %ERRORLEVEL% neq 0 (
    echo There was an error while pushing Vault:
    echo %ERRORLEVEL%
) else (
    echo Successfully pushed Obsidian Vault to remote
)
goto End

:End
pause