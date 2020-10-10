#!/bin/bash
cd /home/$USER/ostis/scripts
gnome-terminal -- "./build_kb.sh" && pid="$(pgrep build_kb.sh)";
while true
do

pid="$(pgrep build_kb.sh)"
if [ -z $pid ]
then 
{
gnome-terminal --tab --command "./run_scweb.sh" --tab --command "./run_sctp.sh"; 	
	sleep 1
	firefox localhost:8000
	exit 1
}
else 
{
sleep 1
}
fi

done
exit 1
