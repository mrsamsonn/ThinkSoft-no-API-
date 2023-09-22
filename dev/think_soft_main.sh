#!/bin/sh
echo "\n\n...WELCOME TO REVIVN THINKSOFT!...\n\n"
echo Enter Laptop User to connect:
read tech_user
echo "Laptop User Password:"
read -s user_password
echo Enter Tech_Initials:
read tech_int
echo Enter Device_ID:
read dev_id
system_profiler SPHardwareDataType SPStorageDataType SPDisplaysDataType > ${tech_int}_${dev_id}.txt
sed -i '' "/Hardware:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Hardware Overview:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Model Name:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Total Number of Cores:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/System Firmware Version:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/OS Loader Version:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Hardware UUID:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Provisioning UDID:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Activation Lock Status:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Storage:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Data:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Free:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Mount Point:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/File System:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Writable:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Ignore Ownership:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/BSD Name:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Volume UUID:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Physical Drive:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Device Name:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Media Name:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Medium Type:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Protocol:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Internal:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Partition Map Type:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/S.M.A.R.T. Status:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Graphics/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Apple M2:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Chipset Model:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Type:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Bus:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Total Number of Cores:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Vendor:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Metal Family:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Displays:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Color LCD:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Display Type:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Main Display:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Mirror:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Online:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Automatically Adjust Brightness:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/Connection Type:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/HD:/d" ${tech_int}_${dev_id}.txt
sed -i '' "/^$/d" ${tech_int}_${dev_id}.txt
sed -i '' "s/    //g" ${tech_int}_${dev_id}.txt
sed -i '' "6,9d" ${tech_int}_${dev_id}.txt

expect <<EOF
spawn sftp ${tech_user}@macbook-pro.local
expect "Password:"
send "$user_password\r"
expect "sftp>"
send " \r"
expect "sftp>"
send "put ${tech_int}_${dev_id}.txt Desktop/think_soft_data \r"
expect "sftp>" {send "bye\n"}
exit
echo "Attributes has been retrieved"
nano ${tech_int}_${dev_id}.txt
