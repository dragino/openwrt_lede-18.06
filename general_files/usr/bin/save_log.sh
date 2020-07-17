#!/bin/sh

# Start saving the log data
logread -f >> /tmp/logfile.log &

# Monitor the log file size
#maxfilesize="87000"  # Test
maxfilesize="2001000"  # Max:  2MB+

while [ 1 ]
do
	filesize=$(wc -c /tmp/logfile.log | cut -d " " -f1)
	echo "Filesize: $filesize"
	# Exit if max file size has been reached
	if [ $filesize -gt $maxfilesize ]; then
		killall -q logread
		rm -f /tmp/logging.flag
		exit
	fi
	# Exit if logging has been stopped
	if [ !-e /tmp/logging.flag ]; then
		exit
	fi
	sleep 10
done
exit
