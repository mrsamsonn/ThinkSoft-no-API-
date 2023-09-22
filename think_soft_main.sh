#!/bin/sh
echo "\n\n...WELCOME TO REVIVN THINKSOFT!...\n\n"

#extract attributes
system_profiler SPHardwareDataType SPStorageDataType SPDisplaysDataType > system_info.txt

sed -i '' "/Hardware:/d" system_info.txt
sed -i '' "/Hardware Overview:/d" system_info.txt
sed -i '' "/Model Name:/d" system_info.txt
sed -i '' "/Total Number of Cores:/d" system_info.txt
sed -i '' "/System Firmware Version:/d" system_info.txt
sed -i '' "/OS Loader Version:/d" system_info.txt
sed -i '' "/Hardware UUID:/d" system_info.txt
sed -i '' "/Provisioning UDID:/d" system_info.txt
sed -i '' "/Activation Lock Status:/d" system_info.txt
sed -i '' "/Storage:/d" system_info.txt
sed -i '' "/Data:/d" system_info.txt
sed -i '' "/Free:/d" system_info.txt
sed -i '' "/Mount Point:/d" system_info.txt
sed -i '' "/File System:/d" system_info.txt
sed -i '' "/Writable:/d" system_info.txt
sed -i '' "/Ignore Ownership:/d" system_info.txt
sed -i '' "/BSD Name:/d" system_info.txt
sed -i '' "/Volume UUID:/d" system_info.txt
sed -i '' "/Physical Drive:/d" system_info.txt
sed -i '' "/Device Name:/d" system_info.txt
sed -i '' "/Media Name:/d" system_info.txt
sed -i '' "/Medium Type:/d" system_info.txt
sed -i '' "/Protocol:/d" system_info.txt
sed -i '' "/Internal:/d" system_info.txt
sed -i '' "/Partition Map Type:/d" system_info.txt
sed -i '' "/S.M.A.R.T. Status:/d" system_info.txt
sed -i '' "/Graphics/d" system_info.txt
sed -i '' "/Apple M2:/d" system_info.txt
sed -i '' "/Chipset Model:/d" system_info.txt
sed -i '' "/Type:/d" system_info.txt
sed -i '' "/Bus:/d" system_info.txt
sed -i '' "/Total Number of Cores:/d" system_info.txt
sed -i '' "/Vendor:/d" system_info.txt
sed -i '' "/Metal Family:/d" system_info.txt
sed -i '' "/Displays:/d" system_info.txt
sed -i '' "/Color LCD:/d" system_info.txt
sed -i '' "/Display Type:/d" system_info.txt
sed -i '' "/Main Display:/d" system_info.txt
sed -i '' "/Mirror:/d" system_info.txt
sed -i '' "/Online:/d" system_info.txt
sed -i '' "/Automatically Adjust Brightness:/d" system_info.txt
sed -i '' "/Connection Type:/d" system_info.txt
sed -i '' "/HD:/d" system_info.txt
sed -i '' "/^$/d" system_info.txt
sed -i '' "s/    //g" system_info.txt
sed -i '' "6,9d" system_info.txt

echo "Attributes retrieved:"

#filter attributes for api
cpu=$(grep -E "Chip" system_info.txt |sed 's/^.*://')
echo $cpu
model=$(grep -E "Model" system_info.txt |sed 's/^.*://')
echo $model
ram=$(grep -E "Memory" system_info.txt |sed 's/^.*://')
echo $ram
serial=$(grep -E "Serial" system_info.txt |sed 's/^.*://')
echo $serial
hard_drive=$(grep -E "Capacity" system_info.txt |sed 's/^.*://')
echo $hard_drive

echo '\n'

echo Enter Inventory_ID:
read inventory_id
base_url='***'api-placeholder'***'

#grab uuid of device
uuid=$(curl $base_url+$inventory_id -H "Origin: ***'api-placeholder'***" -H "Authorization: Bearer ***'api-placeholder'***" | cut -d '"' -f6)
#echo $uuid
# output example:c6fc4c64-d848-4050-a7d3-0483d32e257c

if [ "$uuid" == "Not Found" ]; then
    echo 'Pheonix ID does not exist'
    exit
else
    echo "Processing..."
    echo '\n'
fi

#save command to api.sh
printf "curl -X PUT ***'api-placeholder'***/inventories/${uuid} -H “Origin: ***'api-placeholder'***” -H “Authorization: Bearer ***'api-placeholder'***’" > api.sh

#cat api.sh
#echo '\n\n\n'

#exclude {inventory:...} for char counting
api_count=$(sed 's/-d ‘/\
/;s/.*\n//' api.sh)

#count chars
api_count=${#api_count}
#subtract 1 from total char due to extra "'" at the end }}'
api_count=$(($api_count-1))

#echo $api_count
#echo '\n\n\n'

#update api.sh content-length
printf "curl -X PUT ***'api-placeholder'***} -H “Origin: ***'api-placeholder'***” -H “Authorization: Bearer ***'api-placeholder'***’" > api.sh

#prints out generated command for api
echo "\n\n"
cat api.sh
echo "\n\n"

#remove comments to run api script##########
#chmod +x api.sh
#./api.sh

echo "atttributes for Invetory ID: ${inventory_id} has been updated in Phoenix"


