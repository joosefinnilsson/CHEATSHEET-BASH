# Remove the first and the latest caracter of a string
var=:foobar:; echo ${var:1:-1}

# Open all files with a regular expression in vim
vim $(grep [REGULAR_EXPRESSION] -R * | cut -d":" -f1 | uniq)

# find/edit your forgotten buddy pounces for pidgin
vim ~/.purple/pounces.xml

# Display list of locked AFS volumes (if any)
vos listvldb | agrep LOCKED -d RWrite | grep RWrite: | awk -F: '{print $2}' | awk '{printf("%s ",$1)} END {printf("\n")}'

# Find and edit multiple files given a regex in vim buffers
vim `find . -iname '*.php'`

# Visualizing system performance data
vmstat 2 10 | awk 'NR > 2 {print NR, $13}' | gnuplot -e "set terminal png;set output 'v.png';plot '-' u 1:2 t 'cpu' w linespoints;"

# PlayTweets from the command line
vlc $(curl -s http://twitter.com/statuses/user_timeline/18855500.rss|grep play|sed -ne '/<title>/s/^.*\(http.*\)<\/title/\1/gp'|awk '{print $1}')

# make comments invisible when editing a file
vim -c'highlight Comment ctermfg=white' my.conf

# Look at logs startring at EOF
view + LOGFILE

# Print full LVM LV paths (for copy&paste)
vgdisplay -v 2>/dev/null | grep "^  LV Name" | while read A B LVDEV; do echo $LVDEV; done

# vmstat/iostat with timestamp
vmstat 1 | awk '{now=strftime("%Y-%m-%d %T "); print now $0}'

# Edit all source files of project with vim, each on separate tab
vim -p `ls *.java *.xml *.txt *.bnd 2>/dev/null`

# use vim to get colorful diff output
vimdiff file1 file2

# List the vms in Virtualbox and start them using dmenu
vboxmanage startvm type gui $(vboxmanage list vms | sed -e 's/"//g' | cut -f1 -d ' ' | dmenu -i -p "VMs")

# VIM version 7: edit in tabs
vim -p file1 file2 ...

# Script to rip the audio from the youtube video you have open in firefox
video=$(ls /tmp | grep -e Flash\w*); ffmpeg -i /tmp/$video -f mp3 -ab 192k ~/ytaudio.mp3

# Open files in tabs with vim
vim -p file1 file2 [...]

# convert vdi to vmdk (virtualbox v3.2 hard disk conversion to vmware hard disk format)
vboxmanage clonehd format VMDK <source image|uuid> <destination image>

# Edit a file using vi or vim in read-only mode
vi -R filename

# Securely seeing the password file over the network
vipw

# Securely look at the group file over the network
vigr

# Securely edit the sudo file over the network
visudo

# How many Non-free software is on your machine ?
vrms

# Open file with sudo when there is no write-permission
vi2() {for i in $@; do [ -f "$i" ] && [ ! -w "$i" ] && sudo vim $@ && return; done; vim $@}

# bash / vim workflow
vim -

# open two files in vim
vim file1 file2

# Echo a command, then execute it
v () { echo "$@"; "$@"; }

# Go to a specified line in a file
vim +143 filename.txt

# read txt or txt.gz files
vim txt.gz

# Edit Crontab
vi ~/.crontab && crontab ~/.crontab

# Search for the file and open in vi editor.
vifind() { vi `find . -name "$1"` }

# Open a file using vim in read only (like less)
vim -R /etc/passwd

# The single most useful thing in bash
vim ~/.inputrc

# Edit the Last Changed File
vim $( ls -t | head -n1 )

# vimdiff local and remote files via ssh
vimdiff /path/to/file scp://remotehost//path/to/file

# Extract dd-image from VirtualBox VDI container and mount it
vditool COPYDD my.vdi my.dd ; sudo mount -t ntfs -o ro,noatime,noexex,loop,offset=32256 my.dd ./my_dir

# open two files on top of each other in vim (one window, two panes)
vim -o file1 file2

# Open files in a split windowed Vim
vim -o file1 file2...

# Run a command for a given time
very_long_command& sleep 10; kill $!

# Remove a range of lines from a file
vi +'<start>,<end>d' +wq <filename>

# Replace Solaris vmstat numbers with human readable format
vmstat 1 10 | /usr/xpg4/bin/awk -f ph-vmstat.awk

# Edit a file inside a compressed archive without extracting it
vim some-archive.tar.gz

# Opens vi/vim at pattern in file
vi +/pattern [file]

# Virtual Console lock program
vlock

# Use Vim to convert text to HTML.
vimhtml() { [[ -f "$1" ]] || return 1; vim +'syn on | run! syntax/2html.vim | wq | q' "$1";}

# Open (in vim) all modified files in a git repository
vim `git status porcelain | sed -ne 's/^ M //p'`

# Edit file(s) that has been just listed
vi `!!`

# Add Password Protection to a file your editing in vim.
vim -x <FILENAME>

# Find files containing string and open in vim
vim $(grep test *)

# vimdiff to remotehost
vimdiff tera.py <(ssh -A testserver "cat tera.py")

# Add Password Protection to a file your editing in vim.
vim -x <FILENAME>

# Add Password Protection to a file your editing in vim.
vim -x <FILENAME>

# Add Password Protection to a file your editing in vim.
vim -x <FILENAME>

# Add Password Protection to a file your editing in vim.
vim -x <FILENAME>

# Speed up or slow down video (and audio)
videospeed() { vname="$1"; speedc="$2"; vs=$(python3 -c "print(1/$speedc)"); aspeed=$(python3 -c "print(1*$speedc)"); ffmpeg -i "$vname" -filter:a "atempo=$aspeed" -filter:v "setpts=$vs*PTS" "${3:-converted_$1}"; }

# Watch your freebox flux, through a other internet connection (for French users)
vlc -vvv http://mafreebox.freebox.fr/freeboxtv/playlist.m3u sout '#transcode{vcodec=mp2v,vb=384,scale=0.5,acodec=vorbis,ab=48,channels=1}:standard{access=http,mux=ogg,url=:12345}' -I ncurses 2> /dev/null

# vim multiple files at one time, split vertically.
vim -O file1 file2

# Open (in vim) all modified files in a git repository
vim `git diff name-only`

# Resize A Mounted EXT3 File System
v=/dev/vg0/lv0; lvextend -L+200G $v && resize2fs $v

# Find all files currently open in Vim and/or gVim
vim -r 2>&1 | grep '\.sw.' -A 5 | grep 'still running' -B 5

# Make a high definition VNC
vncserver -nohttpd -name hidef-server -depth 24 -geometry 1440x900

# Delete C style comments using vim
vim suite.js -c '%s!/\*\_.\{-}\*/!!g'

# Create a simple video contact sheet using the vcs bash script
vcs -c 3 -H 220 -n 24 -dt -ds -dp -j anonymous -O bg_heading=black -O bg_sign=black -O fg_heading=white -O fg_heading=white -O fg_sign=white -O fg_title=white -O font_heading=DejaVu-Sans-Bold -O quality=70

# get colorful side-by-side diffs of files in svn with vim
vimdiff <(svn cat "$1") "$1"

# Simple way to envoke a secure vnc session through ssh enabled router.
vncviewer -via root@your.dyndns.com 192.168.1.1

# vi a remote file
vi scp://username@host//path/to/somefile

# vi a remote file with port
vi scp://username@host:12345//path/to/somefile

# start vim in diff mode
vimdiff file{1,2}

# vi a new file with execution mode
vix(){ vim +'w | set ar | silent exe "!chmod +x %" | redraw!' $@; }

# List of all vim features
vim version | grep -P '^(\+|\-)' | sed 's/\s/\n/g' | grep -Pv '^ ?$'

# Colored diff ( via vim ) on 2 remotes files on your local computer.
vimdiff scp://root@server-foo.com//etc/snmp/snmpd.conf scp://root@server-bar.com//etc/snmp/snmpd.conf

# Vlc ncurses mode browsing local directorys.
vlc -I ncurses <MEDIA_DIR>

# Edit 2 or more files in vim using vim -d
vim -d '+diffoff!' file1 file2

# Load all files (including in subdirs), whose name matches a substring, into Vim
vim $(find . ! -path \*.svn\* -type f -iname \*foo\*)

# Edit 2 or more files in vim using vim -d
vim -O file1 file2

# Start vim without initialization
vim -u NONE yourfile

# Update your journal
vi ~/journal/$(date +%F)

# Edit a file in vim (at the first error) if it is not well formed xml.
vimlint(){ eval $(xmllint noout "$1" 2>&1 | awk -F: '/parser error/{print "vim \""$1"\" +"$2; exit}'); }

# Compare a remote file with a local file
vimdiff scp://[user@]host1/<file> scp://[user@]host2/<file>

# Stream the latest offering from your fave netcasts/podcasts
vlc  one-instance playlist-enqueue -q $(while read netcast; do wget -q $netcast -O - |grep enclosure | tr '\r' '\n' | tr \' \" | sed -n 's/.*url="\([^"]*\)".*/\1/p'|head -n1; done <netcast.txt)

