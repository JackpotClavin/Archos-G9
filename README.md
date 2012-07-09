# CM9 for Archos G9 Series

## Building 

### Download sources

```bash
mkdir android/system
cd android/system
curl https://dl-ssl.google.com/dl/googlesource/git-repo/repo > ~/repo
chmod a+x ~/repo
repo init -u git://github.com/CyanogenMod/android.git -b ics
repo sync -j16
./vendor/cm/get-prebuilts
```

### Compile

```bash
source build/envsetup.sh
brunch archos_g9 -j$(grep -c processor /proc/cpuinfo)
```

While this is being built, you should download the lastest archos.ext4 CM9 ROM image and then follow the instructions below

Once you do this and it is built, you will have to copy the entire /android/system/out/target/product/archos/archos_g9/system folder
into the archos.ext4 file. 
You do this by mounting the archos.ext4 image file

```bash
sudo mount -t ext4 -o loop /home/archos.ext4 /home/archosmountpoint
```

After mounting, you need to recursively format the /system folder inside your archos mountpoint
```bash
sudo rm -rf /home/archosmountpoint/system/*
```

After you have formatted the /system folder inside your mountpoint, you need to copy the newly built files from the ROM into the image
```bash
sudo cp -rf /android/system/out/target/product/archos/archos_g9/system/* /home/archosmountpoint/system/
```

After you have copied the files into your mount point, you need to change the permissions on the folder under /system/etc/init/
```bash
sudo chmod 777 /home/archosmountpoint/system/etc/init
```

After this is done, you can unmount the image file
```bash
sudo umount /home/archosmountpoint
```

Then push it to your device
```bash
adb push /home/archos.ext4 /data/local/
```

If this is your first time flashing CM9, you will have to wipe your /data partition first, then push it to your phone.

Reboot and enjoy!
