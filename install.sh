#!/bin/bash

if [ "$UID" -ne 0 ]
then
   echo "You are not root: terminating"
   exit 2
fi

if [ -e "/usr/bin/dir2ogg" ]
then
   echo "/usr/bin/dir2ogg exists! Overwrite? (y/n): "
   read answ
   if [ $answ == "n" ]
   then
      exit 1
   fi
fi
cp dir2ogg /usr/bin/dir2ogg
chown root:root /usr/bin/dir2ogg
chmod 755 /usr/bin/dir2ogg

if [ -e "/usr/man/man1/dir2ogg.1" ]
then
   echo "/usr/man/man1/dir2ogg.1 exists! Overwrite? (y/n): "
   read answ
   if [ $answ == "n" ]
   then
      exit 1
   fi
fi
cp dir2ogg.1 /usr/man/man1/dir2ogg.1
chown root:root /usr/man/man1/dir2ogg.1
chmod 644 /usr/man/man1/dir2ogg.1


echo "dir2ogg is now installed. Enjoy..."

