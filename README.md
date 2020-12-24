# dvd2iso
Script for backing up DVDs to ISO files on Linux or Mac.

NOTE: this script should only be used to back up DVDs that you own. Do not copy DVDs with copyrighted material that you do not own.

# how to back up DVDs using the script

Open a terminal, change to the directory where you want to store the ISO file and type in the following:

```
./dvd2iso.sh <name of your file, e.g., Wedding>
```

Enter your sudo password if prompted, this will allow the script to unmount the DVD if it's already mounted.

Then sit back and relax until the DVD is ejected from your drive. When it ejects, the conversion is complete and the ISO file is in the directory with the name you provided.

# dependencies

* Linux
  * sudo
  * dvdbackup
  * cdrtools (provides mkisofs)
  * libdvdcss

* Mac OS
  * Homebrew
  * Homebrew packages:
    * dvdbackup
    * cdrtools (provides mkisofs)
    * libdvdcss

Tested to work on a M1 Macbook running Big Sur.

# how to play DVDs backed up to ISOs

* Linux
  * VLC Media Player can play DVDs from ISO files. If you have an older version of VLC that doesn't support that, then try to mount the ISO file as a drive and then use VLC to play the contents of the DVD.
  * Mplayer can play DVDs from ISO files as well, although it does not support menus, subtitle options, etc., as readily as VLC.

* Mac OS
  * Double-click on the ISO file so that Mac OS mounts it as a drive.
  * Run the Mac OS DVD Player. The Mac OS DVD Player should automatically start playing the DVD. If it does not start automatically, go to File->Open Media..., navigate to the VIDEO_TS file on the mounted ISO, and select it.

# why back up your DVDs to ISOs
The entire contents of the DVD including the menu navigation will still be usable from the ISO file. Other methods of backing up DVDs usually require you to 'transcode' the DVD videos into other formats which typically reduces their size but gives up the DVD navigation menu and potentially some audio tracks and subtitles in different languages. This method preserves the DVD in its entirety.

# why back up your DVDs in general
If you've ever tried to back up your old VHS tapes to digital format to find that your VCR doesn't work anymore and your only other options have become far more expensive than you expected, then you'll appreciate the need to get your DVDs into a newer format before it's too late. Basically, old storage media can become obsolete along with the devices that are required to read them and data can be lost as the storage medium itself ages.
