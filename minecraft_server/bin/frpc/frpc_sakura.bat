set /p name=" Set docker name > "
set /p f_hash=" 樱花Frp配置文件中的哈希值 (例如`-f 21c05a0db98fb91d:7795884`中“-f”之后的部分，不需要空格) > "
docker run -d --restart=always --pull=always --name=%name%  natfrp/frpc -f %f_hash%
pause