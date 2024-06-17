@echo off
setlocal enabledelayedexpansion

:: Prompt the user for the container name
set /p CONTAINER_NAME="Container Name > "

:: Prompt the user for the port
set /p PORT="Container Port (Default 8080) > "

:: Default port mapping if not provided
if "%PORT%"=="" set PORT=127.0.0.1:8080:25565/tcp

:: Ask if the user wants to stop the container on exit
set /p STOP_CONTAINER="Stop the container on exit (Y/n) > "

:: Set restart policy based on user input
if /i "%STOP_CONTAINER%"=="n" (
    set RESTART_POLICY="no"
) else (
    set RESTART_POLICY="unless-stopped"
)

:: Get the absolute path of the current batch script
set SCRIPT_DIR=%~dp0
:: Remove the trailing backslash
set SCRIPT_DIR=%SCRIPT_DIR:~0,-1%

:: Run the Docker container with the appropriate restart policy
docker run -it --name=!CONTAINER_NAME! -p !PORT! -v "!SCRIPT_DIR!:/minecraft" --restart !RESTART_POLICY! opdmc/1.19.2-nofleshwithinchest

:: Remove the container if the user wants to stop it on exit
if /i "%STOP_CONTAINER%"=="n" (
    docker rm !CONTAINER_NAME!
    echo Container removed.
) else (
    echo Container will not be removed on exit.
)

echo Done.
pause