# dvd2iso
Script for backing up DVDs to ISO files on a Mac.

NOTE: this script should only be used to back up DVDs that you own. Do not copy DVDs with copyrighted material that you do not own.

# How to back up DVDs using the script

Make sure no applications are using the DVD drive, e.g., the Mac OS DVD Player app is closed. Then open a terminal, change to the directory where you want to store the ISO file, and type in the following:

```
./dvd2iso.sh <device name> <ISO output filename without .iso suffix>
```

For example:

```
./dvd2iso.sh /dev/disk4 Wedding
```

In this example, the DVD drive is /dev/disk4 and it will be saved to Wedding.iso.

If you're on a Macbook with an M1 ARM64 processor use the prefix ***arch -x86_64*** to invoke Rosetta2:

```
arch -x86_64 ./dvd2iso.sh <device name> <ISO output filename without .iso suffix>
```

Enter your sudo password if prompted, this will allow the script to unmount the DVD if it's already mounted.

The script signals completion by ejecting your DVD from the drive. When the DVD is ejected, the ISO file is in the directory with the name you provided (in the example above it would be *Wedding.iso*).

# How do I determine my DVD drive's device mapping

* Insert a DVD, wait for the DVD Player to pop up.
* Close the DVD Player app.
* Open a terminal and type in:

```
mount
```
You should be able to identify the DVD drive as one of the last lines in the output.

# Dependencies

* Homebrew (instructions at https://brew.sh/)
  * For x86 Macs
  ```
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```
  * For M1 Macs use the prefix ***arch -x86_64*** to invoke Rosetta2
  ```
  arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```
* Homebrew packages:
  * For x86 Macs
    
  ```
  brew install dvdbackup cdrtools libdvdcss
  ```
  * For M1 Macs
  ```
  arch -x86_64 brew install dvdbackup cdrtools libdvdcss
  ```

Tested to work on a M1 Macbook running Big Sur.

# How to play DVDs backed up to ISOs
* Double-click on the ISO file so that Mac OS mounts it as a drive.
* Run the Mac OS DVD Player. The Mac OS DVD Player should automatically start playing the DVD. If it does not start automatically, go to File->Open Media..., navigate to the VIDEO_TS folder on the mounted ISO, and select it.

# Why back up your DVDs to ISOs
The entire contents of the DVD including the menu navigation will still be usable from the ISO file. Other methods of backing up DVDs usually require you to 'transcode' the DVD videos into other formats which typically reduces their size but gives up the DVD navigation menu and potentially some audio tracks and subtitles in different languages. This method preserves the DVD in its entirety.

# Why back up your DVDs in general
If you've ever tried to back up your old VHS tapes to digital format to find that your VCR doesn't work anymore and your only other options have become far more expensive than you expected, then you'll appreciate the need to get your DVDs into a newer format before it's too late. Basically, old storage media can become obsolete along with the devices that are required to read them and data can be lost as the storage medium itself ages.
