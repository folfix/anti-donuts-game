#!/bin/bash

echo "=================================="
echo "+++ anti-donuts-game installer +++"
echo "=================================="

if [ "$(id -u)" != "0" ]; then
	echo "[ERROR] Sorry, you are not root."
	echo "[ERROR] Root privileges are required for adding scripts to /usr/local/bin"
	exit 1
fi

echo "Type the name that you want call LOCK script, followed by [ENTER] (default: lock)"
read lock_name

if [[ -z $lock_name ]] ; then
	lock_dest=/usr/local/bin/lock
else
	lock_dest=/usr/local/bin/$lock_name
fi

if [[ -e $lock_dest ]] ; then
	echo "[ERROR] File exist: $lock_dest"  
	exit 1
fi


echo "Type the name that you want call UNLOCK script, followed by [ENTER] (default: unlock)"
read unlock_name

if [[ -z $unlock_name ]] ; then
        unlock_dest=/usr/local/bin/unlock
else
        unlock_dest=/usr/local/bin/$unlock_name
fi

if [[ -e $unlock_dest ]] ; then
        echo "[ERROR] File exist: $unlock_dest"  
        exit 1
fi

cp bin/lock $lock_dest
cp bin/unlock $unlock_dest

echo "[INFO] Copying successfully completed."
echo "[INFO] Now add shortcut for UNLOCK script."

