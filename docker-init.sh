# override and update persistent files
if [ ! -f /minecraft/start.sh ]; then
  if [ ! -d /minecraft ]; then
    mkdir /minecraft
  fi
  cp -r -n  /docker_init/* /minecraft/
fi
# start the server
sh /minecraft/start.sh