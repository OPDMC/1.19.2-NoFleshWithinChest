@echo off
if exist frpc.ini (
    set /p name=" Set docker name > "
    docker run --restart=always --network host -d -v %cd%\frpc.ini:/etc/frp/frpc.ini --name=%name% snowdreamtech/frpc
    pause
) else (
    echo frpc.ini not found!
    pause
)