# Go to the Nth line of file [text editor]
vi +4 /etc/mtab

# Edit a script that's somewhere in your path.
vim `which <scriptname>`

# Using vim to save and run your python script.
vim ... :nmap <F5> :w^M:!python %<CR>

# Remove a line from a file using sed (useful for updating known SSH server keys when they change)
vi +<lineNumber>d +wq <filename>

# Remove a range of lines from a file
vi +{<end>..<start>}d +wq <filename>

# Remove a range of lines from a file
vi +START,ENDd +wq sample.txt

# Get disk quota usage openvz using vzlist
vzlist -a -H -o hostname,diskspace,diskspace.s,veid  | awk '{ printf( "%2.f%\t%s\t%s\n"), $2*100/$3, $4, $1}' | sort -r

# Stream your desktop to a remote machine.
vlc screen:// :screen-fps=30 :screen-caching=100 sout '#transcode{vcodec=mp4v,vb=4096,acodec=mpga,ab=256,scale=1,width=1280,height=800}:rtp{dst=192.168.1.2,port=1234,access=udp,mux=ts}'

# Pretty man pages under X
vman(){ T=/tmp/$$.pdf;man -t $1 |ps2pdf - >$T; xpdf $T; rm -f $T; }

# Run a command, redirecting output to a file, then edit the file with vim.
vimcmd() { $1 > $2 && vim $2; }

