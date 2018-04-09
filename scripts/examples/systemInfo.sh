#!/bin/bash

LOG_FILE="systemInfo.txt"
echo -e "\nSystem Information:" > $LOG_FILE
echo -e "Date:" >> $LOG_FILE
echo -e "\t$(date +'%D %H:%m')" >> $LOG_FILE
echo -e "Logged in Users:" >> $LOG_FILE
echo -e "$(who | sed 's/^/\t/g')" >> $LOG_FILE
echo -e "Uptime" >> $LOG_FILE
echo -e "$(uptime | sed 's/^/\t/g')">> $LOG_FILE
echo >> $LOG_FILE

cat $LOG_FILE

