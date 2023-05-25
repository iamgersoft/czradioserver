#!/bin/sh

if [ -a "/etc/czserver/czradio.xml" ]
then
  printf "File exists. Skipping.\n"
else
  printf "File does not exist. Creating...\n"
  /usr/bin/envsubst </etc/czserver/czserver-template.xml >/etc/czserver/czradio.xml
fi

/usr/bin/icecast -c /etc/czserver/czradio.xml
