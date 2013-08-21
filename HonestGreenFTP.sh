HOST='ftp.mozilla.org'
ftp <<END_SCRIPT
open $HOST
get /pub/mozilla.org/README
END_SCRIPT