# Load your [git-controlled] working files into the vi arglist.
vim $(git diff origin/master name-only)

# Edit the /etc/sudoers config file the right way.
visudo

# Get the SUM of visual blocked digits in vim
vmap <c-a> y:$<CR>o<Esc>map<Esc>:'a,$!awk '{sum+=$0}END{print "SUM:" sum}'<CR>dd'>p

# Substrings a variable
var='123456789'; echo ${var:<start_pos>:<offset>}

# Open Vim with two windows
vim -c new myfile

# Automatically connect to a host with ssh once it is online
var=host ;while ! nc -zw 1 $var 22;do sleep 1; done ; ssh user@$var

# Grep across a directory and open matching files in vim (one tab per file)
vim -p `grep -r PATTERN TARGET_DIR | cut -f1 -d: | sort | uniq | xargs echo -n`

# run vmware virtual machine from the command line without the gui or X session
vmrun start /path/to/virtual_machine.vmx nogui

# get a list of running virtual machines from the command line (vmware)
vmrun list

# Open (in vim) all modified files in a git repository
vim `git status | grep modified | awk '{print $3}'`

# open two files side by side in vim (one window, two panes)
vim -O file1 file2

# Turn your monitor on or off or put into standby from the command line.
vbetool dpms [on|off|standby]

