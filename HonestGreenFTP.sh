#!/bin/bash
HOST='ginkgo.unfi.com'
USER='daily_file_access'
PASSWD='dafiftp01!'
ftp -n $HOST << END 
quote USER $USER
quote PASS $PASSWD
bin
prompt off
cd /DailyFiles	 # this folder contains files...
lcd /home/mayiyo/Documents/DailyImport	# this location is local directory 
mget hgproductfeed.csv	
bye
END
