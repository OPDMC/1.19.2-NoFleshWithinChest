# override and update persistent files
if [ ! -f /minecraft/docker-start.sh ]; then
  if [ ! -d /minecraft ]; then
    mkdir /minecraft
  fi
  cp -r -n  /docker_init/* /minecraft/
fi
# start the server
sh /minecraft/docker-start.sh