# This little command edits your gitignore from anywhere in your repo
vim $(git rev-parse show-toplevel)/.gitignore

# View latest apache access log
view `ls -1 access_log.* | tail -n 1`

# display embeded comments for every opt, usefull for auto documenting your script
vim -n -es -c 'g/# CommandParse/+2,/^\s\+esac/-1 d p | % d | put p | %<' -c 'g/^\([-+]\+[^)]\+\))/,/^\(\s\+[^- \t#]\|^$\)/-1 p' -c 'q!' $0

# Compare local and remote files using SCP/VIM/DIFF
vimdiff local_dir1/local_file.xml scp://user@remote_host//remote_absolute_location/remote_file.xml

# Flush purge or clear all Varnish Cache (version >= 4)
varnishadm "ban req.url ~ ."

# vi a remote file with port
vim sftp://[user@]host.domain.tld:[port]/[path/][file]

# Open multiple files from STDIN with VIM
vim -p $(complicated command to list the files you want)

# Edit a file on a remote host using vim
vim scp://username@host//path/to/somefile

# Edit a file on a remote host using vim
vim scp://username@host//path/to/somefile

# Open a file using vim in read only (like less)
view /file/name

# Halt all running vagrants (virtualboxes)
vboxmanage list runningvms | cut -d \" -f 2 | xargs -I % vboxmanage controlvm % poweroff

