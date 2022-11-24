
script=$1
pwd=$PWD

if [ $( find -maxdepth 1 -type f -name $1 ) ]
then
	chmod 755 $1
	echo "$1 already exists on the current directory, and it's executable"

else 
	cd /home/kira/bin
	if [ $( find -maxdepth 1 -type f -name $1 ) ]	
	then
		chmod 755 $1
		echo "$1 already exists on /home/kira/bin and it's executable"	

	else
		cd $pwd
		touch $1
		chmod 755 $1
		echo "$1 script created and executable :)"
	fi
fi	




