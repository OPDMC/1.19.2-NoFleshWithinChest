@echo off
set /p name=" Dev Container Name > "
set /p port=" Dev Container Port > "
set Xmx=2G
set Xms=2G
set dirName=docker_test_server%time:~0,2%%time:~3,2%%time:~6,2%
mkdir %cd%\..\..\%dirName%
docker run -d --name=%name% -p %port%:25565 -v %cd%\..\..\%dirName%:/minecraft -e Xmx=%Xmx% -e Xms=%Xms% §§template§§1.19.4-opdmc-test:test
pause