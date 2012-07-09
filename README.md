# CM9 for Archos G9 Series

## Building 

### Download sources

```bash
mkdir cm9
cd cm9/
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

Once you do this and it is built, you will have to copy the entire /android/system/out/target/product/archos/archos_g9/system folder
into the archos.ext4 file. 
You do this by mounting the archos.ext4 image file (I use sudo mount -t ext4 -o loop /home/archos.ext4 /home/archosmountpoint)

After mounting, you need to recursively format the /system folder inside your archos mountpoint
(I use sudo rm -rf /home/archosmountpoint/system/*)

After you have formatted the /system folder inside your mountpoint, you need to copy the newly built files from the ROM into the image
(I use sudo cp -rf /android/system/out/target/product/archos/archos_g9/system/* /home/archosmountpoint/)

After you have copied the files into your mount point, you need to change the permissions on the folder under /system/etc/init/
(I use sudo chmod 777 /home/archosmountpoint/system/etc/init)

After this is done, you can unmount the image file
(sudo umount /home/archosmountpoint)

Then push it to your device
(adb push /home/archos.ext4 /data/local/)

Reboot and enjoy!
