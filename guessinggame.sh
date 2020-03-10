#!/usr/bin/env bash

function guessthenum()
{
    originalnum=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Please guess a number and Enter:"
        read  num
        if [ $num -lt $originalnum ]
        then
            echo "Your number is smaller"
        elif [ $num -gt $originalnum ]
        then
            echo "Your number is greater"
        else
            echo " Yahoooo! your number matches."
        break;
        fi
    done
}

echo "Please guess the number of files in the current dirctory and Enter!"
guessthenum
