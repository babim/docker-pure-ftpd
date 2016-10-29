#!/bin/bash
if [ -z "`ls /etc/pure-ftpd`" ] 
then
	cp -R /etc-start/pure-ftpd/* /etc/pure-ftpd
fi

/usr/sbin/pure-ftpd -c 50 -C 10 -l puredb:/etc/pure-ftpd/pureftpd.pdb -E -j -R -P $PUBLICHOST -p 30000:30009
