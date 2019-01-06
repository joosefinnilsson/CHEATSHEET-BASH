# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Eavesdrop on your system
diff <(lsof -p 1234) <(sleep 10; lsof -p 1234)

# Eavesdrop on your system
diff <(lsof -p 1234) <(sleep 10; lsof -p 1234)

# Determine what version of bind is running on a dns server.
dig -t txt -c chaos VERSION.BIND @<dns.server.com>

# Take current directory name and rename files that exist in the folder to the same
dir=${PWD##*/}; rename "s/`ls -b1 | head -n1 | sed 's/.\{4\}$//'`/$dir/" -v *

# neat diff of remote files owned by root on different systems
diff -u <(ssh -t user@host1 sudo cat /dir1/file1) <(ssh -t user@host2 sudo cat /dir2/file2)

# Diff two directories by finding and comparing the md5 checksums of their contents.
diff -y suppress-common-lines <(sort -k2 <(md5deep -r -b directory1)) <(sort -k2 <(md5deep -r -b directory2))

# osx disk utility
diskutil list

# Compare a remote file with a local file
diff /path/to/localfile <(ssh user@host cat /path/to/remotefile)

# Get full directory path of a script regardless of where it is run from
dirname $(readlink -f ${BASH_SOURCE[0]})

# Autodetect screens and extend workspace to the left
disper displays=auto -e -t left

# detect partitions
diskutil list

# Describe differences between files
diff changed-group-format='differs from line %dF to line %dL|' unchanged-line-format='' $FILE1 $FILE2 | sed 's/|/\n/'

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Use dig instead of nslookup
dig google.com

# df without line wrap on long FS name
di

# transfer files locally to be sure that file permissions are kept correctly showing progress
dir='path to file'; tar cpf - "$dir" | pv -s $(du -sb "$dir" | awk '{print $1}') | tar xpf - -C /other/path

# diff the outputs of two programs
diff <(exiftool img_1.jpg) <(exiftool img_2.jpg)

# Compare two directory trees.
diff -qr <dir1> <dir2>

# count directory space usage in current directory with sort for microsoft windows
diruse /,/M/* .|sort

# Display a random man page
dir="/bin"; man $(ls $dir |sed -n "$(echo $(( $RANDOM % $(ls $dir |wc -l | awk "{ print $1; }" ) + 1 )) )p")

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# shows which files differ in two direcories
diff -qr /dirA /dirB

# Shell function to exit script with error in exit status and print optional message to stderr
die(){ result=$1;shift;[ -n "$*" ]&&printf "%s\n" "$*" >&2;exit $result;}

# Check reverse DNS
dig +short -x {ip}

# Get your outgoing IP address
dig +short myip.opendns.com @resolver1.opendns.com

# Compare two directory trees.
diff <(cd dir1 && find | sort) <(cd dir2 && find | sort)

# Make a list of files, folders and subfolders from windows command prompt
dir /ad /s /b

# compare three file
diff3 -a file1 file2 file3

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# find the difference between two nodes
diff <(ssh nx915000 "rpm -qa") <(ssh nx915001 "rpm -qa")

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# random xkcd comic
display "$(wget -q http://dynamic.xkcd.com/comic/random/ -O - | grep -Po '(?<=")http://imgs.xkcd.com/comics/[^"]+(png|jpg)')"

# Diff 2 file struct - Useful for branch diff and jars diff(uncompressed)
diff <(cd A; find -type f|xargs md5sum ) <(cd B; find -type f | xargs md5sum )

# Get MX records for a domain
dig foo.org mx +short

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Diff on two variables
diff <(echo "$a") <(echo "$b")

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# What is my public IP-address?
dig @208.67.222.222 myip.opendns.com

# diff files while disregarding indentation and trailing white space
diff -b $file1 $file2 # GNU Tools

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Lookup your own IPv4 address
dig +short myip.opendns.com @resolver1.opendns.com

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Find usb device
diff <(lsusb) <(sleep 3s && lsusb)

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Get the list of root nameservers for a given TLD
dig +short NS org.

# Perform a reverse DNS lookup
dig -x 74.125.45.100

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Generate diff of first 500 lines of two files
diff <(head -500 product-feed.xml) <(head -500 product-feed.xml.old)

# Trace a DNS query from root to the authoritive servers.
dig +trace google.com

# Get your external IP address if your machine has a DNS entry
dig +short $HOSTNAME

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# diff two sorted files
diff <(sort file1.txt) <(sort file2.txt)

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Diff remote webpages using wget
diff <(wget -q -O - URL1) <(wget -q -O - URL2)

# Get IP from hostname
dig +short google.com

# Compare two directories
diff suppress-common-lines -y <(cd path_to_dir1; find .|sort) <(cd path_to_dir2; find .|sort)

# diff output of two commands
diff <(tail -10 file1) <(tail -10 file2)

# Get your current Public IP
dig myip.opendns.com @Resolver1.opendns.com +short

# Check if x509 certificate file and rsa private key match
diff <(openssl x509 -noout -modulus -in server.crt ) <( openssl rsa -noout -modulus -in server.key )

# Create patch file for two directories
diff -r -u originDir updateDir > result.patch

# Compare two directory trees.
diff <(cd dir1 && find . | sort) <(cd dir2 && find . | sort)

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Recursively compare two directories and output their differences on a readable format
diff -urp /originaldirectory /modifieddirectory

# Compare a remote file with a local file
diff <(ssh user@host cat /path/to/remotefile) /path/to/localfile

# Probably, most frequent use of diff
diff -Naur strip-trailing-cr

# Compare a remote dir with a local dir
diff -y <(ssh user@host  find /boot|sort) <(find /boot|sort)

# External IP (raw data)
dig +short myip.opendns.com @resolver1.opendns.com

# Lookup hostname for IP address
dig +short -x <ip-address>

# Check if your ISP is intercepting DNS queries
dig +short which.opendns.com txt @208.67.220.220

# Word-based diff on reformatted text files
diff -uw <(fmt -1 {file1, file2})

# diff will usually only take one file from STDIN. This is a method to take the result of two streams and compare with diff. The example I use to compare two iTunes libraries but it is generally applicable.
diff <(cd /path-1; find . -type f -print | egrep -i '\.m4a$|\.mp3$') <(cd /path-2; find . f -print | egrep -i '\.m4a$|\.mp3$')

# Get just the IP for a hostname
dig hostname a +short

# diff two svn repos ignoring spaces,tabs and svnfiles
diff -wubBEr -x .svn dirA dirB

# diff files while disregarding indentation and trailing white space
diff <(perl -wpl -e '$_ =~ s/^\s+|\s+$//g ;' file1) <(perl -wpl -e '$_ =~ s/^\s+|\s+$//g ;' file2)

# Check SSH public and private keys matching
diff <(ssh-keygen -y -f ~/.ssh/id_rsa) <(cut -d' ' -f1,2 ~/.ssh/id_rsa.pub)

# Display Dilbert strip of the day
display http://dilbert.com$(curl -s dilbert.com|grep -Po '"\K/dyn/str_strip(/0+){4}/.*strip.[^\.]*\.gif')

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Show permissions of current directory and all directories upwards to /
dir=$(pwd); while [ ! -z "$dir" ]; do ls -ld "$dir"; dir=${dir%/*}; done; ls -ld /

# diff process output
diffprocess () { diff <($*) <(sleep  3; $*); }

# Diff files on two remote hosts.
diff <(ssh alice cat /etc/apt/sources.list) <(ssh bob cat /etc/apt/sources.list)

# Check reverse DNS
dig -x {IP}

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# diff directories, quick cut and paste to view the changes
diff -q dir1/ dir2/ | grep differ | awk '{ print "vimdiff " $2 " " $4 }'

# Diff two directories by finding and comparing the md5 checksums of their contents.
diff <(sort <(md5deep -r /directory/1/) |cut -f1 -d' ') <(sort <(md5deep -r /directory/2/) |cut -f1 -d' ')

# Diff two directories by finding and comparing the md5 checksums of their contents.
diff <(sort <(md5deep -b -r /directory/1/) ) <(sort <(md5deep -b -r /directory/2/)

# Check the hard disk vendor and model on Apple Mac
diskutil info /dev/disk0 | grep 'Device / Media Name'

# Identify differences between directories (possibly on different servers)
diff <(ssh server01 'cd config; find . -type f -exec md5sum {} \;| sort -k 2') <(ssh server02 'cd config;find . -type f -exec md5sum {} \;| sort -k 2')

# diff the same file in two directories.
diff {$path1,$path2}/file_to_diff

# Diff XML files
diffxml() { diff -wb <(xmllint format "$1") <(xmllint format "$2"); }

# Get IP address from domain
dig +short google.com

# diff 2 remote files
diff <(ssh user@host1 cat /path/to/file) <(ssh user@host2 cat /path/to/file2)

# Scan your LAN for unauthorized IPs
diff <(nmap -sP 192.168.1.0/24 | grep ^Host | sed 's/.appears to be up.//g' | sed 's/Host //g') auth.hosts | sed 's/[0-9][a-z,A-Z][0-9]$//' | sed 's/</UNAUTHORIZED IP -/g'

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Convert diff output to HTML ins/del
diff a.txt b.txt | grep -E '^(<|>)' | sed 's:^< \(.*\):<del style="color\:red; text-decoration\: none">- \1</del><br>:' | sed 's:^> \(.*\):<ins style="color\:green; text-decoration\: none">+ \1</ins><br>:'

# Compare copies of a file with md5
diff <(md5sum render_pack.zip| cut -d " " -f 1) <(md5sum /media/green/render_pack.zip| cut -d " " -f 1);echo $?

# Using commandoutput as a file descriptor
diff rpm_output_from_other_computer <(rpm -qa|sort)

# diff recursively, ignoring CVS control files
diff -x "*CVS*" -r <path-1> <path-2> [<path-3>]

# Check fstab volumes and volumes mounted.
diff <(cat /etc/fstab | grep vol | grep -v "^#" | awk '{print $1}') <(df -h | grep vol)

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# diff two css files to create an overriding css (e.g. for wordpress child themes)
diff -U99999 original.css modified.css  | awk '/^-/{next} {f=f"\n"$0} /^\+.*[^ ]/{yes=1} /}/ {if(yes){print f} f="";yes=0}'

# Perform a reverse DNS lookup
dig +short -x 127.0.0.1

# Basic Shell function die_msg
die_msg() { echo $@ >&2; exit -1; }

# Get your current Public IP
dig o-o.myaddr.l.google.com @ns1.google.com txt +short

# See which files differ in a diff
diff dir1 dir2 | diffstat

# Check if your domain name is suspectable to axfr attacks.
dig @somenameserver.net somedomainname.net axfr

# Display diffed files sidebyside, with minimal differences, using the full width of the terminal.
diff -dbByw $COLUMNS FILE1 FILE2

# Get parent directory path
dirname `pwd`

# find your public ip address easily
dig @resolver1.opendns.com myip.opendns.com | grep ^myip.opendns.com | tr '\t' : | cut -d: -f5

# Create patch file for two directories
diff -ru originDir updateDir > result.patch

# Copy all file differences to an existing mirror location
diff -Naur /source/path /target/path brief | awk '{print "cp " $2 " " $4}' | sh

# List all mounted drives and their accompanying partitions from OS X Terminal
diskutil list

# Check the MD5
diff -ua <(w3m -dump http://www.php.net/downloads.php|fgrep -A1 '5.2.15 (tar.bz2)'|awk '/md5:/{print $2}') <(md5sum php-5.2.15.tar.bz2|awk '{print $1}')

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# diff files ignoring comments and blank lines (lines starting with #)
diff -u <(grep -vE '^(#|$)' file1) <(grep -vE '^(#|$)' file2)

# gets the bare ip(s) of a domain
dig commandlinefu.com | sed -nr 's/^[^;].*?\s([.0-9]{7,15})$/\1/ p'

# Diff with Sections/Headers
diff -U 9999 file_a file_b | tail -n +3 | grep -P "^(\ Header|\-|\+)"

# Calculate comment density of shell scripts in a directory
dir=/rom; a=$(find $dir -name \*.sh -exec cat '{}' \; | egrep -cv '^[[:space:]]*#'); b=$(find $dir -name \*.sh -exec cat '{}' \; | egrep -c '^[[:space:]]*#'); echo $((a+b)) lines = ${a} sloc [$((a*100/(a+b)))%] + ${b} comments [$((b*100/(a+b)))%]

# print only answer section.
dig +noall +answer exsample.com

# Compares two source directories, one original and one post configure and deletes the differences in the source folder
diff ../source-dir.orig/ ../source-dir.post/ | grep "Only in" | sed -e 's/^.*\:.\(\<.*\>\)/\1/g' | xargs rm -r

# Print file list to CSV
dir -C -1 -N -RNCCI /dir/ > file.csv

# diff files ignoring comments and blank lines (lines starting with #)
diff -BI '^#' file{1,2}

# extracting the email-server's ip-address.
dig MX example.com +short | cut -d' ' -f2 | sed '1q;d' | xargs dig +short

# md5 checksum check
digest -a -v md5 <file-name>

# Compare a remote file with a local file
diff <(ssh $remote_site cat $file) $file

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Outgoing IP of server
dig +short @resolver1.opendns.com myip.opendns.com

# Get IP address from domain
dig +short <domain>

# Get IP address from domain
dig +short <domain>

# remove unnecessary architecture code from Mac OS X Universal binaries
ditto arch i386 doubleTwist.app doubleTwist_i386.app

# Compare directories via diff
diff -rq dirA dirB

# To help sort through differences in .txt files
diff *txt -u | less

# Create a RAM Disk in OSX
diskutil erasevolume HFS+ "ramdisk" `hdiutil attach -nomount ram://8000000`

# Diff two directories by finding and comparing the md5 checksums of their contents.
diff <(sort <(md5deep -r /directory/1/) | awk -F '/' '{print $1 $NF}') <(sort <(md5deep -r /directory/2/)  | awk -F '/' '{print $1 $NF}')

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Eavesdrop on your system
diff <(lsof -p 1234) <(sleep 10; lsof -p 1234)

# Determine what version of bind is running on a dns server.
dig -t txt -c chaos VERSION.BIND @<dns.server.com>

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# diff the outputs of two programs
diff <(exiftool img_1.jpg) <(exiftool img_2.jpg)

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Shell function to exit script with error in exit status and print optional message to stderr
die(){ result=$1;shift;[ -n "$*" ]&&printf "%s\n" "$*" >&2;exit $result;}

# Check reverse DNS
dig +short -x {ip}

# Get your outgoing IP address
dig +short myip.opendns.com @resolver1.opendns.com

# Compare two directory trees.
diff <(cd dir1 && find | sort) <(cd dir2 && find | sort)

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# find the difference between two nodes
diff <(ssh nx915000 "rpm -qa") <(ssh nx915001 "rpm -qa")

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# random xkcd comic
display "$(wget -q http://dynamic.xkcd.com/comic/random/ -O - | grep -Po '(?<=")http://imgs.xkcd.com/comics/[^"]+(png|jpg)')"

# Diff 2 file struct - Useful for branch diff and jars diff(uncompressed)
diff <(cd A; find -type f|xargs md5sum ) <(cd B; find -type f | xargs md5sum )

# Get MX records for a domain
dig foo.org mx +short

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Diff on two variables
diff <(echo "$a") <(echo "$b")

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# What is my public IP-address?
dig @208.67.222.222 myip.opendns.com

# diff files while disregarding indentation and trailing white space
diff -b $file1 $file2 # GNU Tools

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Lookup your own IPv4 address
dig +short myip.opendns.com @resolver1.opendns.com

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Find usb device
diff <(lsusb) <(sleep 3s && lsusb)

# Close shell keeping all subprocess running
disown -a && exit

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Get the list of root nameservers for a given TLD
dig +short NS org.

# Perform a reverse DNS lookup
dig -x 74.125.45.100

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Generate diff of first 500 lines of two files
diff <(head -500 product-feed.xml) <(head -500 product-feed.xml.old)

# Trace a DNS query from root to the authoritive servers.
dig +trace google.com

# Get your external IP address if your machine has a DNS entry
dig +short $HOSTNAME

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# diff two sorted files
diff <(sort file1.txt) <(sort file2.txt)

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Diff remote webpages using wget
diff <(wget -q -O - URL1) <(wget -q -O - URL2)

# diff two unsorted files without creating temporary files
diff <(sort file1) <(sort file2)

# Get IP from hostname
dig +short google.com

# Compare two directories
diff suppress-common-lines -y <(cd path_to_dir1; find .|sort) <(cd path_to_dir2; find .|sort)

# diff output of two commands
diff <(tail -10 file1) <(tail -10 file2)

# Get your current Public IP
dig myip.opendns.com @Resolver1.opendns.com +short

# Check if x509 certificate file and rsa private key match
diff <(openssl x509 -noout -modulus -in server.crt ) <( openssl rsa -noout -modulus -in server.key )

# Create patch file for two directories
diff -r -u originDir updateDir > result.patch

# Compare two directory trees.
diff <(cd dir1 && find . | sort) <(cd dir2 && find . | sort)

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Recursively compare two directories and output their differences on a readable format
diff -urp /originaldirectory /modifieddirectory

# Compare a remote file with a local file
diff <(ssh user@host cat /path/to/remotefile) /path/to/localfile

# Probably, most frequent use of diff
diff -Naur strip-trailing-cr

# Compare a remote dir with a local dir
diff -y <(ssh user@host  find /boot|sort) <(find /boot|sort)

# External IP (raw data)
dig +short myip.opendns.com @resolver1.opendns.com

# Lookup hostname for IP address
dig +short -x <ip-address>

# Check if your ISP is intercepting DNS queries
dig +short which.opendns.com txt @208.67.220.220

# Word-based diff on reformatted text files
diff -uw <(fmt -1 {file1, file2})

# diff will usually only take one file from STDIN. This is a method to take the result of two streams and compare with diff. The example I use to compare two iTunes libraries but it is generally applicable.
diff <(cd /path-1; find . -type f -print | egrep -i '\.m4a$|\.mp3$') <(cd /path-2; find . f -print | egrep -i '\.m4a$|\.mp3$')

# Get just the IP for a hostname
dig hostname a +short

# diff two svn repos ignoring spaces,tabs and svnfiles
diff -wubBEr -x .svn dirA dirB

# diff files while disregarding indentation and trailing white space
diff <(perl -wpl -e '$_ =~ s/^\s+|\s+$//g ;' file1) <(perl -wpl -e '$_ =~ s/^\s+|\s+$//g ;' file2)

# Check SSH public and private keys matching
diff <(ssh-keygen -y -f ~/.ssh/id_rsa) <(cut -d' ' -f1,2 ~/.ssh/id_rsa.pub)

# Display Dilbert strip of the day
display http://dilbert.com$(curl -s dilbert.com|grep -Po '"\K/dyn/str_strip(/0+){4}/.*strip.[^\.]*\.gif')

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Show permissions of current directory and all directories upwards to /
dir=$(pwd); while [ ! -z "$dir" ]; do ls -ld "$dir"; dir=${dir%/*}; done; ls -ld /

# diff process output
diffprocess () { diff <($*) <(sleep  3; $*); }

# Diff files on two remote hosts.
diff <(ssh alice cat /etc/apt/sources.list) <(ssh bob cat /etc/apt/sources.list)

# Check reverse DNS
dig -x {IP}

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# diff directories, quick cut and paste to view the changes
diff -q dir1/ dir2/ | grep differ | awk '{ print "vimdiff " $2 " " $4 }'

# Diff two directories by finding and comparing the md5 checksums of their contents.
diff <(sort <(md5deep -r /directory/1/) |cut -f1 -d' ') <(sort <(md5deep -r /directory/2/) |cut -f1 -d' ')

# Diff two directories by finding and comparing the md5 checksums of their contents.
diff <(sort <(md5deep -b -r /directory/1/) ) <(sort <(md5deep -b -r /directory/2/)

# Check the hard disk vendor and model on Apple Mac
diskutil info /dev/disk0 | grep 'Device / Media Name'

# Identify differences between directories (possibly on different servers)
diff <(ssh server01 'cd config; find . -type f -exec md5sum {} \;| sort -k 2') <(ssh server02 'cd config;find . -type f -exec md5sum {} \;| sort -k 2')

# diff the same file in two directories.
diff {$path1,$path2}/file_to_diff

# Diff XML files
diffxml() { diff -wb <(xmllint format "$1") <(xmllint format "$2"); }

# Get IP address from domain
dig +short google.com

# diff 2 remote files
diff <(ssh user@host1 cat /path/to/file) <(ssh user@host2 cat /path/to/file2)

# Scan your LAN for unauthorized IPs
diff <(nmap -sP 192.168.1.0/24 | grep ^Host | sed 's/.appears to be up.//g' | sed 's/Host //g') auth.hosts | sed 's/[0-9][a-z,A-Z][0-9]$//' | sed 's/</UNAUTHORIZED IP -/g'

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Convert diff output to HTML ins/del
diff a.txt b.txt | grep -E '^(<|>)' | sed 's:^< \(.*\):<del style="color\:red; text-decoration\: none">- \1</del><br>:' | sed 's:^> \(.*\):<ins style="color\:green; text-decoration\: none">+ \1</ins><br>:'

# Compare copies of a file with md5
diff <(md5sum render_pack.zip| cut -d " " -f 1) <(md5sum /media/green/render_pack.zip| cut -d " " -f 1);echo $?

# Using commandoutput as a file descriptor
diff rpm_output_from_other_computer <(rpm -qa|sort)

# diff recursively, ignoring CVS control files
diff -x "*CVS*" -r <path-1> <path-2> [<path-3>]

# Check fstab volumes and volumes mounted.
diff <(cat /etc/fstab | grep vol | grep -v "^#" | awk '{print $1}') <(df -h | grep vol)

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# diff two css files to create an overriding css (e.g. for wordpress child themes)
diff -U99999 original.css modified.css  | awk '/^-/{next} {f=f"\n"$0} /^\+.*[^ ]/{yes=1} /}/ {if(yes){print f} f="";yes=0}'

# Perform a reverse DNS lookup
dig +short -x 127.0.0.1

# Basic Shell function die_msg
die_msg() { echo $@ >&2; exit -1; }

# Get your current Public IP
dig o-o.myaddr.l.google.com @ns1.google.com txt +short

# See which files differ in a diff
diff dir1 dir2 | diffstat

# Check if your domain name is suspectable to axfr attacks.
dig @somenameserver.net somedomainname.net axfr

# Display diffed files sidebyside, with minimal differences, using the full width of the terminal.
diff -dbByw $COLUMNS FILE1 FILE2

# Get parent directory path
dirname `pwd`

# find your public ip address easily
dig @resolver1.opendns.com myip.opendns.com | grep ^myip.opendns.com | tr '\t' : | cut -d: -f5

# Create patch file for two directories
diff -ru originDir updateDir > result.patch

# Copy all file differences to an existing mirror location
diff -Naur /source/path /target/path brief | awk '{print "cp " $2 " " $4}' | sh

# List all mounted drives and their accompanying partitions from OS X Terminal
diskutil list

# Check the MD5
diff -ua <(w3m -dump http://www.php.net/downloads.php|fgrep -A1 '5.2.15 (tar.bz2)'|awk '/md5:/{print $2}') <(md5sum php-5.2.15.tar.bz2|awk '{print $1}')

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# diff files ignoring comments and blank lines (lines starting with #)
diff -u <(grep -vE '^(#|$)' file1) <(grep -vE '^(#|$)' file2)

# gets the bare ip(s) of a domain
dig commandlinefu.com | sed -nr 's/^[^;].*?\s([.0-9]{7,15})$/\1/ p'

# Diff with Sections/Headers
diff -U 9999 file_a file_b | tail -n +3 | grep -P "^(\ Header|\-|\+)"

# Calculate comment density of shell scripts in a directory
dir=/rom; a=$(find $dir -name \*.sh -exec cat '{}' \; | egrep -cv '^[[:space:]]*#'); b=$(find $dir -name \*.sh -exec cat '{}' \; | egrep -c '^[[:space:]]*#'); echo $((a+b)) lines = ${a} sloc [$((a*100/(a+b)))%] + ${b} comments [$((b*100/(a+b)))%]

# print only answer section.
dig +noall +answer exsample.com

# Compares two source directories, one original and one post configure and deletes the differences in the source folder
diff ../source-dir.orig/ ../source-dir.post/ | grep "Only in" | sed -e 's/^.*\:.\(\<.*\>\)/\1/g' | xargs rm -r

# Print file list to CSV
dir -C -1 -N -RNCCI /dir/ > file.csv

# diff files ignoring comments and blank lines (lines starting with #)
diff -BI '^#' file{1,2}

# extracting the email-server's ip-address.
dig MX example.com +short | cut -d' ' -f2 | sed '1q;d' | xargs dig +short

# md5 checksum check
digest -a -v md5 <file-name>

# Compare a remote file with a local file
diff <(ssh $remote_site cat $file) $file

# Query Wikipedia via console over DNS
dig +short txt <keyword>.wp.dg.cx

# Close shell keeping all subprocess running
disown -a && exit

# Outgoing IP of server
dig +short @resolver1.opendns.com myip.opendns.com

# Get IP address from domain
dig +short <domain>

# Compare directories via diff
diff -rq dirA dirB