# Opens up cached flash plugin video files(linux)
vlc $(for f in /proc/$(pgrep -f libflashplayer.so |head -n 1)/fd/*; do ;if  $(file ${f} |grep -q "broken symbolic link to \`/tmp/FlashXX"); then echo  ${f};fi;done)

# Compare a file with the output of a command or compare the output of two commands
vimdiff foo.c <(bzr cat -r revno:-2 foo.c)

# edit list of files in last command
vi `!!`

# use !$ to retrieve filename used with last command
vim !$

# get the result of database query in vertical way (Column=Value)
vsqlplus "SELECT * FROM TABLE_NAME;"

# Display a block of text with vim with offset, like with AWK
vim -e -s -c 'g/start_pattern/+1,/stop_pattern/-1 p' -cq file.txt

# To get you started!
vimtutor

# Quick and dirty version control for one file
v () { ( IFS=$'\n'; suf="_versions"; mkdir -p "$1$suf"; nr=`ls "$1$suf" | wc -l`; nr=`printf "%02d" $(($nr + 1))`; cp "$1" "$1$suf/v${nr}_$1" ) }

# Compare a remote file with a local file
vimdiff <file> scp://[<user>@]<host>/<file>

# Get the information about the internet usage from the commandline.
vnstat

# Find, Replace, Write & Remove First 5 Lines
variable="foo" && sed 's/bar/'$variable'/g' $variable.conf >> $variable.temp && sed '1,5d' $variable.temp && mv $variable.temp $variable.conf

# Quickly write and run a C program.
vim test.c && gcc -x c -o a.out test.c && ./a.out && rm a.out test.c

# Watch Weather Channel live video stream without a browser
vlc mms://twcilivewm.fplive.net/twcilive-live/twci_350

# [Ubuntu] Create a Python virtualenv
virtualenv no-site-packages distribute -p /usr/bin/python3.3 ~/.virtualenvs/pywork3

# Format source code noninteractively (possibly en masse) using vim's formatting functionality
vim +"bufdo norm gg=G" +wa +qa FILES

# edit a executable script
vie(){vi $(which $1)}

# Quickly search OpenVZ container by IP and enter it
vzctl enter `vzlist -a | grep $CONTAINER_IP 2 | awk '{ print $1}'`

# Open (in vim) all modified files in a git repository
vim -p `git porcelain | awk {print $2}`

# Remove the first and the latest caracter of a string
var=:foobar:; echo ${var:1:-1}

# vmstat/iostat with timestamp
vmstat 1 | awk '{now=strftime("%Y-%m-%d %T "); print now $0}'

# VIM version 7: edit in tabs
vim -p file1 file2 ...

# Edit the Last Changed File
vim $( ls -t | head -n1 )

# vimdiff local and remote files via ssh
vimdiff /path/to/file scp://remotehost//path/to/file

# Extract dd-image from VirtualBox VDI container and mount it
vditool COPYDD my.vdi my.dd ; sudo mount -t ntfs -o ro,noatime,noexex,loop,offset=32256 my.dd ./my_dir

# open two files on top of each other in vim (one window, two panes)
vim -o file1 file2

# Open files in a split windowed Vim
vim -o file1 file2...

# Run a command for a given time
very_long_command& sleep 10; kill $!

# Remove a range of lines from a file
vi +'<start>,<end>d' +wq <filename>

# Replace Solaris vmstat numbers with human readable format
vmstat 1 10 | /usr/xpg4/bin/awk -f ph-vmstat.awk

# Edit a file inside a compressed archive without extracting it
vim some-archive.tar.gz

# Opens vi/vim at pattern in file
vi +/pattern [file]

# Virtual Console lock program
vlock

# Use Vim to convert text to HTML.
vimhtml() { [[ -f "$1" ]] || return 1; vim +'syn on | run! syntax/2html.vim | wq | q' "$1";}

# Open (in vim) all modified files in a git repository
vim `git status porcelain | sed -ne 's/^ M //p'`

# Edit file(s) that has been just listed
vi `!!`

# Add Password Protection to a file your editing in vim.
vim -x <FILENAME>

# Find files containing string and open in vim
vim $(grep test *)

# vimdiff to remotehost
vimdiff tera.py <(ssh -A testserver "cat tera.py")

# Add Password Protection to a file your editing in vim.
vim -x <FILENAME>

# Add Password Protection to a file your editing in vim.
vim -x <FILENAME>

# Add Password Protection to a file your editing in vim.
vim -x <FILENAME>

# Speed up or slow down video (and audio)
videospeed() { vname="$1"; speedc="$2"; vs=$(python3 -c "print(1/$speedc)"); aspeed=$(python3 -c "print(1*$speedc)"); ffmpeg -i "$vname" -filter:a "atempo=$aspeed" -filter:v "setpts=$vs*PTS" "${3:-converted_$1}"; }

# Watch your freebox flux, through a other internet connection (for French users)
vlc -vvv http://mafreebox.freebox.fr/freeboxtv/playlist.m3u sout '#transcode{vcodec=mp2v,vb=384,scale=0.5,acodec=vorbis,ab=48,channels=1}:standard{access=http,mux=ogg,url=:12345}' -I ncurses 2> /dev/null

# vim multiple files at one time, split vertically.
vim -O file1 file2

# Open (in vim) all modified files in a git repository
vim `git diff name-only`

# Resize A Mounted EXT3 File System
v=/dev/vg0/lv0; lvextend -L+200G $v && resize2fs $v

# Find all files currently open in Vim and/or gVim
vim -r 2>&1 | grep '\.sw.' -A 5 | grep 'still running' -B 5

# Make a high definition VNC
vncserver -nohttpd -name hidef-server -depth 24 -geometry 1440x900

# Delete C style comments using vim
vim suite.js -c '%s!/\*\_.\{-}\*/!!g'

# Create a simple video contact sheet using the vcs bash script
vcs -c 3 -H 220 -n 24 -dt -ds -dp -j anonymous -O bg_heading=black -O bg_sign=black -O fg_heading=white -O fg_heading=white -O fg_sign=white -O fg_title=white -O font_heading=DejaVu-Sans-Bold -O quality=70

# get colorful side-by-side diffs of files in svn with vim
vimdiff <(svn cat "$1") "$1"

# Simple way to envoke a secure vnc session through ssh enabled router.
vncviewer -via root@your.dyndns.com 192.168.1.1

# vi a remote file
vi scp://username@host//path/to/somefile

# vi a remote file with port
vi scp://username@host:12345//path/to/somefile

# start vim in diff mode
vimdiff file{1,2}

# vi a new file with execution mode
vix(){ vim +'w | set ar | silent exe "!chmod +x %" | redraw!' $@; }

# List of all vim features
vim version | grep -P '^(\+|\-)' | sed 's/\s/\n/g' | grep -Pv '^ ?$'

# Colored diff ( via vim ) on 2 remotes files on your local computer.
vimdiff scp://root@server-foo.com//etc/snmp/snmpd.conf scp://root@server-bar.com//etc/snmp/snmpd.conf

# Vlc ncurses mode browsing local directorys.
vlc -I ncurses <MEDIA_DIR>

# Edit 2 or more files in vim using vim -d
vim -d '+diffoff!' file1 file2

# Load all files (including in subdirs), whose name matches a substring, into Vim
vim $(find . ! -path \*.svn\* -type f -iname \*foo\*)

# Edit 2 or more files in vim using vim -d
vim -O file1 file2

# Start vim without initialization
vim -u NONE yourfile

# Update your journal
vi ~/journal/$(date +%F)

# Edit a file in vim (at the first error) if it is not well formed xml.
vimlint(){ eval $(xmllint noout "$1" 2>&1 | awk -F: '/parser error/{print "vim \""$1"\" +"$2; exit}'); }

# Compare a remote file with a local file
vimdiff scp://[user@]host1/<file> scp://[user@]host2/<file>

# Stream the latest offering from your fave netcasts/podcasts
vlc  one-instance playlist-enqueue -q $(while read netcast; do wget -q $netcast -O - |grep enclosure | tr '\r' '\n' | tr \' \" | sed -n 's/.*url="\([^"]*\)".*/\1/p'|head -n1; done <netcast.txt)

