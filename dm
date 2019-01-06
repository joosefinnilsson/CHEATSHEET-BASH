# Btrfs: Find file names with checksum errors
dmesg | grep -Po 'csum failed ino\S* \d+' | sort | uniq | xargs -n 3 find / -inum 2> /dev/null

# Dispaly a bunch of Info. on Foundry (Brocade) RX and MLX BigIron L3 (routers & switches)
dm ?

# get cpu info from dmesg
dmesg | grep cpu

# Show errors in the kernel ring buffer
dmesg -xT -l err,crit,emerg

# Detect if we are running on a VMware virtual machine
dmidecode | awk '/VMware Virtual Platform/ {print $3,$4,$5}'

# Getting information about model no. of computer
dmidecode | grep -i prod

# Check motherboard manufacturer, product name, version and serial number
dmidecode | grep -i 'Base Board Information' -A4 -B1

# dmesg with colored human-readable dates
dmesg -T|sed -e 's|\(^.*'`date +%Y`']\)\(.*\)|\x1b[0;34m\1\x1b[0m - \2|g'

# Display Motherboard Info
dmidecode -t baseboard

# Get information about memory modules
dmidecode type memory

# Get info on RAM Slots and Max RAM.
dmidecode 2.9 | grep "Maximum Capacity"; dmidecode -t 17 | grep Size

# Shell function to create a directory named with the current date, in the format YYYYMMDD.
dmd () { ( if [ "$1"x != "x" ]; then cd $1; fi; mkdir `date +%Y%m%d` ) }

# Resolve the "all display buffers are busy, please try later" error on a Foundry
dm display-buffer reset

# Check SATA link speed.
dmesg | grep -i sata | grep 'link up'

# Display BIOS Information
dmidecode -t bios

# Map the slot of an I/O card to its PCI bus address
dmidecode type 9 |egrep 'Bus Address|Designation'

# Btrfs: Find file names with checksum errors
dmesg | grep -Po 'csum failed ino\S* \d+' | awk '{print $4}' | sort -u | xargs -n 1 find / -inum 2> /dev/null

# View Manufacturer, Model and Serial number of the equipment using dmidecode
dmidecode -t system

# Get a server's serial number or Dell service tag from within linux
dmidecode -s system-serial-number

# dmesg pipe less with color
dmesg -L=always | less -r

# See your current RAM frequency
dmidecode -t 17 | awk -F":" '/Speed/ { print $2 }'

# easiest way to get kernel version without uname
dmesg

# Show errors in the kernel ring buffer
dmesg -xT -l err,crit,emerg

# Detect if we are running on a VMware virtual machine
dmidecode | awk '/VMware Virtual Platform/ {print $3,$4,$5}'

# Getting information about model no. of computer
dmidecode | grep -i prod

# Check motherboard manufacturer, product name, version and serial number
dmidecode | grep -i 'Base Board Information' -A4 -B1

# dmesg with colored human-readable dates
dmesg -T|sed -e 's|\(^.*'`date +%Y`']\)\(.*\)|\x1b[0;34m\1\x1b[0m - \2|g'

# Display Motherboard Info
dmidecode -t baseboard

# Get information about memory modules
dmidecode type memory

# Get info on RAM Slots and Max RAM.
dmidecode 2.9 | grep "Maximum Capacity"; dmidecode -t 17 | grep Size

# Shell function to create a directory named with the current date, in the format YYYYMMDD.
dmd () { ( if [ "$1"x != "x" ]; then cd $1; fi; mkdir `date +%Y%m%d` ) }

# Resolve the "all display buffers are busy, please try later" error on a Foundry
dm display-buffer reset

# Check SATA link speed.
dmesg | grep -i sata | grep 'link up'

# Display BIOS Information
dmidecode -t bios

# Map the slot of an I/O card to its PCI bus address
dmidecode type 9 |egrep 'Bus Address|Designation'

# Btrfs: Find file names with checksum errors
dmesg | grep -Po 'csum failed ino\S* \d+' | awk '{print $4}' | sort -u | xargs -n 1 find / -inum 2> /dev/null

# View Manufacturer, Model and Serial number of the equipment using dmidecode
dmidecode -t system

# Get a server's serial number or Dell service tag from within linux
dmidecode -s system-serial-number

# dmesg pipe less with color
dmesg -L=always | less -r

# See your current RAM frequency
dmidecode -t 17 | awk -F":" '/Speed/ { print $2 }'
