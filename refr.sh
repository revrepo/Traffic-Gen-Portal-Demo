#!/bin/bash


for i in `cat hosts-run`
	do 
		scp App-Traff-Sim.sh jon@$i:~jon/
	done

for i in `cat hosts-run`
	do 
		OOO=`jot  -r 1 0 2300`
		echo $i
		ssh jon@$i "killall App-Traff-Sim.sh ; ~jon/App-Traff-Sim.sh $OOO > /dev/null 2>&1 &"
		echo ~jon/App-Traff-Sim.sh $OOO
	done
