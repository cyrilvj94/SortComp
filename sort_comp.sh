#! /bin/bash

read -p"Enter the numbers" a b c 
num1=$((a+b*c))
num2=$((a*b+c))
num3=$((c+ a/b))
num4=$((a%b + c))
declare -A dict
declare -a arr
dict['num1']=$num1
dict['num2']=$num2
dict['num3']=$num3
dict['num4']=$num4

arr=${dict[@]}
echo ${arr[@]}
