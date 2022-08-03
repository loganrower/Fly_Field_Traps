#! /bin/bash

# WORKING VERSION!!!

## Created For loop then based on whether user requested a Pi then that if path was selected
## Once the user selects the Pi then the IP Address from the IP_List will be extracted and used to peform an SCP command
#### This SCP command will then transfer the files from the pi to a directory on the laptop.
## Will need to be refined but for now it works well

## HAVE A NUMERIC INPUT FOR THE DATE!!

file=~/repositories/Fly_Field_Traps/Software/Data_Extraction/ip_list.json
pi_array=("Pi0" "Pi1" "Pi2" "Pi3" "Pi4" "Pi5" "Pi6" "Pi7" "Pi8")
echo "Enter Pi# (ex:Pi1)"
read pi_num
echo $pi_num
other=${arr[@]:1:1}
echo $other

read -p "Enter a date (yyyy-mm-dd): " user_date

PI1="Pi1"
PI2="Pi2"
PI3="Pi3"
PI4="Pi4"
PI5="Pi5"
PI6="Pi6"
PI7="Pi7"
PI8="Pi8"
PI9="Pi9"

# Made a directory for todays date:
path=~/Desktop/Field_Trap_Exps
cd $path
#d=$(date +"%Y-%m-%d")

mkdir -p $user_date
current_path="$(pwd)"
#echo $current_path
PIBASE=~/Field_Trap/Image_Acquisition/images/timelapse
PIFINAL=$PIBASE/$user_date
echo $PIFINAL

if [ "$pi_num" = "$PI1" ]; then
	ip_new=$(jq ".Pi1" $file)
	echo $ip_new
	ip_new=$(sed -e 's/^"//' -e 's/"$//' <<<"$ip_new")
	echo $ip_new
elif [ "$pi_num" = "$PI2" ]; then
	ip_new=$(jq ".Pi2" $file)
	echo $ip_new
	ip_new=$(sed -e 's/^"//' -e 's/"$//' <<<"$ip_new")
	echo $ip_new
elif [ "$pi_num" = "$PI3" ]; then
	ip_new=$(jq ".Pi3" $file)
	echo $ip_new
	ip_new=$(sed -e 's/^"//' -e 's/"$//' <<<"$ip_new")
	echo $ip_new
	#scp -r pi@$ip_new:~/Field_Trap/Image_Acquisition/images/timelapse/$d ~/Desktop/Field_Trap_Exps
elif [ "$pi_num" = "$PI4" ]; then
	ip_new=$(jq ".Pi4" $file)
	echo $ip_new
	ip_new=$(sed -e 's/^"//' -e 's/"$//' <<<"$ip_new")
	echo $ip_new
elif [ "$pi_num" = "$PI5" ]; then
	ip_new=$(jq ".Pi5" $file)
	echo $ip_new
	ip_new=$(sed -e 's/^"//' -e 's/"$//' <<<"$ip_new")
	echo $ip_new
elif [ "$pi_num" = "$PI6" ]; then
	ip_new=$(jq ".Pi6" $file)
	echo $ip_new
	ip_new=$(sed -e 's/^"//' -e 's/"$//' <<<"$ip_new")
	echo $ip_new
elif [ "$pi_num" = "$PI7" ]; then
	ip_new=$(jq ".Pi7" $file)
	echo $ip_new
	ip_new=$(sed -e 's/^"//' -e 's/"$//' <<<"$ip_new")
	echo $ip_new
elif [ "$pi_num" = "$PI8" ]; then
	ip_new=$(jq ".Pi8" $file)
	echo $ip_new
	ip_new=$(sed -e 's/^"//' -e 's/"$//' <<<"$ip_new")
	echo $ip_new
elif [ "$pi_num" = "$PI9" ]; then
	ip_new=$(jq ".Pi9" $file)
	echo $ip_new
	ip_new=$(sed -e 's/^"//' -e 's/"$//' <<<"$ip_new")
	echo $ip_new
fi
scp -r pi@$ip_new:~/Field_Trap/Image_Acquisition/images/timelapse/$user_date /media/flyranch/Samsung_T5/Field_Trap_Exps
#scp -r pi@$ip_new:~/Field_Trap/Image_Acquisition/images/timelapse/$d ~/Desktop/Field_Trap_Exps
