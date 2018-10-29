#!/bin/bash


start_agent ()
{
    echo "Initialising new SSH agent...";
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > ${SSH_ENV};
    echo succeeded;
    chmod 600 "${SSH_ENV}";
    . "${SSH_ENV}" > /dev/null;
    /usr/bin/ssh-add
}

# Source SSH settings, if applicable
SSH_ENV=$HOME/.ssh/environment
if [ -f ${SSH_ENV} ]; then
     . "${SSH_ENV}" > /dev/null
     # ps flags are not always portable so check here if agent doesn't start
     ps -p "${SSH_AGENT_PID}" || start_agent;
else
     start_agent;
fi



while [ 0 ]

  do

	ATTACK=`rl -c 1 Sim-Attacks.txt`
	HOST=`rl -c 1 hosts-run`
	RAND=`shuf -i 1-500 -n 1`


	echo $HOST $ATTACK
	echo sleeping for $RAND
	ssh $HOST $ATTACK

	sleep $RAND

 done