# Go to the Nth line of file [text editor]
vi +4 /etc/mtab

# Edit a script that's somewhere in your path.
vim `which <scriptname>`

# Using vim to save and run your python script.
vim ... :nmap <F5> :w^M:!python %<CR>

# Remove a line from a file using sed (useful for updating known SSH server keys when they change)
vi +<lineNumber>d +wq <filename>

# Remove a range of lines from a file
vi +{<end>..<start>}d +wq <filename>

# Remove a range of lines from a file
vi +START,ENDd +wq sample.txt

# Get disk quota usage openvz using vzlist
vzlist -a -H -o hostname,diskspace,diskspace.s,veid  | awk '{ printf( "%2.f%\t%s\t%s\n"), $2*100/$3, $4, $1}' | sort -r

# Stream your desktop to a remote machine.
vlc screen:// :screen-fps=30 :screen-caching=100 sout '#transcode{vcodec=mp4v,vb=4096,acodec=mpga,ab=256,scale=1,width=1280,height=800}:rtp{dst=192.168.1.2,port=1234,access=udp,mux=ts}'

# Pretty man pages under X
vman(){ T=/tmp/$$.pdf;man -t $1 |ps2pdf - >$T; xpdf $T; rm -f $T; }

# Run a command, redirecting output to a file, then edit the file with vim.
vimcmd() { $1 > $2 && vim $2; }

# Load your [git-controlled] working files into the vi arglist.
vim $(git diff origin/master name-only)

# Edit the /etc/sudoers config file the right way.
visudo

# Get the SUM of visual blocked digits in vim
vmap <c-a> y:$<CR>o<Esc>map<Esc>:'a,$!awk '{sum+=$0}END{print "SUM:" sum}'<CR>dd'>p

