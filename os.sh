#factorial
echo "Enter the number to find the factorial of:"
read a
x=$a
result=1
while [ $x -ne 0 ]
do
    result=`expr $result \* $x`
    x=`expr $x - 1`
done
echo "The factorial of $a is $result"

#sum of digits
echo "enter a number:"
read num
sum = 0
while [ $num -ne 0 ]
do
mod = $((num % 10 ))
sum = $((sum + mod ))
num = $((num / 10 ))
done
echo "the sum of digits is : $sum "

#calculator
echo "enter a:"
read a
echo "enter b:"
read b 
echo "enter the operation (+ for addition ,- for subtraction,/ for division ,* for multiplication ):"
case $ch in 
"+") result= `expr $a + $b`;;
"-") result= `expr $a - $b`;;
"*") result= `expr $a \* $b`;;
"/") result= `expr $a \ $b`;;
esac
echo "the result is $result"

#power of number
echo "enter a"
read a
echo "enter b"
read b
result=1
if [ $b -eq 0 ]; then
result = 1
fi
for ((i>=1;i<= $b;i++))
do
result = $((result * a))
done 
echo " $a  raised to the power of $b is $result"

#GCD
echo "enter a "
read a 
echo "enter b"
read b
while [ $b -ne 0 ]
do
r= $(( a%b ))
a=$b
b=$r
done
echo "GCD: $a"

#Armstrong

echo "Enter a number to check if it's an Armstrong number:"
read num

original=$num
sum=0
count=0

# Count number of digits in the input number
while [ $num -gt 0 ]; do
    num=$((num / 10))
    count=$((count + 1))
done

num=$original

# Calculate Armstrong number
while [ $num -gt 0 ]; do
    digit=$((num % 10))
    power=$(( $digit ** $count ))
	sum=$((sum + power))
    num=$((num / 10))
done

# Check if the original number is equal to the sum
if [ $original -eq $sum ]; then
    echo "$original is an Armstrong number."
else
    echo "$original is not an Armstrong number."
fi

#pyramid
echo "enter number of rows :"
read rows
for ((i=1;i<=rows;i++))
do
for ((j=1;j<=rows-i;j++))
do
echo -n ""
done
for ((k=1;k<=2*i-1;k++))
do
echo -n "*"
done
echo
done

#total no of users
users=$(who | sort)
echo "sorted list:"
echo "sorted users: $users"
count =$(echo "$users" | wc -l)
echo "Total no. of users logged in : $count"

#valid login name
echo "enter the login name:"
read login
if grep "$login" har.txt;then
echo "login name is valid"
else
echo "invalid"
fi

#prime or not 
num=$1
if [ $num -eq 2 ];then
echo "$num is a prime "
exit 0
fi
for (( i=2 ; i<num ;i++));do
ans=$((num % i))
if [ $ans -eq 0 ];then
echo "$num is not prime "
exit 0
fi
done
echo "$num is a prime"

#permissions in a file 
read filename
if [-r "$filename"] && [-w "$filename"] && [-x "$filename"] ;then
echo "file has all permissions "
else
echo "file doesnt have all permissions "
fi

#specified month calendar
read month
month=$1
read year 
year=$2
cal "$month" "$year"

#range of months calendar
read month
read year 
start_month =$1,end_month=$2
for (( month=start_month;month<=end_month;month++));do
cal "$month" "$year"
echo "------------------------------"
done

#sort files

# Merge the contents of three files
cat file1.txt file2.txt file3.txt > merged_file.txt

# Sort the merged contents
sort merged_file.txt > sorted_merged_file.txt

# Display the sorted contents page by page
less sorted_merged_file.txt

#-----------------------------------------------------------------------------------------------------------------------------------------#


