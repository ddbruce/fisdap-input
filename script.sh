#!/bin/bash

for i in `seq 1142 1147`;
do
	curl --data "time=$i&evaluatorType=1&evaluatorId=29434&usernameConfirm=$1&passwordConfirm=$2&passed=1&shiftId=8976446&practiceDefinitionId=110397&practiceItemId=&confirmed=0&confirmToggle=0&canConfirmEvalsElement=" -H "Content-Type: application/x-www-form-urlencoded" --cookie "PHPSESSID=d2adgom8qtfdkvp2e3he10dob3; secureLogin=1; _pk_id.4.7e67=6099a4f220be8bf8.1453381317.26.1456941292.1456940662.; _pk_ses.4.7e67=*; arp_scroll_position=1813" -s https://members.fisdap.net/skills-tracker/shifts/validate-practice
echo "completed time: $i"
done
