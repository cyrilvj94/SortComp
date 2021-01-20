#! /bin/bash

#function to sort array

function sortArrayAsscending
{
array=$1
n=${#array[@]}
for((i=0;i<$n;i++))
do
        for((j=$i;j<$n;j++))
        do
                if [ ${array[i]} -gt ${array[j]} ]
                then
                        #swap
                        temp=${array[i]}
                        array[$i]=${array[j]}
                        array[$j]=$temp
                fi
        done
done

echo   ${array[@]}

}




function sortArrayDesc
{
array=$1
n=${#array[@]}
for((i=0;i<$n;i++))
do
        for((j=$i;j<$n;j++))
        do
                if [ ${array[i]} -lt ${array[j]} ]
                then
                        #swap
                        temp=${array[i]}
                        array[$i]=${array[j]}
                        array[$j]=$temp
                fi
        done
done

echo   ${array[@]}

}


read -p"Enter the numbers" a b c 
num1=$((a+b*c))
num2=$((a*b+c))
num3=$((c+ a/b))
num4=$((a%b + c))
declare -A dict
declare -a array
dict['num1']=$num1
dict['num2']=$num2
dict['num3']=$num3
dict['num4']=$num4

j=0
for value in ${dict[@]}
do
	array[$j]=$value
	j=$((j+1))
done

echo ${array[@]}
sorted=$(sortArrayDesc $array)
echo Sorted Array Descening ${sorted[@]}
sorted=$(sortArrayAsscending $array)
echo Sorted Array Assending ${sorted[@]}

