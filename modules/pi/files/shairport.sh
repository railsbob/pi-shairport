#! /bin/sh
# /etc/init.d/shaiport.sh 

### BEGIN INIT INFO
# Provides:          noip
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Script to start shairport at boot
# Description:       Script to start shairport at boot
### END INIT INFO

case "$1" in
  start)
    echo "Starting shairport"
    /usr/local/bin/shairport -d
    ;;
  stop)
    echo "Stopping shairport"
    killall shairport
    ;;
  *)
    echo "Usage: /etc/init.d/shairport.sh {start|stop}"
    exit 1
    ;;
esac

exit 0
