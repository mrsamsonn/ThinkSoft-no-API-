#!/bin/sh
echo "\n\n...WELCOME TO REVIVN THINKSOFT!...\n\n"
system_profiler SPHardwareDataType SPStorageDataType SPDisplaysDataType > system_info.txt

echo "Attributes has been retrieved"

#extract attributes for api
cpu=$(grep -E "Chip" system_info.txt |sed 's/^.*://')
cpu=$(grep -E "Processor" system_info.txt |sed 's/^.*://')
echo $cpu
model=$(grep -E "Model" system_info.txt |sed 's/^.*://')
echo $model
ram=$(grep -E "Memory" system_info.txt |sed 's/^.*://')
echo $ram
serial=$(grep -E "Serial" system_info.txt |sed 's/^.*://')
echo $serial
hard_drive=$(grep -E "Capacity" system_info.txt |sed 's/^.*://')
echo $hard_drive

echo '\n\n\n'

#save command to api.sh
printf "curl -X PUT ***'api-placeholder'*** > api.sh

cat api.sh
echo '\n\n\n'

#exclude {inventory:...} for char counting
api_count=$(sed 's/-d ‘/\
/;s/.*\n//' api.sh)

#count chars
api_count=${#api_count}
#subtract 1 from total char due to extra "'" at the end }}'
api_count=$(($api_count-1))

echo $api_count
echo '\n\n\n'

#update api.sh content-length
printf "curl -X PUT ***'api-placeholder'*** -H “Origin: ***'api-placeholder'***” -H “Authorization: Bearer ***'api-placeholder'***’" > api.sh

cat api.sh





