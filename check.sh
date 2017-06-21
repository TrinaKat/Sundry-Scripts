#!/bin/bash

# Takes at least 1 dollars input and converts numbers to english
# For writing checks because it's hard
# (And I'm lazy)
# Can also take a cents parameter, but tbh kinda useless script LOL

if [ $# -eq 0 ]
then
	echo "Usage:   ./check.sh num_dollars num_cents"
	echo "Example: ./check.sh 2450 10"
	echo "Output:  \$2450.10 = two thousand four hundred fifty and 10/100"
	exit
elif [ $# -gt 2 ]
then
	echo "Error: Too many arguments!"
	echo "Usage: ./check.sh num_dollars num_cents"
	exit
fi

dollars=$(echo $1 | sed 's/^0*//')	# Strip leading 0s
cash=${dollars%.*}									# truncate decimal
cents=$(echo $2 | sed 's/^0*//')		# Strip leading 0s

# Check that inputs are numbers
if [[ -n ${cash//[0-9]/} ]]
then
    echo "Error: Inputs have to be numbers"
    echo "Dollars: $cash"
    exit
fi
if [[ -n ${cents//[0-9]/} ]]
then
    echo "Error: Inputs have to be numbers"
    echo "Cents: $cents"
    exit
fi

if [[ $cash -lt 0 ]] || [[ $cash -gt 99999 ]]
then
	echo "Error: Dollars must be positive value less than \$100,000 because I am poor"
	echo "You inputted \$$cash for the dollars variable"
	exit
fi

if [[ $cents -lt 0 ]] || [[ $cents -gt 99 ]]
then
	echo "Error: Cents must be positive value less than 100 because this isn't a coin->dollar converter"
	echo "You inputted $cents for the cents variable"
	exit
fi

str_tens=""
str_hundreds=""
str_thousands=""

nums=( zero one two three four five six seven eight nine 
			 ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen 
			 twenty twenty-one twenty-two twenty-three twenty-four twenty-five twenty-six twenty-seven twenty-eight twenty-nine 
			 thirty thirty-one thirty-two thirty-three thirty-four thirty-five thirty-six thirty-seven thirty-eight thirty-nine
			 forty forty-one forty-two forty-three forty-four forty-five forty-six forty-seven forty-eight forty-nine
			 fifty fifty-one fifty-two fifty-three fifty-four fifty-five fifty-six fifty-seven fifty-eight fifty-nine
			 sixty sixty-one sixty-two sixty-three sixty-four sixty-five sixty-six sixty-seven sixty-eight sixty-nine
			 seventy seventy-one seventy-two seventy-three seventy-four seventy-five seventy-six seventy-seven seventy-eight seventy-nine
			 eighty eighty-one eighty-two eighty-three eighty-four eighty-five eighty-six eighty-seven eighty-eight eighty-nine
			 ninety ninety-one ninety-two ninety-three ninety-four ninety-five ninety-six ninety-seven ninety-eight ninety-nine )
digits=( 00 01 02 03 04 05 06 07 08 09 )

# Get cents, ranges 1-99
if [[ $cents -gt 9 ]]
then
	str_cents="and $cents/100"
	cent_str=$cents
elif [[ $cents -ge 0 ]]
then
	str_cents="and ${digits[$cents]}/100"
	cent_str=${digits[$cents]}
fi

# For tens, ranges 1-99
let tens=$cash%100
if [[ $tens -gt 0 ]]
then
	str_tens="${nums[$tens]} "
fi

# For hundreds, ranges 1-9
let hundreds=$cash/100%10
if [[ $hundreds -gt 0 ]]
then
	str_hundreds="${nums[$hundreds]} hundred "
fi

# For thousands, ranges 1-99
# I am poor so I will never write check for 99 thousand dollars lol
# Maybe I will receive one one day
# That would be nice.
let thousands=$cash/1000%100
if [[ $thousands -gt 0 ]]
then
	str_thousands="${nums[$thousands]} thousand "
fi

# Print
echo "\$$cash.$cent_str = $str_thousands$str_hundreds$str_tens$str_cents"

