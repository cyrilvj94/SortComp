#! /bin/bash

read -p"Enter the numbers" a b c 
num1=$((a+b*c))
num2=$((a*b+c))
num3=$((c+ a/b))
num4=$((a%b + c))
echo $num1 $num2 $num3 $num4
