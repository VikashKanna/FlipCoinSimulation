#!/usr/local/bin/bash -x

echo "Welcome to Flip Coin Simulation Problem"

head=0;
tail=0;
while [ "$head" -lt 21 ] && [ "$tail" -lt 21 ]
do

	a=$(( RANDOM%2 ));
	if [ $a == 1 ];
	then
         	head=$(($head+1))
	else
        	tail=$(($tail+1))
	fi
done

if [ "$head" -eq 21 ] && [ "$tail" -eq 21 ]
then
	echo "Its a Tie"
elif [ "$head" -eq 21 ]
then
	echo "Head won by" $(($head-$tail))
else
	echo "Tail won by" $(($tail-$head))
fi
