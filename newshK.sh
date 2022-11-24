
script=$1

mkexeK.sh $1
sleep 1 
mkglobalK.sh $1
sleep 1

echo -n "Wanna open" $1 "with vim [y/n]? "
read y

if [ $y == y ]
then
	vim /home/kira/bin/$1
fi

