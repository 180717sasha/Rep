#!/usr/bin/env bash

function Ghici(){
    Number=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Pleas guess the number of files in this directoy and insert a number:"
        read  number
        if [ $number -lt $Number ]
        then
            echo "Wrong! Your guess is Less then the true one. Try again"
        elif [ $number -gt $Number ]
        then
            echo "Wrong! Yyour guess is Greater then the true one. Try again!"
        else
            echo "Congratulation,you picket the right number!"
        break;
        fi
    done
}
echo "Guess the files number in this directory!"
Ghici