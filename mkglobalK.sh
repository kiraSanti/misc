
script=$1
pwd=$PWD

if [ $( find -maxdepth 1 -type f -name $1 ) ]
then
	sudo mv $1 /home/kira/bin
	echo $1 'has been moved to /home/kira/bin and now can be used globally :)'
else
	cd /home/kira/bin
	if [ $( find -maxdepth 1 -type f -name $1 ) ]
	then
		echo $1 "is already a global script located in /home/kira/bin"
	else
		echo $1 "does NOT exist neither on current directory, nor in /home/kira/bin"	
	fi	
fi



