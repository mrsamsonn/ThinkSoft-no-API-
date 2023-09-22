# ThinkSoft
![](https://progress-bar.dev/45/?title=Development_Progress:&width=150)
---------------------------------------------------

***Development List:***
- [x] Attribute Retrieval through MAC OS Recovery Mode
- [x] Generate a .txt file for attributes 
- [x] Load Attributes into the API
- [x] Update device UUID in API 
- [x] make steps more user friendly, less steps (current number of terminal command to run script: 2)
- [ ] Update Credentials for each Tech in API
- [ ] Support for OS older than Mac OS Moneterey (could be working already, needs to be tested)
- [ ] Support for Windows PC
- [ ] Support for Chrome OS
- [ ] Add Disk Wiping (Adisa Certified Disk Wipe Process)
- [ ] Run scipt on Boot load (2nd route if Recovery mode terminal is insufficient)
----------------------------------------------------
**CREATING THE BOOT DRIVE (Need SSD for Apple Silicone Macs):** 

Note: external drive must have Mac OS Monterey Installed for this to work. Then copy paste bash file into the root directory 
once OS is installed, make external drive writable:

make external disk writable:
```
sudo mount -uw /Volumes/$VOLUME_NAME$
```

Copy bash files into root of external drive:
```
cp ~/$bash_location$/think_soft.sh /Volumes/$VOLUME_NAME$
cp ~/$bash_location$/think_soft_main.sh /Volumes/$VOLUME_NAME$
```
use sudo if permission denied:

```
sudo cp ~/$bash_location$/think_soft.sh /Volumes/$VOLUME_NAME$
sudo cp ~/$bash_location$/think_soft_main.sh /Volumes/$VOLUME_NAME$
```

-------------------------------------------------------
**USING THE BOOT DRIVE IN RECOVERY MODE:**

go to Terminal then change directory to /Volumes/$VOLUME_NAME$:
```
cd /Volumes/$VOLUME_NAME$
```

run script:
```
./think_soft.sh
```

Enter Device Phoenix ID (for example):
```
Enter Phoenix_ID:
293279
```

