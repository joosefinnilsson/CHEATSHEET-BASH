# find recently added files on OS X
mdfind 'kMDItemFSCreationDate >= $time.this_month'

# make a zip file containing all files with the openmeta tag "data"
mdfind "tag:data" > /tmp/data.txt ; zip -r9@ ~/Desktop/data.zip < /tmp/data.txt

# Create a directory and change into it at the same time
md () { mkdir -p "$@" && cd "$@"; }

# Verify MD5SUMS but only print failures
md5sum check MD5SUMS | grep -v ": OK"

# cymru malware check
md5sum filename | ncat hash.cymru.com 43

# Export MS Access mdb files to csv
mdb-export -H -I -R database.mdb table >table.sql

# Validating a file with checksum
md5 myfile | awk '{print $4}' | diff <(echo "c84fa6b830e38ee8a551df61172d53d7") -

# Mount a temporary ram partition
mdmfs -s 256m md /mnt

# Quickly generate an MD5 hash for a text string using OpenSSL
md5sum<<<'text to be encrypted'

# Determine status of a RAID write-intent bitmap
mdadm -X /tmp1/md2bitmap

# rename a file to its md5sum
md5sum * | sed 's/^\(\w*\)\s*\(.*\)/\2 \1/' | while read LINE; do mv $LINE; done

# Generate MD5 hash for a string
md5sum <<<"test"

# md5sum
md5sum filename

# Assemble version 0.90 metadata RAID autodetect like in boot
mdadm assemble scan config /proc/partitions

# Creates an old version raid1 with 3 mirror and 3 spares, from partitions of the same disk
mdadm create /dev/md0 metadata=0.90 level=1 raid-devices=3 spare-devices=3 /dev/sdb[5-9] /dev/sdb10

# Create a directory and change into it at the same time
md () { mkdir -p "$@" && cd "$@"; }

# Verify MD5SUMS but only print failures
md5sum check MD5SUMS | grep -v ": OK"

# cymru malware check
md5sum filename | ncat hash.cymru.com 43

# Export MS Access mdb files to csv
mdb-export -H -I -R database.mdb table >table.sql

# Validating a file with checksum
md5 myfile | awk '{print $4}' | diff <(echo "c84fa6b830e38ee8a551df61172d53d7") -

# Mount a temporary ram partition
mdmfs -s 256m md /mnt

# Quickly generate an MD5 hash for a text string using OpenSSL
md5sum<<<'text to be encrypted'

# Determine status of a RAID write-intent bitmap
mdadm -X /tmp1/md2bitmap

# rename a file to its md5sum
md5sum * | sed 's/^\(\w*\)\s*\(.*\)/\2 \1/' | while read LINE; do mv $LINE; done

# Generate MD5 hash for a string
md5sum <<<"test"

# md5sum
md5sum filename

# Assemble version 0.90 metadata RAID autodetect like in boot
mdadm assemble scan config /proc/partitions

# Creates an old version raid1 with 3 mirror and 3 spares, from partitions of the same disk
mdadm create /dev/md0 metadata=0.90 level=1 raid-devices=3 spare-devices=3 /dev/sdb[5-9] /dev/sdb10
