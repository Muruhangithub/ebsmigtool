#!/bin/sh
#Name : ebs_startup_shutdown.sh
################################

#set environment

. ~/ebsmigscripts/ebsconfig.env

# Goto scripts folder and start/shutdown scripts.

shut_apps () {
cd $ADMIN_SCRIPTS_HOME
if [ -f adstpall.sh ]; then
   ./adstpall.sh
fi
}

start_apps () {
cd $ADMIN_SCRIPTS_HOME
if [ -f adstrtal.sh ]; then
   ./adstrtal.sh
fi
}

# Main Program

echo ""
read -p "Would you like to start/stop apps services , enter => stop and enter => start to start the services :"  choice;
echo ""

if [ $choice == "stop" ] ; then
   shut_apps
fi

if [ $choice == "start" ] ; then
  start_apps
fi

exit
