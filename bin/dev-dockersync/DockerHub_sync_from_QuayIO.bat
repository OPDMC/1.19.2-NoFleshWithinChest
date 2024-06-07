@echo off
set repo=§§template§§opdmc/1.19.4-opdmc
set /p tag=" Tag to sync > "
docker pull quay.io/%repo%:%tag%
docker tag quay.io/%repo%:%tag% %repo%:%tag%
docker push %repo%:%tag%
pause