# Substrings a variable
var='123456789'; echo ${var:<start_pos>:<offset>}

# Open Vim with two windows
vim -c new myfile

# Automatically connect to a host with ssh once it is online
var=host ;while ! nc -zw 1 $var 22;do sleep 1; done ; ssh user@$var

# Grep across a directory and open matching files in vim (one tab per file)
vim -p `grep -r PATTERN TARGET_DIR | cut -f1 -d: | sort | uniq | xargs echo -n`

# run vmware virtual machine from the command line without the gui or X session
vmrun start /path/to/virtual_machine.vmx nogui

# get a list of running virtual machines from the command line (vmware)
vmrun list

# Open (in vim) all modified files in a git repository
vim `git status | grep modified | awk '{print $3}'`

# open two files side by side in vim (one window, two panes)
vim -O file1 file2

# Turn your monitor on or off or put into standby from the command line.
vbetool dpms [on|off|standby]

# This little command edits your gitignore from anywhere in your repo
vim $(git rev-parse show-toplevel)/.gitignore

# View latest apache access log
view `ls -1 access_log.* | tail -n 1`

# display embeded comments for every opt, usefull for auto documenting your script
vim -n -es -c 'g/# CommandParse/+2,/^\s\+esac/-1 d p | % d | put p | %<' -c 'g/^\([-+]\+[^)]\+\))/,/^\(\s\+[^- \t#]\|^$\)/-1 p' -c 'q!' $0

# Compare local and remote files using SCP/VIM/DIFF
vimdiff local_dir1/local_file.xml scp://user@remote_host//remote_absolute_location/remote_file.xml

# Flush purge or clear all Varnish Cache (version >= 4)
varnishadm "ban req.url ~ ."

# vi a remote file with port
vim sftp://[user@]host.domain.tld:[port]/[path/][file]

# Open multiple files from STDIN with VIM
vim -p $(complicated command to list the files you want)

# Edit a file on a remote host using vim
vim scp://username@host//path/to/somefile

# Open a file using vim in read only (like less)
view /file/name

# Halt all running vagrants (virtualboxes)
vboxmanage list runningvms | cut -d \" -f 2 | xargs -I % vboxmanage controlvm % poweroff

# Opens up cached flash plugin video files(linux)
vlc $(for f in /proc/$(pgrep -f libflashplayer.so |head -n 1)/fd/*; do ;if  $(file ${f} |grep -q "broken symbolic link to \`/tmp/FlashXX"); then echo  ${f};fi;done)

# Compare a file with the output of a command or compare the output of two commands
vimdiff foo.c <(bzr cat -r revno:-2 foo.c)

# edit list of files in last command
vi `!!`

# use !$ to retrieve filename used with last command
vim !$

# get the result of database query in vertical way (Column=Value)
vsqlplus "SELECT * FROM TABLE_NAME;"

# Display a block of text with vim with offset, like with AWK
vim -e -s -c 'g/start_pattern/+1,/stop_pattern/-1 p' -cq file.txt

# To get you started!
vimtutor

# Quick and dirty version control for one file
v () { ( IFS=$'\n'; suf="_versions"; mkdir -p "$1$suf"; nr=`ls "$1$suf" | wc -l`; nr=`printf "%02d" $(($nr + 1))`; cp "$1" "$1$suf/v${nr}_$1" ) }

# Compare a remote file with a local file
vimdiff <file> scp://[<user>@]<host>/<file>

# Get the information about the internet usage from the commandline.
vnstat

# Find, Replace, Write & Remove First 5 Lines
variable="foo" && sed 's/bar/'$variable'/g' $variable.conf >> $variable.temp && sed '1,5d' $variable.temp && mv $variable.temp $variable.conf

# Quickly write and run a C program.
vim test.c && gcc -x c -o a.out test.c && ./a.out && rm a.out test.c
