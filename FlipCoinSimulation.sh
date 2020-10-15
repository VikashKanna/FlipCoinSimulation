#!/usr/local/bin/bash -x

echo "Welcome to Flip Coin Simulation Problem"

a=$(( RANDOM%2 ));
if [ $a == 1 ];
then
         echo "Head is winner"
else
        echo "Tail is winner"
fi
