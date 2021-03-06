# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Google text-to-speech in mp3 format
wget -q -U Mozilla -O output.mp3 "http://translate.google.com/translate_tts?ie=UTF-8&tl=en&q=hello+world

# Google text-to-speech in mp3 format
wget -q -U Mozilla -O output.mp3 "http://translate.google.com/translate_tts?ie=UTF-8&tl=en&q=hello+world

# Convert HAML to HTML on file change
while true; do filechanged=$(inotifywait -e close_write,moved_to format "%w%f" .); haml $filechanged -q no-escape-attrs > ${filechanged/.haml/.html}; done

# Watch active calls on an Asterisk PBX
watch -n 5 "asterisk -rx 'core show calls' | grep active"

# Open/Close your co-worker's cd player
while true; do eject && sleep `expr $RANDOM % 5` && eject -t; done;

# geolocalize ip country
while read line; do pais=$(whois "$line" | grep -E '[Cc]ountry') echo -n "IP=$line Pais=$pais" && echo done <listaip

# Console clock
watch -n 1 :

# Run bash script from web
wget -q -O - http://www.example.com/automation/remotescript.sh | bash /dev/stdin parameter1 parameter2

# Simple calculator
while true; do read i; echo $[$i]; done

# Command to show battery power status
webattery

# See what a cassandra node is streaming
watch -d 'echo -e "Remaining: `(nodetool netstats | grep " 0%" | wc -l)` \nCurrent: `(nodetool netstats | grep "%" | grep -v " 0%")`"'

# kill all running instances of wine and programs runned by it (exe)
wineserver -k; killall -9 wine wineserver; for i in `ps ax|egrep "*\.exe"|grep -v 'egrep'|awk '{print $1 }'`;do kill -9 $i;done

# Authenticate Windows user account through winbind
wbinfo -a username%password

# Wait for an already launched program to stop before starting a new command.
wait

# progress bar for cp
while [$((or_sz=$(stat -c %s "$1"))) -gt $((ds_sz=$(stat -c %s "$2")))];do ((pct=(69*$ds_sz)/$or_sz));echo -en "\r[";for ((i=1;i<=pct;i++));do echo -n "=";done;echo -n \>;for ((i=pct;i<=68;i++));do echo -n ".";done;echo -n "] $(((100*$pct)/69))%";done

# sending message to a logined user of group
write user anytext

# Simple countdown from a given date
watch no-title -d -n 1 'echo `date -d "next Thursday" +%s` "-" `date +%s` | bc -l'

# ps for windows
wmic process list IO

# Watch your websites php
watch -d=c -n3 'lsof -itcp -iudp -c php'

# burn an ISO image to writable CD
wodim cdimage.iso

# What happened on this day in history?
www-browser http://en.wikipedia.org/wiki/$(date +'%b_%d')

# Forgot to use pv or rsync
watch ls -lh /path/to/folder

# Encrypt text to md5
wget -qO - post-data "data[Row][clear]=text" http://md5-encryption.com | grep -A1 "Md5 encrypted state" | tail -n1  | cut -d '"' -f3 | sed 's/>//g; s/<\/b//g'

# get mysql full processlist from commadline
watch 'mysql -e "show full processlist;"'

# Displays the number of unread messages on your gmail at the top right corner of your terminal
while sleep 30; do tput sc;tput cup 0 $(($(tput cols)-15));echo -n " New Emails: $(curl -u username:password silent https://mail.google.com/mail/feed/atom | grep 'fullcount' | grep -o '[0-9]\+')";tput rc; done &

# export key-value pairs list as environment variables
while read line; do export $line; done < <(cat input)

# Use wpa_supplicant to access a wifi AP without using a .conf file
wpa_passphrase "ESSID" "Password" | wpa_supplicant -Dwext -iwlan0 -c/dev/stdin&

# Monitor iptables in realtime
watch -n1 iptables -vnL

# Monitor iptables in realtime
watch -n1 iptables -vnL

# oracle-java install with one line ( prompt for sudo if needed)
wget http://www.duinsoft.nl/pkg/pool/all/update-sun-jre.bin && sh ./update-sun-jre.bin

# How to watch files
watch -d 'ls -l'

# Do some learning...
whatis $(compgen -c) 2>/dev/null | less

# Go get those photos from a Picasa album (full size)
wget -O - "[PICASA ALBUM RSS LINK]" |sed 's/</\n</g' | grep media:content |sed 's/.*url='"'"'\([^'"'"']*\)'"'"'.*$/\1/' |awk -F'/' '{gsub($NF,"d/"$NF); print $0}'|wget -i -

# bash function to check for something every 5 seconds
watch -n <seconds> <command>

# Play a stream and give back the shell
wget http://somesite.com/somestream.pls; cvlc somestream.pls&sleep 5; rm somestream.pls*

# Execute ls -lah every one second
watch interval 1 ls -lah

# Monitor the Kernel Ring Buffer
watch 'dmesg | tail -15'

# terminal based annoy-a-tron
while true; do sleep $(($RANDOM/1000)) && beep -f 2000 -l $(($RANDOM/100)) ; done

# Watch mysql processlist on a remote host
watch -n 0.5 ssh [user]@[host] mysqladmin -u [mysql_user] -p[password] processlist | tee -a /to/a/file

# get Hong Kong weather infomation from HK Observatory
wget -q -O - 'http://wap.weather.gov.hk/' | sed -r 's/<[^>]+>//g;/^UV/q' | grep -v '^$'

# get Hong Kong weather infomation from HK Observatory
wget -q -O - 'http://wap.weather.gov.hk/' | sed -r 's/<[^>]+>//g;/^UV/q' | tail -n4

# Length of longest line of code
wc -L files

# Get your external IP address
wget ifconfig.me/ip -q -O -

# locate a command
which somecommand

# share single file in LAN via netcat
while :; do cat file.txt | nc -l 80; done

# What is my public IP-address?
wget quiet -O - checkip.dyndns.org | sed -e 's/[^:]*: //' -e 's/<.*$//'

# Switch to windows using gpicker
wmctrl -i -a `wmctrl -l -x | gpicker -d "\n" -n "\n" - | awk '{print $1}'`

# retrieve GMT time from websites ( generally accruate )
w3m -dump_head www.fiat.com | awk '/Date+/{print $6, $7}'

# Find artist and title of a music cd, UPC code given (first result only)
wget http://www.discogs.com/search?q=724349691704 -O foobar &> /dev/null ; grep \/release\/ foobar | head -2 | tail -1 | sed -e 's/^<div>.*>\(.*\)<\/a><\/div>/\1/' ; rm foobar

# Get your external IP address
wget -O - http://checkip.dyndns.org|sed 's/[^0-9.]//g'

# Processes biglion quantity of sold ebay coupons/bonus codes
while true; do date; (curl -s -o 1.html http://www.biglion.ru/deals/ebay-80/ &); sleep 5; cat 1.html | grep "&#1082;&#1091;&#1087;&#1086;&#1085;&#1086;&#1074;" | awk -F"<div>" '{print $2}' | awk -F"<span>" '{print $1}'; done

# Get the amount of currently registered users from i18n.counter.li.org.
wget -qO - http://i18n.counter.li.org/ | grep 'users registered' | sed 's/.*\<font size=7\>//g' | tr '\>' ' ' | sed 's/<br.*//g' | tr ' ' '\0'

# Show who are logging in and what their current commands
w

# Weather
wget -qO- -U '' 'google.com/search?q=weather' | grep -oP '(-)?\d{1,3}\xB0[FC]'

# Sweep and download all mp3 (in French) of Rendez-vous avec X (Meet with Mr. X) of the French public radio
wget http://rendezvousavecmrx.free.fr/audio/mr_x_{1997..2015}_{01..12}_{01..31}.mp3

# monitor when target host will be up
while true; do date; ssh <YOUR HOST HERE> "echo" && echo "HOST UP" && break; sleep 60; done

# Monitors battery usage (rate of energy charge/discharge)
while cat energy_now; do sleep 1; done |awk -v F=$(cat energy_full) -v C=60 'NR==1{P=B=$1;p=100/F} {d=$1-P; if(d!=0&&d*D<=0){D=d;n=1;A[0]=B=P}; if(n>0){r=g=($1-B)/n;if(n>C){r=($1-A[n%C])/C}}; A[n++%C]=P=$1; printf "%3d %+09.5f %+09.5f\n", p*$1, p*g, p*r}'

# Monitoring TCP connections number
watch "ss -nat | awk '"'{print $1}'"' | sort | uniq -c"

# Print the lastest stable version of Perl
wget -q  -O - http://www.perl.org/get.html | grep -m1 '\.tar\.gz' | sed 's/.*perl-//; s/\.tar\.gz.*//'

# Keep SSH tunnel open (PostgreSQL example)
while true; do nc -z localhost 3333 >|/dev/null || (ssh -NfL 3333:REMOTE_HOST:5432 USER@REMOTE_HOST); sleep 15; done

# Download all files under http://codeigniter.com/user_guide/ to the current directory
wget -r no-parent http://codeigniter.com/user_guide/ ; mv codeigniter.com/user_guide/* . ; rm -rf codeigniter.com

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Poke a Webserver to see what it's powered by.
wget -S -O/dev/null "INSERT_URL_HERE" 2>&1 | grep Server

# Download free e-books
wget -erobots=off user-agent="Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3" -H -r -l2 max-redirect=1 -w 5 random-wait -PmyBooksFolder -nd no-parent -A.pdf http://URL

# a simple alarm
while true; do while [ `date +%H%M` == "1857" ] ; do sleep 1s; yes | head -n 2000 > /dev/dsp; done; done;

# translate what is in the clipboard in english and write it to the terminal
wget -qO - "http://ajax.googleapis.com/ajax/services/language/translate?langpair=|zh-cn&v=1.0&q=`xsel`" |cut -d \" -f 6

# Make sure your compiler is using ccache
watch ccache -s

# Console clock
watch -n1 echo

# stream facebook feed
watch -n -0.1 fbcmd stream timeline

# Downloads files (through wget) from a list of URLs using a stored cookie
wget load-cookies <cookie-file> -c -i <list-of-urls>

# prints line numbers
while read str; do echo "$((++i)) - $str"; done < infile

# Wget Command to Download Full Recursive Version of Web Page
wget -p convert-links http://www.foo.com

# Get all files of particular type (say, PDF) listed on some wegpage (say, example.com)
wget -r -A .pdf -l 5 -nH no-parent http://example.com

# Get Informed by your box that you are awesome ;)
while $i;do `notify-send -t 200 "You are awesome :)"`;sleep 60; done;

# Testing
who am i | wc -l

# Netcat ftp honeypot centos linux (use port 22 for SSH)
while [ 1 ]; do echo -e "220 ProFTPD 1.3.3c Server [ProFTPD] \nFAILED FTP ATTEMPT  -  PORT 21" | nc -vvv -l 192.168.1.65 21 >> /var/log/honeylog.log 2>> /var/log/honeylog.log; done

# View external IP
wget -q ip.nu && cat index.html

# kill a windows process
wmic process where (caption="notepad.exe") call terminate

# CPU sucker
while :; do :; done

# my command for downloading  delicious web links,
wget -r wait=5 quota=5000m tries=3 directory-prefix=/home/erin/Documents/erins_webpages  limit-rate=20k  level=1 -k -p -erobots=off -np -N  exclude-domains=del.icio.us,doubleclick.net -F -i ./delicious-20090629.htm

# A simple overview of memory usage refreshed at user designated intervals.
watch -n 10 free -m

# wget, tar xzvf, cd, ls
wtzc () { wget "$@"; foo=`echo "$@" | sed 's:.*/::'`; tar xzvf $foo; blah=`echo $foo | sed 's:,*/::'`; bar=`echo $blah | sed -e 's/\(.*\)\..*/\1/' -e 's/\(.*\)\..*/\1/'`; cd $bar; ls; }

# keep an eye on system load changes
watch -n 7 -d 'uptime | sed s/.*users?, //'

# View the newest xkcd comic.
wget -O xkcd_$(date +%y-%m-%d).png `lynx dump http://xkcd.com/|grep png`; eog xkcd_$(date +%y-%m-%d).png

# Check a internet connetion is up. If it isn't write a log.
while true; do /bin/ping -q -c1 -w3 8.8.8.8 2>&1 > /dev/null || echo "8.8.8.8 ping failed at $(date +%d/%m/%y) $(date +%H:%M:%S)" >> /var/log/ping.log; sleep 10; done &

# shows the full path of shell commands
whereis command

# Download latest Git setup executable for Windows
wget no-check-certificate https://code.google.com/p/msysgit/downloads/list  -O - 2>nul | sed -n "0,/.*\(\/\/msysgit.googlecode.com\/files\/Git-.*\.exe\).*/s//http:\1/p" | wget -i - -O Git-Latest.exe

# transform relative URLs (shoddy hack but it works)
wget -k $URL

# see who is on this machine
who;ps aux|grep ssh

# Monitor a file's size
watch -n60 du /var/log/messages

# watch process stack, sampled at 1s intervals
watch -n 1 'pstack 12345 | tac'

# big countdown clock with hours, minutes and seconds
watch -tn1 'date -u +%T -d @$(expr $(date -d HH:MM +%s) - $(date  +%s)) | toilet -f bigmono12'

# Outgoing IP of server
wget http://www.whatismyip.org quiet -O - | cat

# What is my ip?
w3m miip.cl | grep ip

# What is my ip?
w3m http://amit-agarwal.co.in/mystuff/getip_txt.php will return the ip in text format.

# Burn an ISO on commandline with wodim instead cdrecord
wodim foo.iso

# Quickly re-launch your script (python for example)
while read ; do python <script> ; done

# Muestra el crecimiento de un archivo por segundo
while true; do A=$(stat -c%s FILE); sleep 1; B=$(stat -c%s FILE); echo -en "\r"$(($B-$A))" Bps"; done

# wget ? server to server files transfer
wget -H -r ?level=1 -k -p http://www.domain.com/folder/

# watch filesizes (c.f. logfiles, file downloading, etc.)
while [ 1 ]; do date; ls -l /path/to/dir; sleep 1; done

# Check your ip public using dyndns.org
wget -O - -q http://checkip.dyndns.org/ | cut -d':' -f2 | cut -d'<' -f1| cut -c2-

# Displaying wireless signal on screen in realtime.
watch -n 1 "awk 'NR==3 {print \"Signal strength = \" \$3 \"00 %\"}''' /proc/net/wireless"

# Get your public IP using chisono.it
wget -O - -q http://www.chisono.it/ip.asp && echo

# Get all links of a website
wget -O- -q http://www.nomachine.com/download-package.php?Prod_Id=2067 | sed -n -e 'H;${x;s/\n/ /g;p;}' | sed -e "s/[Hh][Rr][Ee][Ff]=\"/\n/g" | cut -d "\"" -f1 | sort -u | grep deb$

# Get your external IP address
wget http://checkip.dyndns.org && clear && echo && echo My IP && egrep -o '([[:digit:]]{1,3}\.){3}[[:digit:]]{1,3}' index.html && echo && rm index.html

# Get the latest version of phpMyAdmin
wget http://tools.web4host.net/versions.tmp quiet -O - | grep PHPMYADMIN | sed 's/PHPMYADMIN=//' | cat

# Get the host from where you logged in
who -m | sed 's/.*(\(.*\)).*/\1/'

# Get me only those jpeg files!
wget mirror -A.jpg http://www.xs4all.nl/~dassel/wall/

# Recursive Line Count
wc -l `find . -name *.php`

# Monitoring a port connections
while true ; do  sleep 1 ; clear ;  (netstat -tn | grep -P ':36089\s+\d') ;  done

# Display clock in terminal
watch -n 1 :

# dont forget commands of old profile
wget http://www.commandlinefu.com/commands/by/e7__7dal

# check the status of 'dd' in progress
while killall -USR1 dd; do sleep 5; done

# easly monitor mem usage
watch -n1 differences cat /proc/meminfo

# Get all the reference docs for OS X from Apples Developer Connection site
wget -nd -nH -r -A pdf -I library/mac/documentation/ http://developer.apple.com/library/mac/navigation/#section=Resource%20Types&topic=Reference

# Forget fortunes in your terminal this grabs a random
wget -qO - snubster.com|sed -n '65p'|awk 'gsub(/<span><br>.*/,"")&&1'|perl -p -e 's:myScroller1.addItem\("<span class=atHeaderOrange>::g;s:</span> <span class=snubFontSmall>::g;s:&quot;:":g;s:^:\n:g;s:$:\n:'

# List debian package installed by size
wajig large

# Lists the size of certain file in every 10 seconds
while true ; do du -sk testfile ; sleep 10 ; done

# repeat a command every x seconds
while x=0; do foo ; sleep 1 ; done

# Wait for an already launched program to stop before starting a new command.
while (ps -ef | grep [r]unning_program_name); do sleep 10; done; command_to_execute

# hardcode dnsserver, no more rewriting of etc/resolv.conf
while sudo sed -i -e 's/^\(nameserver\).*$/\1 $dns/' /etc/resolv.conf; do sleep 15; done &

# Not so simple countdown from a given date
watch -tn1 'bc<<<"`date -d'\''friday 21:00'\'' +%s`-`date +%s`"|perl -ne'\''@p=gmtime($_);printf("%dd %02d:%02d:%02d\n",@p[7,2,1,0]);'\'

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Dump HTTP header using wget
wget server-response spider http://www.example.com/

# Create A Continuous Yahoo! News Ticker For The Terminal
while true;do n="$(curl -s http://news.yahoo.com/rss/|sed 's/</\n/g'|grep "title>"|sed -e '/^\// d' -e 's/title>/ /g' -e '1,3d'|tr '\n' ' ')";for i in $(eval echo {0..${#n}});do echo -ne "\e[s\e[0;0H${n:$i:$COLUMNS}\e[u";sleep .15;done;done &

# Show who is logged on and find out what they are doing
watch w

# Using wget to receive an XML atom feed of your Gmail inbox
wget -O - 'https://USERNAMEHERE:PASSWORDHERE@mail.google.com/mail/feed/atom' no-check-certificate

# Download a complete podcast
wget -c -v -S -T 100 tries=0 `curl -s http://ms1.espectador.com/ podcast/espectador/la_venganza_sera_terrible.xml | grep -v xml | grep link | sed 's/]*>//g'`

# Muestra el crecimiento de un archivo por segundo
while true; do A=$(ls -l FILE | awk '{print $5}'); sleep 1; B=$(ls -l FILE | awk '{print $5}'); echo -en "\r"$(($B-$A))" Bps"; done

# Check your ip public using dyndns.org
wget http://checkip.dyndns.org/ -q -O - | grep -Eo '\<[[:digit:]]{1,3}(\.[[:digit:]]{1,3}){3}\>'

# Displaying wireless signal on screen in realtime.
watch -n 1 cat /proc/net/wireless

# Execute extension with chrome
wget -O gsplitter.crx "https://clients2.google.com/service/update2/crx?response=redirect&x=id%3Dlnlfpoefmdfplomdfppalohfbmlapjjo%26uc%26lang%3Den-US&prod=chrome&prodversion=8.0.552.224" ; google-chrome load-extension gspliter.crx

# Cheap iftop
watch 'netstat -anptu |egrep "^Proto|:80 "'

# output length of longest line
wc -L

# Download some ramdom wallpapers from wallbase.cc
wb(){ for i in $(wget -O- -U "" "http://wallbase.cc/random/23/eqeq/1920x1080/0/" quiet|grep wallpaper/|grep -oe 'http://wallbase.[^"]*'); do if (( n > "$1" )); then break;fi;let n++;wget $(wget -O- -U "" $i quiet|grep -oe 'http://[^"]*\.jpg');done;}

# Quickly make schema changes in Django
while true ; do scripts/bootstrap.py ; ./manage.py runserver ; done

# Get your public ip
wget -qO - http://cfaj.freeshell.org/ipaddr.cgi

# wmi
wmic -U DOMAIN/user password='password'  //IP_HOST "select Caption,CSDVersion,CSName  from Win32_OperatingSystem" | grep Windows

# Current host external IP
wget http://cmyip.com -O - -o /dev/null | awk '/\<title/ {print $4}'

# Generate load on your CPU
while true; do /bin/true; done

# Mailing from Vim
w: !mailx -s "Some subject" user@host.com

# Polls fos network port usage
while sleep 1; do  date; (netstat -a -n | grep 80) ; done

# Poll and print end of lates modified file
watch 'ls -tr1 | tail -n1 | xargs tail'

# count occurences of each word in novel David Copperfield
wget -q -O- http://www.gutenberg.org/dirs/etext96/cprfd10.txt | sed  '1,419d' | tr "\n" " " | tr " " "\n" | perl -lpe 's/\W//g;$_=lc($_)' | grep "^[a-z]" | awk 'length > 1' | sort | uniq -c | awk '{print $2"\t"$1}'

# See smbstatus all the time
while (( $i != 0 )) { smbstatus; sleep 5; clear }

# pkill
w ; pkill -kill -t pts/1

# Blue Matrix
while :; do integer i=0; COL=$((RANDOM%$(tput cols))); ROW=$((RANDOM%$(tput cols))); while (( i <= COL)) do tput cup $i $ROW; echo "\033[1;34m" $(cat /dev/urandom | head -1 | cut -c1-1) 2>/dev/null; i=$(expr $i + 1); done done

# Graphical display of wireless links
wmwave

# Monitor Applications application that are connected/new connections
while true; do netstat -p |grep "tcp"|grep color=always "/[a-z]*";sleep 1;done

# &#1089;&#1082;&#1072;&#1095;&#1072;&#1090;&#1100; &#1089;&#1072;&#1081;&#1090;
wget -r -k -l 7 -p -E -nc http://site.com/

# redirect wget output to the terminal, instead of a file
wget -q -O - "$@" <url>

# Get your external IP address
wget -q -O - checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*$//'

# Download Youtube video with wget!
wget http://www.youtube.com/watch?v=dQw4w9WgXcQ -qO- | sed -n "/fmt_url_map/{s/[\'\"\|]/\n/g;p}" | sed -n '/^fmt_url_map/,/videoplayback/p' | sed -e :a -e '$q;N;5,$D;ba' | tr -d '\n' | sed -e 's/\(.*\),\(.\)\{1,3\}/\1/' | wget -i - -O surprise.flv

# Binary Clock
watch -n 1 'echo "obase=2;`date +%s`" | bc'

# Download all images from a site
wget -r -l1 no-parent -nH -nd -P/tmp -A".gif,.jpg" http://example.com/images

# Watch active calls on an Asterisk PBX
watch -n 1 "sudo asterisk -vvvvvrx 'core show channels' | grep call"

# Retrieve a random command from the commandlinefu.com API
wget -qO - http://www.commandlinefu.com/commands/random/plaintext | sed -n '1d; /./p'

# shows the space of a  folder in  bytes  ever  two seconds.
watch "df | grep /this/folder/"

# Do I have this command?
which <command> > /dev/null 2>&1 && echo Success!

# How many lines in your c project?
wc -l *c

# Get your external IP address
wget -O - -q http://whatismyip.org/

# Periodically loop a command
while true; do ifconfig eth0 | grep "inet addr:"; sleep 60; done;

# Passwords from 9/11 tragedy pager intercepts (Yeah! Plain text! From wikileaks.net)
while true; do wget -r -l1 no-clobber -A.txt http://911.wikileaks.org/files/index.html; done; cat *.txt | grep pass

# Access variables inside a - piped while - loop
while read line; do  echo $line; done <<< "$var"

# Automation click every 4 second on a macro slot bar to world of warcraft for prospecting item
while true; do sleep 4 ; xdotool click 1 ; done

# Short one line while loop that outputs parameterized content from one file to another
while read col1 col23; do echo $col1; done < three-column.txt > first-column.txt

# show space used by postgres
while (( 1==1 )); do du -c . >> output.log; sleep 2; done; tail -f output.log

# Monitor server load as well as running MySQL processes
watch -n 1 uptime\;myqladmin user=<user> password=<password> verbose processlist

# watch iptables counters
watch interval 0 'iptables -nvL | grep -v "0     0"'

# Lets Tux say the random fact. [add it to .bashrc to see it in new terminal window]
wget randomfunfacts.com -O - 2>/dev/null|grep \<strong\>|sed "s;^.*<i>\(.*\)</i>.*$;\1;"|cowsay -f tux

# Read directory contents recursively
while read f;do echo "$f";done < <(find .)

# Get your external IP address
wget -O - -q ip.boa.nu

# Get own public IP address
wget -qO- whatismyip.org

# alarm central using keyboard as zone inputs ( output spoken out aloud )
watch '/home/mm/bash/keypress.sh |/home/mm/bash/evento.sh'

# Create a Bash command server - You can send it scripts or commands to execute
while ( nc -l 1025 | bash &> : ) ; do : ; done &

# Returns the absolute path to a command, using which if needed
which any_path/a_command.sh | sed "s|^./|$(pwd)|"

# get current tty name
who am i

# get you public ip address
wget -q -nd http://www.biranchi.com/ip.php; echo "Your external ip is : `cat ip.php`"

# wget - 403 Forbidden Error
wget -U Mozilla http://example.com/foo.tar.gz

# check if commandlinefu.com got a better domain
whois cmd.fu;whois cmdfu.com|grep -i cmdfu

# send Everyone on your machine some love
w | egrep -v '(load|FROM)' | awk '{print $2}'  | sed 's/^/tty/' | awk '{print "echo \"The Matrix has you...\" >> /dev/" $1}' | bash

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Watch Data Usage on eth0
watch ifconfig eth0

# find out who you logged onto the machine as  and not just who you are now
who am i

# Eject the CD Rom Device
while true; do eject /dev/cdrom && eject -t /dev/cdrom; done

# test
w3m

# Killing processes with your mouse in an infinite loop
while true; do xkill -button any; done

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Get the weather forecast for the next 24 to 48 for your location.
weather(){ curl -s "http://api.wunderground.com/auto/wui/geo/ForecastXML/index.xml?query=${@:-<YOURZIPORLOCATION>}"|perl -ne '/<title>([^<]+)/&&printf "%s: ",$1;/<fcttext>([^<]+)/&&print $1,"\n"';}

# Block the 6700 worst spamhosts
wget -q -O - http://someonewhocares.org/hosts/ | grep ^127 >> /etc/hosts

# background a wget download
wget -b http://dl.google.com/android/android-sdk_r14-linux.tgz

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Block known dirty hosts from reaching your machine
wget -qO - http://infiltrated.net/blacklisted|awk '!/#|[a-z]/&&/./{print "iptables -A INPUT -s "$1" -j DROP"}'

# Binary Clock
watch -n 1 'date "+obase=2; print %H,\":\",%M,\":\",%S" |bc'

# climagic's New Year's Countdown clock
while V=$((`date +%s -d"2010-01-01"`-`date +%s`));do if [ $V == 0 ];then figlet 'Happy New Year!';break;else figlet $V;sleep 1;clear;fi;done

# Find out how old a web page is
wget -S spider http://osswin.sourceforge.net/ 2>&1 | grep Mod

# Download an entire ftp directory using wget
wget -r ftp://user:pass@ftp.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Check if a domain is available and get the answer in just one line
whois domainnametocheck.com | grep match

# Watch for when your web server returns
watch -n 15 curl -s connect-timeout 10 http://www.google.com/

# Get a regular updated list of zombies
watch "ps auxw | grep [d]efunct"

# Download from Rapidshare Premium using wget - Part 2
wget -c -t 1 load-cookies ~/.cookies/rapidshare <URL>

# Repeatedly purge orphaned packages on Debian-like Linuxes
while [ $(deborphan | wc -l) -gt 0 ]; do dpkg purge $(deborphan); done

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Show a curses based menu selector
whiptail checklist "Simple checkbox menu" 11 35 5 tag item status repeat tags 1

# Stop All Wine Apps and Processes
wineserver -k

# ascii digital clock
watch -tn1 'date +%T | xargs banner'

# Auto Rotate Cube (compiz)
wmctrl -o 2560,0 ;sleep 2 ; echo "FIRE 001" | osd_cat -o 470 -s 8 -c red -d 10 -f -*-bitstream\ vera\ sans-*-*-*250-*-*-*-*-*-*-* ; sleep 1; wmctrl -o 0,0

# Show a Command's Short Description
whatis [command-name]

# use wget to check if a remote file exists
wget spider -v http://www.server.com/path/file.ext

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Retrieve the size of a file on a server
wget spider $URL 2>&1 | awk '/Length/ {print $2}'

# Highlight network TX, RX information change
watch -n 2 -d '/sbin/ifconfig eth0'

# Google Translate
wget -U "Mozilla/5.0" -qO - "http://translate.google.com/translate_a/t?client=t&text=translation+example&sl=auto&tl=fr" | sed 's/\[\[\[\"//' | cut -d \" -f 1

# Save your open windows to a file so they can be opened after you restart
wmctrl -l -p | while read line; do ps -o cmd= "$(echo "$line" | awk '$0=$3')"; done > ~/.windows

# Get simple weather info from a zip code
weather() { curl -s "http://www.wunderground.com/q/zmw:$1.1.99999" | grep "og:title" | cut -d\" -f4 | sed 's/&deg;/ degrees F/'; }

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# translate what is in the clipboard in english and write it to the terminal
wget -qO - "http://ajax.googleapis.com/ajax/services/language/translate?langpair=|en&v=1.0&q=`xsel`" |cut -d \" -f 6

# Get a regular updated list of zombies
watch "ps auxw | grep 'defunct' | grep -v 'grep' | grep -v 'watch'"

# Download Apple movie trailers
wget -U "QuickTime/7.6.2 (qtver=7.6.2;os=Windows NT 5.1Service Pack 3)" `echo http://movies.apple.com/movies/someHDmovie_720p.mov | sed 's/\([0-9][0-9]\)0p/h\10p/'`

# make, or run a script, everytime a file in a directory is modified
while inotifywait -r -e MODIFY dir/; do make; done;

# Update your OpenDNS network ip
wget -q user=<username> password=<password> 'https://updates.opendns.com/nic/update?hostname=your_opendns_hostname&myip=your_ip' -O -

# Print current runlevel
who -r

# Remove all leading and trailing spaces or tabs from all lines of a text file
while read l; do echo -e "$l"; done <1.txt >2.txt

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# return external ip
wget -O - -q icanhazip.com

# download file1 file2 file3 file4 .... file 100
wget http://domain.com/file{1..100}

# Watch the disk fill up
watch -n 1 df

# Console clock
watch -t -n1 'date "+%r %F %A"'

# Put a console clock in top right corner
while true; do echo -ne "\e[s\e[0;$((COLUMNS-27))H$(date)\e[u"; sleep 1; done &

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Big Countdown Clock with hours, minutes and seconds
watch -tn1 'date +%r | figlet'

# Watch how fast the files in a drive are being deleted
watch "df | grep /path/to/drive"

# backup your entire hosted website using cPanel backup interface and wget
wget http-user=YourUsername http-password=YourPassword http://YourWebsiteUrl:2082/getbackup/backup-YourWebsiteUrl-`date +"%-m-%d-%Y"`.tar.gz

# HTTP redirect
while [ 0 ]; do echo -e "HTTP/1.1 302 Found\nLocation: http://www.whatevs.com/index.html" | nc -vvvv -l -p 80; done

# watch iptables counters
watch 'iptables -vL'

# Add a GPL license file to your project
wget -O LICENSE.txt http://www.gnu.org/licenses/gpl-3.0.txt

# continuously check size of files or directories
watch -n <time_interval> "du -s <file_or_directory>"

# Extract tarball from internet without local saving
wget -O - http://example.com/a.gz | tar xz

# for all who don't have the watch command
watch() { while test :; do clear; date=$(date); echo -e "Every "$1"s: $2 \t\t\t\t $date"; $2; sleep $1; done }

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# whowatch: Linux and UNIX interactive, process and users monitoring tool
whowatch

# Command to logout all the users in one command
who -u | grep -vE "^root " | kill `awk '{print $7}'`

# let the cow suggest some commit messages for you
while true; do lynx dump http://whatthecommit.com/ | head -n 1 | cowsay; sleep 2; done

# locate bin, src, and man file for a command
whereis somecommand

# Hear the mice moving
while true; do beep -l66 -f`head -c2 /dev/input/mice|hexdump -d|awk 'NR==1{print $2%10000}'`; done

# Create a continuous digital clock in Linux terminal
watch -t -n 1 date +%T

# Find the package that installed a command
whatinstalled() { which "$@" | xargs -r readlink -f | xargs -r dpkg -S ;}

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Find a CommandlineFu users average command rating
wget -qO- www.commandlinefu.com/commands/by/PhillipNordwall | awk -F\> '/num-votes/{S+=$2; I++}END{print S/I}'

# Monitor cpu freq and temperature
watch interval 1 "cat /proc/acpi/thermal_zone/THRM/*; cat /proc/cpuinfo | grep MHz; cat /proc/acpi/processor/*/throttling"

# Mouse Tracking
while true; do xdotool getmouselocation | sed 's/x:\(.*\) y:\(.*\) screen:.*/\1, \2/' >> ./mouse-tracking; sleep 10; done

# ThePirateBay.org torrent search
wget -U Mozilla -qO - "http://thepiratebay.org/search/your_querry_here/0/7/0" | grep -o 'http\:\/\/torrents\.thepiratebay\.org\/.*\.torrent'

# Monitor memory usage
watch vmstat -sSM

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# add a gpg key to aptitute package manager in a ubuntu system
wget -q http://xyz.gpg -O- | sudo  apt-key add -

# Take aWebcam Picture When the Mouse Moves
while true; do sudo cat /dev/input/mouse0|read -n1;streamer -q -o /tmp/cam.jpeg -s 640x480 > /dev/null 2>&1; sleep 10;done

# Put a console clock in top right corner
while true; do tput sc; tput cup 0 $(($(tput cols)-74)); w | grep load; tput rc; sleep 10; done &

# Ping Twitter to check if you can connect
wget http://twitter.com/help/test.json -q -O -

# Console clock
watch -n1 'date "+%T"'

# Download from Rapidshare Premium using wget - Part 1
wget save-cookies ~/.cookies/rapidshare post-data "login=USERNAME&password=PASSWORD" -O - https://ssl.rapidshare.com/cgi-bin/premiumzone.cgi > /dev/null

# Show simple disk IO table using snmp
watch -n1 snmptable -v2c -c public localhost diskIOTable

# Show current weather for any US city or zipcode
weather() { lynx -dump "http://mobile.weather.gov/port_zh.php?inputstring=$*" | sed 's/^ *//;/ror has occ/q;2h;/__/!{x;s/\n.*//;x;H;d};x;s/\n/  /;q';}

# shows the full path of shell commands
which command

# Get gzip compressed web page using wget.
wget  -q -O- header\="Accept-Encoding: gzip" <url> | gunzip > out.html

# Get your outgoing IP address
wget http://icanhazip.com -qO-

# send a circular
wall <<< "Broadcast This"

# Grab all .flv files from a webpage to the current working directory
wget `lynx -dump http://www.ebow.com/ebowtube.php | grep .flv$ | sed 's/[[:blank:]]\+[[:digit:]]\+\. //g'`

# Command to keep an SSH connection open
watch -n 30 uptime

# for all who don't have the watch command
watch() { t=$1; shift; while test :; do clear; date=$(date); echo -e "Every "$t"s: $@ \t\t\t\t $date"; $@; sleep $t; done }

# Monitor Linux/MD RAID Rebuild
watch -n 5 -d cat /proc/mdstat

# Do some learning...
whatis /usr/bin/* 2> /dev/null | less

# commandline dictionary
wn wonder -over

# Monitoring wifi connection by watch command (refresh every 3s), displaying iw dump info and iwconfig on wireless interface "wlan0"
watch -d -n 3 "iw dev wlan0 station dump; iwconfig wlan0"

# Recover username and password for Technicolor TC7200 admin page (vulnerability)
wget -q -O - http://192.168.0.1/goform/system/GatewaySettings.bin | strings | tail -n 2

# What is my ip?
wget -q -O - ifconfig.co

# Run remote web page, but don't save the results
wget -O /dev/null http://www.google.com

# What is my public IP-address?
wget -qO- ifconfig.me/ip

# Google voice recognition "API"
wget -q -U "Mozilla/5.0" post-file speech.flac header="Content-Type: audio/x-flac; rate=16000" -O - "http://www.google.com/speech-api/v1/recognize?lang=en-us&client=chromium"

# Displays the number of processes per state
while true; do clear;awk '{a[$3]+=1};END{for(x in a){print x,a[x]}}' /proc/[0-9]*/stat; sleep 1; done

# Mirror the NASA Astronomy Picture of the Day Archive
wget -t inf -k -r -l 3 -p -m http://apod.nasa.gov/apod/archivepix.html

# Donwload media from *.rm from an url of type htttp://.../*.ram
wget <URL> -O- | wget -i -

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Create a file server, listening in port 7000
while true; do nc -l 7000 | tar -xvf -; done

# whois surfing my web ?
watch lsof -i :80

# Download all manuals RedHat 7 (CentOS/Fedora) with one command in Linux
wget -q -O- https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/ | grep Linux/7/pdf | cut -d \" -f 2 | awk '{print "https://access.redhat.com"$1}' | xargs wget

# Debug redirects between production reloads
watch 'curl -s location -I http://any.site.or.url | grep -e "\(HTTP\|Location\)"'

# Wait for file to stop changing
while [ $(( $(date +%s) - $(stat -c %Y FILENAME) )) -lt 10 ]; do sleep 1; done; echo DONE

# Watch the size of a directory using figlet
watch -n1 "du -hs /home/$USER | cut -f1 -d'/' | figlet -k"

# Wait for an already launched program to stop before starting a new command.
wait $!

# Log the current memory statistics frequently to syslog
while true; do { $(which logger) -p local4.notice `free -m | grep Mem`; sleep 60; } done &

# Output system statistics every 5 seconds with timestamp
while [ 1 ]; do echo -n "`date +%F_%T`" ; vmstat 1 2 | tail -1 ; sleep 4; done

# Download all music files off of a website using wget
wget -r -l1 -H -nd -A mp3 -e robots=off http://example/url

# Watch command
watch -n 2 command

# Console clock
while [[ 1 ]] ; do clear; banner `date +%H:%M:%S` ; sleep 1; done

# Monitor open connections for httpd including listen, count and sort it per IP
watch "netstat -plan|grep :80|awk {'print \$5'} | cut -d: -f 1 | sort | uniq -c | sort -nk 1"

# To get the CPU temperature continuously on the desktop
while :; do acpi -t | osd_cat -p bottom ; sleep 1; done &

# Poor's man Matrix script
while (true) ; do pwgen 1 ; done

# output stats from a running dd command to see its progress
watch -n60 kill -USR1 $(pgrep dd)

# Pick a random image from a directory (and subdirectories) every thirty minutes and set it as xfce4 wallpaper
while :; do xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-path -s "$(find <image-directory> -type f -iregex '.*\.\(bmp\|gif\|jpg\|png\)$' | sort -R | head -1)"; sleep 30m; done

# read a file line by line and perform some operation on each line
while read line; do echo "$(date),$(hostname),$line"; done < somefile.txt

# Download Englishword pronounciation as mp3 file
word="apple"; wget http://ssl.gstatic.com/dictionary/static/sounds/de/0/$word.mp3

# Update IP filter for qBittorrent
wget -O - http://list.iblocklist.com/\?list\=ydxerpxkpcfqjaybcssw\&fileformat\=p2p\&archiveformat\=gz | gunzip > ~/ipfilter.p2p

# Save an HTML page, and covert it to a .pdf file
wget $URL | htmldoc webpage -f "$URL".pdf - ; xpdf "$URL".pdf &

# Monitor incoming connections of proxies and balancers.
watch -n 1 "/usr/sbin/lsof -p PID |awk '/TCP/{split(\$8,A,\":\"); split(A[2],B,\">\") ; split(B[1],C,\"-\"); print A[1],C[1],B[2], \$9}' | sort | uniq -c"

# Use acpi and notify-send to report current temperature every five minutes.
while ping -c 1 127.0.0.1 > /dev/null; do acpi -t -f | while read tem; do notify-send "$tem"; done; sleep 300; done

# Video Google download
wget -qO- "VURL" | grep -o "googleplayer.swf?videoUrl\\\x3d\(.\+\)\\\x26thumbnailUrl\\\x3dhttp" | grep -o "http.\+" | sed -e's/%\([0-9A-F][0-9A-F]\)/\\\\\x\1/g' | xargs echo -e | sed 's/.\{22\}$//g' | xargs wget -O OUPUT_FILE

# Echo the latest commands from commandlinefu on the console
wget -O - http://www.commandlinefu.com/commands/browse/rss 2>/dev/null | awk '/\s*<title/ {z=match($0, /CDATA\[([^\]]*)\]/, b);print b[1]} /\s*<description/ {c=match($0, /code>(.*)<\/code>/, d);print d[1]} ' | grep -v "^$"

# Do some learning...
whatis $(compgen -c) | sort | less

# Download YouTube Videos using wget and youtube-dl and just using the video link
wget -O "output-filename.mp4" $( youtube-dl -g -f "format-number" "youtube-video-link" )

# Go get those photos from a Picasa album
wget 'link of a Picasa WebAlbum' -O - |perl -e'while(<>){while(s/"media":{"content":\[{"url":"(.+?\.JPG)//){print "$1\n"}}' |wget -w1 -i -

# Display a random crass ascii art from www.asciiartfarts.com
wget -qO - http://www.asciiartfarts.com/random.cgi | sed -n '/<pre>/,/<\/pre>/p' | sed -n '/<table*/,/<\/table>/p' | sed '1d' | sed '$d' | recode html..ascii

# Query wikipedia over DNS
wiki() { local IFS=_; dig +short txt "${*^}".wp.dg.cx; }

# Blue Matrix
while [ 1 -lt 2 ]; do i=0; COL=$((RANDOM%$(tput cols)));ROW=$((RANDOM%$(tput cols)));while [ $i -lt $COL ]; do tput cup $i $ROW;echo -e "\033[1;34m" $(cat /dev/urandom | head -1 | cut -c1-1) 2>/dev/null ; i=$(expr $i + 1); done; done

# download and unpack tarball without leaving it sitting on your hard drive
wget -qO - http://example.com/path/to/blah.tar.gz | tar xzf -

# get all pdf and zips from a website using wget
wget reject html,htm accept pdf,zip -rl1 url

# Server load and process monitoring
watch -n1 "uptime && ps auxw|grep http|grep -v grep | grep -v watch|wc -l && netstat -ntup|grep :80 |grep ESTABLISHED|wc -l && netstat -ntup|grep :80|grep WAIT|wc -l && free -mo && ps -ylC httpd sort:rss|tail -3|awk '{print \$8}'"

# Monitor memory fine-grained usage (e.g. firefox)
watch "awk '/Rss/{sum += \$2; } END{print sum, \"kB\"}' < /proc/$(pidof firefox)/smaps"

# wget progress bar with customized data size for dots
wget blah progress=dot -e dotbytes=100M

# monitor what processes are waiting for IO interrupts
while true; do date; ps auxf | awk '{if($8=="D") print $0;}'; sleep 1; done

# Poor man's unsort (randomize lines)
while read l; do echo -e "$RANDOM\t$l"; done | sort -n | cut -f 2

# Working random fact generator
wget randomfunfacts.com -O - 2>/dev/null | grep \<strong\> | sed "s;^.*<i>\(.*\)</i>.*$;\1;" | while read FUNFACT; do notify-send -t $((1000+300*`echo -n $FUNFACT | wc -w`)) -i gtk-dialog-info "RandomFunFact" "$FUNFACT"; done

# Get NFL/MLB Scores/Time
w3m -no-cookie http://m.espn.go.com/nfl/scoreboard?|sed 's/ Final/ : Final/g'|sed 's/ F\// : F\//g'|sed 's/, / : /g'|grep -i ':'

# keep an eye on system load changes
watch -n 7 -d 'uptime | sed s/.*users,//'

# wget with resume
wget -c   or wget continue

# add a gpg key to aptitute package manager in a ubuntu system
wget -q http://xyz.gpg -O- | sudo  apt-key add -

# Display Spinner while waiting for some process to finish
while kill -0 0; do timeout 5 bash -c 'spinner=( Ooooo oOooo ooOoo oooOo ooooO oooOo ooOoo oOooo); while true; do for i in ${spinner[@]}; do for _ in seq 0 ${#i}; do echo -en "\b\b"; done; echo -ne "${i}"; sleep 0.2; done; done'; done

# keep a log of the active windows
while true; do (echo -n $(date  +"%F %T"):\ ; xwininfo -id $(xprop -root|grep "ACTIVE_WINDOW("|cut -d\  -f 5) | grep "Window id" | cut -d\" -f 2 ) >> logfile; sleep 60; done

# MPD + Digitally Imported
wget -q -O - http://listen.di.fm/public2 | sed 's/},{/\n/g' | perl -n -e '/"key":"([^"]*)".*"playlist":"([^"]*)"/; print "$1\n"; system("wget -q -O - $2 | grep -E '^File' | cut -d= -f2 > di_$1.m3u")'

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Download a file and uncompress it while it downloads
wget http://URL/FILE.tar.gz -O - | tar xfz -

# Matrix Style
while true ; do IFS="" read i; echo "$i"; sleep .01; done < <(tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep color "[^ ]")

# Labyrinth pattern
while ( true ) ; do if [ $(expr $RANDOM % 2 ) -eq 0 ] ; then echo -ne "\xE2\x95\xB1" ; else echo -ne "\xE2\x95\xB2" ; fi ; done

# Watch the National Debt clock
watch -n 10  "wget -q http://www.brillig.com/debt_clock -O - | grep debtiv.gif | sed -e 's/.*ALT=\"//' -e 's/\".*//' -e 's/ //g'"

# Hold off any screensavers/timeouts
while true; do xdotool mousemove_relative 1 1; xdotool mousemove_relative  -1 -1; sleep $((60 * 4)); done

# External IP (raw data)
wget -qO- http://utils.admin-linux.fr/ip.php

# Print trending topics on Twitter
wget http://search.twitter.com/trends.json -O - quiet | ruby -rubygems -e 'require "json";require "yaml"; puts YAML.dump(JSON.parse($stdin.gets))'

# Lists the size of certain file in every 10 seconds
watch -n 10 'du -sk testfile'

# Monitor RX/TX packets and any subsquent errors
watch 'netstat -aniv'

# Watch active calls on an Asterisk PBX
watch "asterisk -vvvvvrx 'core show channels' | egrep \"(call|channel)\""

# Connect to FreeWifi hotspot (France) and keep the connection active
while true ; do wget quiet no-check-certificate post-data 'login=my_account_number&password=my_password&submit=Valider' 'https://wifi.free.fr/Auth' -O '/dev/null' ; sleep 600; done

# Find last reboot time
who -b

# Download an entire static website to your local machine
wget recursive  page-requisites convert-links www.moyagraphix.co.za

# pop-up messages on a remote computer
while : ; do if [ ! $(ls -l commander | cut -d ' ' -f5) -eq 0 ]; then notify-send "$(less commander)"; > commander; fi; done

# Create .pdf from .doc
wvPDF test.doc test.pdf

# send DD a signal to print its progress
watch -n 1 pkill -USR1 "^dd$"

# Send an email from the terminal when job finishes
wait_for_this.sh; echo "wait_for_this.sh finished running" | mail -s "Job Status Update" username@gmail.com

# watch your network load on specific network interface
watch -n1 'ifconfig eth0|grep bytes'

# Simple Video Surveillance by email
while true ; do fswebcam -d /dev/video0 -r 1280x1024 -F 15 - | uuencode $(date +\%Y\%m\%d\%H\%M).jpeg | mail -s "Video surveillance" me@gmail.com ; sleep 300 ; done

# Get My Public IP Address
wget -qO - http://myip.dk/ | egrep -m1 -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'

# fork performance test
while (true); do date utc; done | uniq -c

# Expedient hard disk temprature and load cycle stats
watch -d 'sudo smartctl -a /dev/sda | grep Load_Cycle_Count ; sudo smartctl -a /dev/sda | grep Temp'

# Repeat a command until stopped
while true ; do echo -n "`date`";curl localhost:3000/site/sha;echo -e;sleep 1; done

# Count lines using wc.
wc -l file.txt

# Watch RX/TX rate of an interface in kb/s
while [ /bin/true ]; do OLD=$NEW; NEW=`cat /proc/net/dev | grep eth0 | tr -s ' ' | cut -d' ' -f "3 11"`; echo $NEW $OLD | awk '{printf("\rin: % 9.2g\t\tout: % 9.2g", ($1-$3)/1024, ($2-$4)/1024)}'; sleep 1; done

# make, or run a script, everytime a file in a directory is modified
while true; do inotifywait -r -e MODIFY dir/ && make; done;

# Continually monitor things
while (true); do clear; uname -n; echo ""; df -h /; echo ""; tail -5 /var/log/auth.log; echo ""; vmstat 1 5; sleep 15; done

# set wallpaper on windowmaker in one line
wmsetbg -s -u path_to_wallpaper

# shutdown if wget exit
while pgrep wget || sudo shutdown -P now; do sleep 1m; done

# Check wireless link quality with dialog box
while [ i != 0 ]; do sleep 1 | dialog clear gauge "Quality: " 0 0 $(cat /proc/net/wireless | grep $WIRELESSINTERFACE | awk '{print $3}' | tr -d "."); done

# resolving basic authentication problem(401) with wget
wget auth-no-challenge server-response -O- $url 2>&1 | grep "Cookie" | sed "s/^  Set-//g" > cookie.txt;  wget auth-no-challenge server-response http-user="user" http-password="pw" header="$(cat cookie.txt)" -O- $url

# continuously check size of files or directories
while true; do du -s <file_or_directory>; sleep <time_interval>; done

# Put the machine to sleep after the download(wget) is done
while [ -n "`pgrep wget`" ]; do sleep 2 ;done; [ -e "/tmp/nosleep"] || echo  mem >/sys/power/state

# Download an entire website from a specific folder on down
wget recursive no-clobber page-requisites html-extension convert-links domains website.org no-parent www.website.com/folder

# check the status of 'dd' in progress (OS X)
while pgrep ^dd; do pkill -INFO dd; sleep 10; done

# Command to logout all the users in one command
who -u|grep -v root|awk {'print $6'}|kill  `awk {'print $0'}`

# Find an installed app
wmic product | findstr /I "name_of_app"

# Not a kismet replacement...
watch -n .5 "iwlist wlan0 scan"

# watch the previous command
watch -n1 -d !!

# Burn an ISO on commandline with wodim instead cdrecord
wodim -v speed=4 dev='/dev/scd0' foo.iso

# Continuously show wifi signal strength on a mac
while i=1; do /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep CtlRSSI; sleep 0.5; done

# Keep track of diff progress
watch -d "ls -l /proc/$!/fd"

# use wget to check if a remote file exists
wget -O/dev/null -q URLtoCheck && echo exists || echo not exist

# Remind yourself every 15 minutes (repeated reminders)
watch -n 900 "notify-send -t 10000 'Look away. Rest your eyes'"

# Download and install the newest dropbox beta
wget http://forums.dropbox.com && wget $(cat index.html|grep "Latest Forum Build"|cut -d"\"" -f2) && wget $(cat topic.php*|grep "Linux x86:"|cut -d"\"" -f2|sort -r|head -n1) && rm -rf ~/.dropbox* && rm index.html *.php* && tar zxvf dropbox-*.tar.gz -C ~/

# monitor the last command run
watch !!

# Use acpi and notify-send to report current temperature every five minutes.
while notify-send "`acpi -t`"; do sleep 300; done

# Periodic Display of Fan Speed with Change Highlights
watch -n 10 -d eval "sensors | grep RPM | sed -e 's/.*: *//;s/ RPM.*//'"

# Monitor a file's size
watch -n 60 du /var/log/messages

# Download all PDFs from an authenificated website
wget -r -np -nd -A.pdf user *** password *** http://www.domain.tld/courses/***/download/

# Find the package that installed a command
whatinstalled () { local cmdpath=$(realpath -eP $(which -a $1 | grep -E "^/" | tail -n 1) 2>/dev/null) && [ -x "$cmdpath" ] && dpkg -S $cmdpath 2>/dev/null | grep -E ": $cmdpath\$" | cut -d ":" -f 1; }

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Extract tarball from internet without local saving
wget -qO - "http://www.tarball.com/tarball.gz" | tar zxvf -

# Extract tarball from internet without local saving
wget -qO - "http://www.tarball.com/tarball.gz" | tar zxvf -

# Download all mp3's listed in an html page
wget -r -l1 -H -t1 -nd -N -np -A.mp3 -erobots=off [url of website]

# monitor memory usage
watch vmstat -sSM

# Create a continuous digital clock in Linux terminal
while [ 1 ] ; do echo -en "$(date +%T)\r" ; sleep 1; done

# Press a key automatically
while true; do xvkbd -xsendevent -text "\[$KEY]" && sleep 2; done

# let the cow suggest some commit messages for you
wget -qO- http://whatthecommit.com/index.txt | cowsay

# Download and install the OpenStore on the Ubuntu Phone
wget https://open.uappexplorer.com/api/download/openstore.openstore-team/openstore.*_*_armhf.click && pkcon install-local allow-untrusted openstore.*_*_armhf.click

# Test http request every second, fancy display.
watch -n 1 nc localhost 80 '<<EOF GET / HTTP/1.1 Host: tux-ninja Connection: Close  EOF'

# Command to logout all the users in one command
who -u | grep -vE "^root " | kill `awk '{print $6}'`

# Simple addicting bash game.
while $8;do read n;[ $n = "$l" ]&&c=$(($c+1))||c=0;echo $c;l=$n;done

# Automatically download Ubuntu 10.04 when available
while true; do if wget http://releases.ubuntu.com/10.04/ubuntu-10.04-desktop-i386.iso.torrent; then ktorrent silent ubuntu-10.04-desktop-i386.iso.torrent ; date; break; else sleep 5m; fi; done

# Play music from youtube without download
wget -q -O - `youtube-dl -b -g $url`| ffmpeg -i - -f mp3 -vn -acodec libmp3lame -| mpg123  -

# List your largest installed packages.
wajig large

# Monitor TCP opened connections
watch -n 1 "netstat -tpanl | grep ESTABLISHED"

# beep when a server goes offline
while true; do [ "$(ping -c1W1w1 server-or-ip.com | awk '/received/ {print $4}')" != 1 ] && beep; sleep 1; done

# Downlaoad websites to 5 level and browse offline!
wget -k -r -l 5 http://gentoo-install.com

# Google dictionary of word definitions
wget -qO - "http://www.google.com/dictionary/json?callback=dict_api.callbacks.id100&q=steering+wheel&sl=en&tl=en&restrict=pr,de&client=te" | sed 's/dict_api\.callbacks.id100.//' | sed 's/,200,null)//'

# Run a command when a file is changed
while :; do n=$(md5 myfile); if [ "$h" != "$n" ]; then h=$n; scp myfile myserver:mydir/myfile; fi; sleep 1; done

# Get a funny one-liner from www.onelinerz.net
w3m -dump_source http://www.onelinerz.net/random-one-liners/1/ | awk ' /.*<div id=\"oneliner_[0-9].*/ {while (! /\/div/ ) { gsub("\n", ""); getline; }; gsub (/<[^>][^>]*>/, "", $0); print $0}'

# download newest adminer and rename to it's version accordingly
wget -N content-disposition http://www.adminer.org/latest.php

# View the newest xkcd comic.
wget `lynx dump http://xkcd.com/|grep png`

# Download latest NVIDIA Geforce x64 Windows driver
wget "us.download.nvidia.com$(wget -qO- "$(wget -qO- "nvidia.com/Download/processFind.aspx?psid=95&pfid=695&osid=19&lid=1&lang=en-us"|awk '/driverResults.aspx/ {print $4}'|cut -d "'" -f2|head -n 1)"|awk '/url=/ {print $2}'|cut -d '=' -f3|cut -d '&' -f1)"

# put command in a loop to keep trying a connection
while true; do nc <ip address of server> <port>;done

# floating point operations in shell scripts
wcalc -q <<< '3/5'

# A simple way to securely use passwords on the command line or in scripts
wget input-file=~/donwloads.txt user="$USER" password="$(gpg2 decrypt ~/.gnupg/passwd/http-auth.gpg 2>/dev/null)"

# search for a file in PATH
which <filename>

# monitor your CPU core temperatures in real time
while :; do sensors|grep ^Core|while read x; do printf '% .23s\n' "$x"; done; sleep 1 && clear; done;

# UPS Tracking Script
watch -t -c -n30 'wget -q -O- "http://wwwapps.ups.com/WebTracking/processInputRequest?TypeOfInquiryNumber=T&InquiryNumber1=1Z4WYXXXXXXXXXX" | html2text | sed -n "/Shipment Progress/,/Shipping Information/p" | grep -v "*" | ccze -A'

# Erase CD RW
wodim -v dev=/dev/dvd -blank=fast

# google chart api
wget -O chart.png 'http://chart.googleapis.com/chart?chs=250x100&chd=t:60,40&cht=p3&chl=Hello|World'

# Listen to a file
while true; do cat /usr/src/linux/kernel/signal.c > /dev/dsp; done

# Audible warning when a downloading is finished
while [ "$(ls $filePart)" != "" ]; do sleep 5; done; mpg123 /home/.../warning.mp3

# Find the package a command belongs to on debian-based distros
whichpkg () { dpkg -S $1 | egrep -w $(readlink -f "$(which $1)")$; }

# Wait for file to stop changing
while [ "$(ls -l full-time TargetFile)" != "$a" ] ; do a=$(ls -l full-time TargetFile); sleep 10; done

# Short one line while loop that outputs parameterized content from one file to another
while read l; do echo ${l%% *}; done < three-column-list.txt > only-first-column.txt

# Watch the disk fill up with change highlighting
watch -d -n 5 df

# Ruby - nslookup against a list of IP`s or FQDN`s
while read n; do host $n; done < list

# World Cup Live Score
watch -n10 no-title "w3m http://www.livescore.com/ |egrep 'live [0-9H]+[^ ]'"

# Monitor connection statistics with netstat and watch
watch -n 1 "netstat -ntu | sed '1,2d' | awk '{ print \$6 }' | sort | uniq -c | sort -k 2"

# Mortality Countdown
while [ 0 ]; do expr 2365200000 \- `date +%s` \- `date date "YYYY-mm-dd HH:MM:ss" +%s`; sleep 1; clear; done

# Monitoring sessions that arrive at your server
watch -n 1 -d "finger"

# command line fu roulette
wget -qO - www.commandlinefu.com/commands/random | grep "<div class=\"command\">" | sed 's/<[^>]*>//g; s/^[ \t]*//; s/&quot;/"/g; s/&lt;/</g; s/&gt;/>/g; s/&amp;/\&/g'

# Working random fact generator
wget randomfunfacts.com -O - 2>/dev/null | grep \<strong\> | sed "s;^.*<i>\(.*\)</i>.*$;\1;"

# download specific files only from a website
wget -r -P ./dl/ -A jpg,jpeg http://captivates.com

# Like top but for files
watch -d -n 2 'df; ls -FlAt;'

# recursively walk down no more than three levels and grab any file with an extension of mp3, mpg, mpeg, or avi
wget -A mp3,mpg,mpeg,avi -r -l 3 http://www.site.com/

# Download all data from Google Ngram Viewer
wget -qO - http://ngrams.googlelabs.com/datasets | grep -E href='(.+\.zip)' | sed -r "s/.*href='(.+\.zip)'.*/\1/" | uniq | while read line; do `wget $line`; done

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# ssh tunnel with auto reconnect ability
while [ ! -f /tmp/stop ]; do ssh -o ExitOnForwardFailure=yes -R 2222:localhost:22 target "while nc -zv localhost 2222; do sleep 5; done"; sleep 5;done

# Disco lights in the terminal
while true; do printf "\e[38;5;$(($(od -d -N 2 -A n /dev/urandom)%$(tput colors)))m.\e[0m"; done

# Run a command when a file is changed
while inotifywait -e modify /tmp/myfile; do firefox; done

# Download an Entire website with wget
wget -m -k -K -E http://url/of/web/site

# Console clock
while sleep 1; do echo -n "\r`date`"; done

# find which lines in a file are longer than N characters
while read i; do [ ${#i} -gt 72 ] && echo "$i"; done < /path/to/file

# Watch a dig in progress
watch -n1 dig google.com

# download the contents of a remote folder in the current local folder
wget -r -l1 -np -nd http://yoururl.com/yourfolder/

# Watch and cat the last file to enter a directory
watch "cat `ls -rcA1 | tail -n1`"

# Make a server's console beep when the network is down
while :; do ping -W1 -c1 -n 8.8.8.8 > /dev/null || tput bel > /dev/console; sleep 1; done

# Watch RX/TX rate of an interface in kb/s
while cat /proc/net/dev; do sleep 1; done | awk '/eth0/ {o1=n1; o2=n2; n1=$2; n2=$10; printf "in: %9.2f\t\tout: %9.2f\r", (n1-o1)/1024, (n2-o2)/1024}'

# Grab mp3 files from your favorite netcasts, mp3blog, or sites that often have good mp3s
wget -r -l1 -H -t1 -nd -N -np -A.mp3 -erobots=off -i ~/sourceurls.txt

# To get the CPU temperature continuously on the desktop
while sleep 1; do acpi -t | osd_cat -p bottom; done &

# Decrypt MD5
wget -qO - post-data "data[Row][cripted]=1cb251ec0d568de6a929b520c4aed8d1" http://md5-decrypter.com/  | grep -A1 "Decrypted text"  | tail -n1 | cut -d '"' -f3 | sed 's/>//g; s/<\/b//g'

# Get own public IP address
wget http://ipecho.net/plain -O - -q ; echo

# rotate the compiz cube via command line
wmctrl -o 1280,0

# Print the current time on the whole screen, updated every second
while(true); do printf "%s\f" $(date +%T); sleep 1; done  | sm -

# One command line web server on port 80 using nc (netcat)
while true ; do nc -l 80  < index.html ; done

# translates acronyms for you
wtf is <acronym>

# Get your external IP address without curl
wget -qO- icanhazip.com

# Text message on wallpaper
wallpaperWarn() { BG="/desktop/gnome/background/picture_filename"; convert "`gconftool-2 -g $BG`" -pointsize 70 -draw "gravity center fill red  text 0,-360 'Warn' fill white  text 0,360 'Warn'" /tmp/w.jpg; gconftool-2 set $BG -t string "/tmp/w.jpg"; }

# Automatically skip bad songs in your MPD playlist.
while :; do (mpc current | grep -i nickleback && mpc next); sleep 5; done

# watch snapshots commit in VMware ESX
watch 'ls -tough full-time *.vmdk'

# Emergency Alien Invasion Warning
while true; do xset dpms force off; sleep 0.3; xset dpms force on; xset s reset; sleep 0.3; done

# Watching Command
watch 'cat /proc/loadavg'

# speedtest
wget output-document=/dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip

# Extract icons from windows exe/dll
wrestool -x output . -t14 /path/to/your-file.exe

# count the appearance of a word or a string  in a given webpage
wget -q -O- PAGE_URL | grep -o 'WORD_OR_STRING' | wc -w

# Play all the music in a folder, on shuffle
while [[ 1 ]]; do n=( */* ); s=${n[$(($RANDOM%${#n[@]}))]}; echo -e " - $s"; mpg123 -q "$s"; done

# Stream and save Youtube video
wget `youtube-dl -g 'http://www.youtube.com/watch?v=-S3O9qi2E2U'` -O - | tee -a parachute-ending.flv | mplayer -cache 8192 -

# Monitoring file change while a copy
watch "ls -al myfile"

# download with checksum
wget -qO - http://www.google.com | tee >(md5sum) > /tmp/index.html

# Download latest released gitlab docker container
wget -qO- 'https://github.com'$(curl -s 'https://github.com'$(curl -s https://github.com/sameersbn/docker-gitlab/releases | grep -m 1 -o '<a.*[0-9\.]</a>' | cut -d '"' -f 2) | grep -o '<a.* rel="nofollow">' | grep 'tar.gz' | cut -d '"' -f 2)

# Download full FLAC albums from archive.org
wget -rc -A.flac tries=5 http://archive.org/the/url/of/the/album

# Carriage return for reprinting on the same line
while true; do echo -ne "$(date)\r"; sleep 1; done

# Monitor dynamic changes in the dmesg log.
watch "dmesg |tail -15"

# force change password for all user
while IFS=: read u x; do passwd -e "$u"; done < /etc/passwd

# kvm disk info
while read X ; do printf "$X "; virsh dumpxml $X | egrep "source dev|source file"; done< <(virsh list | awk '$1 ~ /^[1-9]/ { print $2 }')

# Get your external IP address
wget -qO - http://www.sputnick-area.net/ip;echo

# Git autocomplete
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash; mv git-completion.bash ~/.git-completion.bash; echo "source ~/.git-completion.bash" > ~/.bashrc; source ~/.git-completion.bash

# Show directory sizes, refreshing every 2s
watch 'find -maxdepth 1 -mindepth 1 -type d  |xargs du -csh'

# Find processes blocked on IO
while [ 1 ] ;do ps aux|awk '{if ($8 ~ "D") print }'; sleep 1 ;done

# Automatically sync current git project with remote host while editing
while true; do rsync -vR $(git ls-files | inotifywait -q -e modify -e attrib -e close_write fromfile - format '%w') user@host:dest/dir/; done

# repeat a command every x seconds
while sleep 1; do foo; done

# Download an entire website
wget -mkEpnp example.com

# Send an email from the terminal when job finishes
wait_for_this.sh; echo "wait_for_this.sh finished running with status $?" | mail -s "Job Status Update" username@gmail.com

# Get name of running Window Manager
wmctrl -m | grep Name: | awk '{print $2}'

# repeat a command every one second
watch -n 1 "do foo"

# Daemonize nc - Transmit a file like a http server
while ( nc -l 80 < /file.htm > : ) ; do : ; done &

# Get all files of particular type (say, mp3) listed on some web page (say, audio.org)
wget -c -r no-parent -A .mp3 http://audio.org/mp3s/

# Download just html of a whole website
wget mirror random-wait recursive robots=off -U mozilla  -R gif,jpg,pdf reject-regex '((.*)\?(.*))|(.*)' -c [URLGOESHERE]

# Watch changeable interrupts continuously
watch -n1 'cat /proc/interrupts

# Monitor ElasticSearch cluster health - Useful for keeping an eye on ES when rebalancing takes place
watch -n 1 curl -XGET 'http://localhost:9200/_cluster/health?pretty=true'

# To recover and get back to your desktop's default window manager in Linux Mint 17.3.
wm-recovery

# Quick Battery Power Monitor
watch -n 5 "upower -d | grep energy -A 4"

# shortcut to immediately view any script with less
which script | xargs less

# see who is on this machine
w

# see the size of the downloaded traffic
watch -n 1 "echo | sudo iptables -nvL | head -1 | awk '{print \$7}'"

# grep BTC last trading price from BTC-E, but u can change it.. they got em all
wget -q -O- http://bitinfocharts.com/markets/btc-e/btc-usd.html |grep -o -P 'lastTrade">([0-9]{1,})(.){0,1}[0-9]{0,}' |grep -o -P '(\d)+(\.){0,1}(\d)*' |head -n 1

# terminal based annoy-a-tron
while true; do sleep $(($RANDOM/1000)) && beep -f 2000 -l $(($RANDOM/100)) ; done

# Realtime clock cowsay
watch -tn1 'figlet -f slant  `date +%T` | cowsay -n -f telebears'

# Wipe a directory recursively & safely
wipe -rfqQ 10 directory/

# Show a running count of CLOSE_WAIT and TIME_WAIT connections for debugging network apps
watch -n5 ss \| grep -c WAIT

# Execute ls -lah every one second
while true; do ls -lah && sleep 1; done

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# External IP address
wget http://cmyip.com -O - -o /dev/null | grep -Po '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+'

# get a random command-line-fu tip
w3m -dump http://www.commandlinefu.com/commands/random/plaintext

# check broken links using wget as a spider
wget spider  -o wget.log  -e robots=off wait 1 -r -p http://www.example.com

# Watch all postgres processes, sorted by memory use
watch -n 1 '{ ps aux | head -n 1; ps aux sort -rss | grep postgres | grep -v grep; } | cat'

# archlinux: find more commands provided by the package owning some command
w=`whereis <command> | awk '{print $2}'`; p=`pacman -Qo $w | sed -e 's/.*is owned by \([[:alpha:]]\+\).*/\1/'`; pacman -Ql $p | grep 'bin'

# Backup all MySQL Databases to individual files
while read; do mysqldump $REPLY | gzip > "/backup/mysql/$REPLY.sql.gz"; done < <( mysql -e 'show databases' -s skip-column-names )

# Save a file you edited in vim without the needed permissions
w !sudo cat >%

# Make mirror of ftp directory
wget -m ftp-user=root ftp-password=pass -A "*.csv" -nd -P "dirname" ftp://46.46.46.46/../mnt/sd/

# Continuously listen on a port and respond with a fixed message with netcat (and respond to kill signals)
while true ; do nc -l -p 4300 -c 'echo hello'; test $? -gt 0 && break; done

# Matrix Style
while $t; do for i in `seq 1 30`;do r="$[($RANDOM % 2)]";h="$[($RANDOM % 4)]";if [ $h -eq 1 ]; then v="\e[1m $r";else v="\e[2m $r";fi;v2="$v2 $v";done;echo -e $v2;v2="";done;

# who is the console user?
who | grep :0 | head -1 | cut -d " " -f 1

# How to run a shell script on a remote host using ftp
watch -n10 "if test -e run.txt ; then chmod +x script.sh && ./script.sh && rm run.txt || rm run.txt && echo > failed.txt ; fi"

# Monitor file contents that is being overwritten regularly
while sleep 1; do clear; cat /tmp/whatever.cue; done

# Print info about your real user.
who loves mum

# bash screensaver (scrolling ascii art with customizable message)
while [ 1 ]; do banner 'ze missiles, zey are coming! ' | while IFS="\n" read l; do echo "$l"; sleep 0.01; done; done

# Parallel file downloading with wget
wget -nv http://en.wikipedia.org/wiki/Linux -O- | egrep -o "http://[^[:space:]]*.jpg" | xargs -P 10 -r -n 1 wget -nv

# Command line email/SMS Bomber
while true; do echo "message here" | mutt something@something.com ; done

# Monitor Wireless Adapter Stats
watch -n 1 cat /proc/net/wireless

# Log a command's votes
while true; do curl -s http://www.commandlinefu.com/commands/view/3643/log-a-commands-votes | grep 'id="num-votes-' | sed 's;.*id="num-votes-[0-9]*">\([0-9\-]*\)</div>;\1;' >> votes; sleep 10; done

# Monitoring file change while a copy
while true; do ls -all myfile; spleep 1; clear; done

# Query Wikipedia via console over DNS
wki () { 	dig +short txt "${*// /_}".wp.dg.cx | sed -e 's/^"\(.*\)"$/\1/' -e 's/\([^\]\)"[^\]*"/\1/g' -e 's/\\\(.\)/\1/g' }

# Matrix Style
while true; do printf "\e[32m%X\e[0m" $((RANDOM%2)); for ((i=0; i<$((RANDOM%128)); i++)) do printf " "; done; done

# simple pomodoro
while true; do     sleep $((40 * 60)); echo "Fuck away for some time"; sleep $((3 * 60)); done &

# download whole website localls with wget mirroring
wget recursive no-clobber page-requisites html-extension convert-links restrict-file-names=windows domains website.tld http://www.website.tld

# Monitor system load and print out top offending processes
while sleep 1; do if [ $(echo "$(cat /proc/loadavg | cut -d' ' -f1) > .8 " | bc) -gt 0 ]; then echo -e "\n\a"$(date)"       \e[5m"$(cat /proc/loadavg)"\e[0m"; ps aux  sort=-%cpu|head -n 5; fi; done

# Monitor the queries being run by MySQL
watch -n 1 mysqladmin user=<user> password=<password> processlist

# Display a cool clock on your terminal
watch -t -n1 "date +%T|figlet"

# Monitor the queries being run by MySQL
watch -n 1 mysqladmin user=<user> password=<password> processlist

# Display a cool clock on your terminal
watch -t -n1 "date +%T|figlet"

# let the cow suggest some commit messages for you
while true; do curl -s http://whatthecommit.com | perl -p0e '($_)=m{<p>(.+?)</p>}s' | cowsay; sleep 2; done

# Find the package a command belongs to on rpm-based distros
whichpkg() { rpm -qf "$@"; }

# TCP server on one socket
while true; do cat "file"; done | nc -v -l 1337

# Display an updating clock in sh variants
while true; do date; sleep 1; done

# csv file of ping every minutes
while true; do (date | tr "\n" ";") && ping -q -c 1 www.google.com|tail -1|cut -d/ -f5 ;sleep 1; done >> uptime.csv

# What addresses are your applications talking to?
watch "lsof -i -P |grep ESTABLISHED |awk '{printf \"%15.15s \\t%s\\n\", \$1, \$9}'"

# Move Mouse, click there, sleep, and again....
while true; do xdotool mousemove 1390 500; xdotool click 1; sleep 1; xdotool mousemove 780 800; xdotool click 1; sleep 1; xdotool mousemove 1000 800; xdotool click 1; sleep 1;done

# @mail.com by adding the line in list.txt
while read line; do echo -e "$line@mail.com"; done < list.txt

# Download current stable kernel version from kernel.org
wget no-check-certificate https://www.kernel.org/$(wget -qO- no-check-certificate https://www.kernel.org | grep tar | head -n1 | cut -d\" -f2)

# Echo the latest commands from commandlinefu on the console
wget -O - http://www.commandlinefu.com/commands/browse/rss 2>/dev/null | awk '/\s*<title/ {z=match($0, /CDATA\[([^\]]*)\]/, b);print b[1]} /\s*<description/ {c=match($0, /code>(.*)<\/code>/, d);print d[1]"\n"} '

# Show bandwidth use oneliner
while true; do cat /proc/net/dev; sleep 1; done | awk -v dc="date \"+%T\"" '/eth0/{i = $2 - oi; o = $10 - oo; oi = $2; oo = $10; dc|getline d; close(dc); if (a++) printf "%s %8.2f KiB/s in %8.2f KiB/s out\n", d, i/1024, o/1024}'

# Switch workspace
wmctrl -o 100,0

# Which PATH variable should I use for this scirpt?
whichpath() { local -A path; local c p; for c; do p=$(type -P "$c"); p=${p%/*}; path[${p:-/}]=1; done; local IFS=:; printf '%s\n' "${!path[*]}"; }

# Copy with TAR PV and NC
while true; do nc -l -p 50002 | pv | tar -xf -; done

# run a command repeatedly indefinately
while true ; do killall mc ; done

# Set executable permissions only to executable files
while IFS= read -r -u3 -d $'\0' file; do     file "$file" | egrep -q 'executable|ELF' && chmod +x "$file"; done 3< <(find . -type f -print0)

# MEMORY DUMP ACROSS NETWORK 4 CYGWIN
wmr - | pv -s $SIZEOFMEM  | ssh -p 40004 -c arcfour,blowfish-cbc -C root@savelocation.com "cat - > /forensics/T430-8gb-RAM1.dd"

# Iterate through a file where instead of Newline characters, values are separated with a non-white space character.
while [[ COUNTER -le 10 && IFS=':' ]]; do for LINE in $(cat /tmp/list); do some_command(s) $LINE; done; COUNTER=$((COUNTER+1)); done

# for all who don't have the watch command
watch() { if [ -z "$1" ]; then echo "usage: watch interval command" return fi sec=$1 shift while test :; do clear; date=$(date); echo -e "Every "$sec"s: $@ \t\t\t\t $date"; echo $@; sleep $sec; done }

# Schedule one job after another (running).
while ps -p $PID; do sleep 1; done; script2

# Generate an XKCD #936 style 4 word password
word=$(shuf -n4 /usr/share/dict/words); for w in ${word[@]}; do  w=${w^}; w=${w//\'/}; p+=$w; done; echo $p

# php command show status memcache
watch 'php -r '"'"'$m=new Memcache;$m->connect("127.0.0.1", 11211);print_r($m->getstats());'"'"

# view the 10 most cpu using processes in browser
while true; do ps aux | sort -rk 3,3 | head -n 11 | cut -c -120 | netcat -l -p 8888 2>&1 >/dev/null; done &

# Password server
while [ 1 ]; do cat /dev/urandom | tr -dc ' -~' | head -c 10 | ncat -l 8080 &> /dev/null; test $? -gt 128 && break; done

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# send DD a signal to print its progress
while :;do killall -USR1 dd;sleep 1;done

# download and run script from trusted webserver
wget -qO - sometrusted.web.site/tmp/somecommand | sh

# watch iptables counters
while true; do iptables -nvL > /tmp/now; diff -U0 /tmp/prev /tmp/now > /tmp/diff; clear; cat /tmp/diff; mv /tmp/now /tmp/prev; slee p 1; done

# Pop up a Growl alert if Amtrak wifi doesn't know where to find The Google
while [ 1 ]; do (ping -c 1 google.com || growlnotify -m 'ur wifiz, it has teh sad'); sleep 10; done

# How to know if your NIC receive link
watch ethtool eth0

# Watching directories
watch -n1 "ls -p | grep '/$'"

# List wireless clients connected to an access point
wlanconfig <wireless_device> list sta

# This command watches the top 10 processes currently taking up the most memory with thread & other info, incase you don't want to use the TOP or HTOP command.
watch -n .8 'ps -eaLo uname,pid,pcpu,pmem,lwp,nlwp,rss,vsz,start_time,args sort -pmem| head -10'

# Watch those evil Red Hat states code D Uninterruptible sleep (usually IO).
watch -n 1 "ps aux | sed -n 's/ D /&/p'"

# How to run a command on a list of remote servers read from a file
while read server; do ssh -n user@$server "command"; done < servers.txt

# Run remote web page, but don't save the results
wget -q spider http://server/cgi/script

# A fun little harmless prank to pull on your friends.
while true; do sleep $(($RANDOM%50)); timeout 1 speaker-test -f 20000 -t sine 2>/dev/null; done&

# Shows live outboud connection attempts and/or suceess, refreshing every 0.5 seconds
watch -n0.5 -d "netstat -nafo | grep -v -E 'LISTENING|0.0.0.0|127.0.0.1|\[::\]:|\[::1\]:'"

# Watch netstat output every 2 seconds
watch -n 2 netstat -antu

# Random (sfw, 1920x1080) wallpaper from wallbase.cc
wget no-use-server-timestamps  $(curl $(curl http://wallbase.cc/random/23/eqeq/1920x1080/0/100/20 | grep 'wallpaper/' | awk -F'"' '{print $2}' | head -n1) | grep -A4 bigwall | grep img | awk -F'"' '{print $2}'); feh bg-center $(ls -1t | head -n1)

# Make ABBA better (requires firefox)
wget -O - -q http://www.azlyrics.com/lyrics/abba/takeachanceonme.html | sed -e 's/[cC]hance/dump/g' > ~/tdom.htm && firefox ~/tdom.htm

# uncompress file that is compressed multiple times
while true; do for bzipfile in $(file *|egrep bzip2|awk '{print $1'}|cut -d':' -f1); do bunzip2 $bzipfile; done; done

# One liner to check out CLOSE_WAIT and TIME_WAIT connection every five seconds while debugging network apps
while true; do netstat -a|grep WAIT|wc -l; sleep 5; done

# Measures download speed on eth0
while true; do X=$Y; sleep 1; Y=$(ifconfig eth0|grep RX\ bytes|awk '{ print $2 }'|cut -d : -f 2); echo "$(( Y-X )) bps"; done

# Speak the top 6 lines of your twitter timeline every 5 minutes.....
while [ 1 ]; do curl -s -u username:password  http://twitter.com/statuses/friends_timeline.rss|grep title|sed -ne 's/<\/*title>//gp' | head -n 6 |festival tts; sleep 300;done

# Find processes stuck in dreaded
while true; do date; ps auxf | awk '{if($8=="D") print $0;}'; sleep 1; done

# Monitor open connections for httpd including listen, count and sort it per IP
watch "netstat -plan | grep -v LISTEN | grep \":80 \" | awk {'print \$5'} | cut -d: -f 1 | uniq -c | sort -nk 1"

# Download all images from a website in a single folder
wget -nd -r -l 2 -A jpg,jpeg,png,gif http://website-url.com

# Get the latest Geek and Poke comic
wget -q $(lynx dump 'http://geekandpoke.typepad.com/' | grep '\/.a\/' | grep '\-pi' | head -n 1 | awk '{print $2}') -O geekandpoke.jpg

# watch iptables counters
watch -d -n 2 iptables -nvL

# Number of apache2 processes running with memory usage filter (sorting asc)
watch -n0.5 'ps -e -o pid,vsz,comm= | sort -n -k 2 | grep apache | wc -l'

# Geo Location of an IP-address
wget -qO - whatismyipaddress.com/ip/<type ip address> | grep -E "City:|Country:" | sed 's:<tr><th>::'| sed 's</th>::' | sed 's:</td>::' | sed 's:</tr>::' | sed 's:<img*::'

# Download all files of a certain type with wget.
wgetall () { wget -r -l2 -nd -Nc -A.$@ $@ }

# Poor man's watch: Repeat a command every N seconds
watch() { while true; do echo "<Ctrl+V><Ctrl+L>Every 2.0s: $@"; date; eval "$@"; sleep 2; done }

# Monitor ElasticSearch cluster health - Useful for keeping an eye on ES when rebalancing takes place
while true; do clear; curl -XGET 'http://localhost:9200/_cluster/health?pretty=true'; sleep 1; done

# my command for downloading  delicious web links,
wget  -H -r  -nv level=1  -k -p -erobots=off -np -N  exclude-domains=del.icio.us,doubleclick.net exclude-directories=

# Define words with google. (busybox version)
wget -q -U busybox -O- "http://www.google.com/search?ie=UTF8&q=define%3A$1" | tr '<' '\n' | sed -n 's/^li>\(.*\)/\1\n/p'

# Monitoring a port connections
watch -n1 'netstat -tn | grep -P :22'

# Download an entire static website to your local machine
wget recursive  page-requisites convert-links www.moyagraphix.co.za

# List widescreen wallpapers in current dir
wallpaper -w 800 -x 16384 -a 1.7 -b 1.85 *

# Displays mpd playing status in the terminal first raw
while sleep 1; do (mpc status;mpc currentsong)|awk 'BEGIN{FS=": "}/^Artist:/{r=r""$2};/^Title:/{r=r" - "$2};/^time:/{r=$2" "r};/^state: play/{f=1}END{if(f==1){print r}}'|echo -ne "\e[s\e[0;0H\e[K\e[0;44m\e[1;33m$(cat -)\e[0m\e[u";done &

# Wait for Web service to spin up, aka alert me when the server stops returning a 503
while true; do curl -vsL -o /dev/null example.com 2>&1 | grep 503 > /dev/null || echo "OK: server is up."; sleep 8; done

# build DTT channel list with w-scan
w_scan -X -P -t 2 -E 0 -c IT > dvb-channels.conf

# Generate random sensible passwords, and copy them to the clipboard
while true; do curl -s http://sensiblepassword.com/?harder=1 | tail -n 15 | head -n 1 | sed 's;<br/>;;' | cut -c 5- | cb; sleep 1; done

# Watch the number of RabbitMQ connections by user (sorted)
watch -d "rabbitmqctl -q list_connections | awk '{gsub(/[ \t]+/, \"\", \$1); print \$1}' | sort | uniq -c | sort -nr"

# Monitor a log file, filling up all available space in the terminal window and preventing line wrap
watch -n 4 "tail -n $(expr $(tput lines) - 4) /var/log/apache2/access.log | cut -c 1-$(tput cols)"

# Monitor a file's size
while [ 1 ]; do du /var/log/messages;sleep 60; done

# Continously show httpd's error log
while [ 1 ]; do tail /var/log/httpd/error_log; sleep 2; clear; done

# set desktop background to highest-rated image from Reddit /r/wallpapers
wget -O - http://www.reddit.com/r/wallpapers.rss | grep -Eo 'http://i.imgur.com[^&]+jpg' | head -1 | xargs wget -O background.jpg

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# pretend to be busy in office to enjoy a cup of coffee
while [ true ]; do head -n 100 /dev/urandom; sleep .1; done | hexdump -C | grep "ca fe"

# check the version of wine
wine version

# check the version of wine
wine version

# uninstall all the software which is installed in wine
wine uninstaller

# Powershell Curl Logs Signal Strength of Cable Modem
while(1){while((date -f ss)%10-gt0){sleep -m 300} echo "$(date -u %s) $((curl 192.168.100.1/cmSignalData.htm).parsedhtml.body.childnodes.item(1).firstchild.firstchild.childnodes.item(5).outertext|%{$_ -replace '\D+\n',''})">>modemlog.txt;sleep 1;echo .}

# open the wine configuration
winecfg

# Wake up a remote computer
wakeonlan 00:00:DE:AD:BE:EF

# what the free memory grow or shink
watch -d "free -mt"

# Poor man's unsort (randomize lines)
while read l; do echo $RANDOM "$l"; done | sort -n | cut -d " " -f 2-

# Display a quote of the day in notification bubble
wget -q -O "quote" https://www.goodreads.com/quotes_of_the_day;notify-send "$(echo "Quote of the Day";cat quote | grep '&ldquo;\|/author/show' | sed -e 's/<[a-zA-Z\/][^>]*>//g' | sed 's/&ldquo;//g' | sed 's/&rdquo;//g')"; rm -f quote

# Wait the end of prog1 and launch prog2
while pkill -0 prog1; do sleep 10; done; prog2

# Write a bootable Linux .iso file directly to a USB-stick
wget -O/dev/sdb ftp://ftp.debian.org/debian/dists/stable/main/installer-amd64/current/images/netboot/mini.iso

# get events from google calendar for a given dates range
wget -q -O - 'URL/full?orderby=starttime&singleevents=true&start-min=2009-06-01&start-max=2009-07-31' |  perl -lane '@m=$_=~m/<title type=.text.>(.+?)</g;@a=$_=~m/startTime=.(2009.+?)T/g;shift @m;for ($i=0;$i<@m;$i++){ print $m[$i].",".$a[$i];}';

# Watch Processes with D status (sleep and wait for IO)
watch -n 1 "(ps aux | awk '\$8 ~ /D/  { print \$0 }')"

# A way to query from the CLI all users in a Active Directory domain using wbinfo.
wbinfo - Get all users group membership, with primary group starred (Red description for full command)

# I/O activity on a machine
watch -n 1 'iostat -xmd 1 2'

# Check whether laptop is running on battery or cable
while true;do clear;echo -n Current\ `grep voltage /proc/acpi/battery/BAT0/state | awk '{print $2" "$3" "$4}'`;for i in `seq 1 5`;do sleep 1;echo -n .;done;done

# print latest (top 10, top 3 or *) commandlinefu.com commands
wget -qO - http://www.commandlinefu.com/feed/tenup | xmlstarlet sel -T -t -o '&lt;x&gt;' -n -t -m rss/channel/item -o '&lt;y&gt;' -n -v description -o '&lt;/y&gt;' -n -t -o '&lt;/x&gt;' | xmlstarlet sel -T -t -m x/y -v code -n

# Use wget to download one page and all it's requisites for offline viewing
wget -e robots=off -E -H -k -K -p http://<page>

# Maximize active window
wmctrl -r :ACTIVE: -b add,maximized_vert; wmctrl -r :ACTIVE: -b add,maximized_horz

# View a random xkcd comic
wget -q http://dynamic.xkcd.com/comic/random/ -O-| sed -n '/<img src="http:\/\/imgs.xkcd.com\/comics/{s/.*\(http:.*\)" t.*/\1/;p}' | awk '{system ("wget -q " $1 " -O- | display -title $(basename " $1") -write /tmp/$(basename " $1")");}'

# Mirror site with rel-links, 20s delay via Wget
wget -mk -w 20 http://www.example.com/

# Download and extract a tarball on a fly, saving it
wget -O- http://example.com/mytarball.tgz | tee mytarball.tgz | tar xzv

# Watch top 10 processes sorted by cpu usage
watch "ps aux | sort -nrk 3,3 | head -n 10"

# 4chan image batch downloader
wget thread_link -qO - | sed 's/\ /\n/g' | grep -e png -e jpg | grep href | sed 's/href\=\"/http:/g' | sed 's/"//g' | uniq | xargs wget

# pc is ghosted?!
while true; do locate *.wav | sed "{${RANDOM:1:2}q;d;}" | xargs aplay; sleep 10; done &> /dev/null &

# Wait for processes, even if not childs of current shell
wait 536; anywait 536; anywaitd 537; anywaitp 5562 5563 5564

# Colored word-by-word diff of two files
wdiff -n -w $'\033[30;41m' -x $'\033[0m' -y $'\033[30;42m' -z $'\033[0m' oldversion.txt newversion.txt

# Wait for Web service to spin up, aka alert me when the server stops returning a 503
while curl -dsL example.com 2>&1 | grep 503;do sleep 8;done;echo server up

# Download first mp3 file linked in a RSS feed
wget `curl -s <podcast feed URL> | grep -o 'https*://[^"]*mp3' | head -1`

# AmazonMP3 Daily Deals
wget -qO- "http://www.amazon.com/b?ie=UTF8&node=163856011" | grep Daily | sed -e 's/<[^>]*>//g' -e 's/^ *//' -e 's/\&[^;]*;/ /'

# What is my public IP address
wget -qO - http://whatismyip.org | tail

# get Windows OS architecture using Cygwin
wmic OS get OSArchitecture /value | grep -Eo '[^=]*$'

# Get your external ip right into your xclipboard
w3m mon-ip.com -dump|grep -Eo "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"|uniq|xclip -selection clipboard

# Download files linked in a RSS feed
wget -q -O- http://example-podcast-feed.com/rss | grep -o "<enclosure[ -~][^>]*" | grep -o "http://[ -~][^\"]*" | xargs wget -c

# checks if host /service is up on a host that doesn't respond to ping
while true; do clear; nmap ${hostname} -PN -p ${hostport}; sleep 5; done

# List contact infomation for Domain list
whois -H $(cat ./list_of_domains) | awk 'BEGIN{RS=""}/Registrant/,/Registration Service Provider:/ {print} END{print "\n"}'

# Watch RX/TX rate of an interface in kb/s
while :; do OLD=$NEW; NEW=`cat /proc/net/dev | grep eth0 | tr -s ' ' | cut -d' ' -f "3 11"`; echo $NEW $OLD | awk '{printf("\rin: % 9.2g\t\tout: % 9.2g", ($1-$3)/1024, ($2-$4)/1024)}'; sleep 1; done

# wget
wget www.google.com

# Show a clock in the upper right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-11));echo -e "\e[31m`date +%T`\e[39m";tput rc;done &

# A way to run commands on a remote computer to be displayed on the remote computer
while :;do if [ ! $(ls -l commander |cut -d ' ' -f5) -eq 0 ]; then echo "Ran command: $(less commander) @ $(date +%D) $(date +%r)" >> comm_log;"$(less commander)";> commander;fi;done

# Get all files with a certain extension linked to on a page
wget -r -nd -q -A "*.ext" http://www.example.org/

# Visual system load display
while [ true ]; do cat /proc/loadavg  | perl -ne 'm/(^[^ ]+)/; $L = $1; print "*" x $L; print " $L\n";' ; sleep 6; done

# Auto-kill auto-spawned process
while [ ! -z $(ps -A | grep -m1 kdiff3 | awk '{print $1}') ]; do kill -9 $(ps -A | grep -m1 kdiff3 | awk '{print $1}'); sleep 1; done

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Google text-to-speech in mp3 format
wget -q -U Mozilla -O output.mp3 "http://translate.google.com/translate_tts?ie=UTF-8&tl=en&q=hello+world

# burn an ISO image to writable CD
wodim cdimage.iso

# Do some learning...
whatis $(compgen -c) 2>/dev/null | less

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Poke a Webserver to see what it's powered by.
wget -S -O/dev/null "INSERT_URL_HERE" 2>&1 | grep Server

# Download free e-books
wget -erobots=off user-agent="Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3" -H -r -l2 max-redirect=1 -w 5 random-wait -PmyBooksFolder -nd no-parent -A.pdf http://URL

# Wget Command to Download Full Recursive Version of Web Page
wget -p convert-links http://www.foo.com

# Get all files of particular type (say, PDF) listed on some wegpage (say, example.com)
wget -r -A .pdf -l 5 -nH no-parent http://example.com

# Monitor a file's size
watch -n60 du /var/log/messages

# watch process stack, sampled at 1s intervals
watch -n 1 'pstack 12345 | tac'

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Dump HTTP header using wget
wget server-response spider http://www.example.com/

# Create A Continuous Yahoo! News Ticker For The Terminal
while true;do n="$(curl -s http://news.yahoo.com/rss/|sed 's/</\n/g'|grep "title>"|sed -e '/^\// d' -e 's/title>/ /g' -e '1,3d'|tr '\n' ' ')";for i in $(eval echo {0..${#n}});do echo -ne "\e[s\e[0;0H${n:$i:$COLUMNS}\e[u";sleep .15;done;done &

# Cheap iftop
watch 'netstat -anptu |egrep "^Proto|:80 "'

# output length of longest line
wc -L

# Download Youtube video with wget!
wget http://www.youtube.com/watch?v=dQw4w9WgXcQ -qO- | sed -n "/fmt_url_map/{s/[\'\"\|]/\n/g;p}" | sed -n '/^fmt_url_map/,/videoplayback/p' | sed -e :a -e '$q;N;5,$D;ba' | tr -d '\n' | sed -e 's/\(.*\),\(.\)\{1,3\}/\1/' | wget -i - -O surprise.flv

# Binary Clock
watch -n 1 'echo "obase=2;`date +%s`" | bc'

# Download all images from a site
wget -r -l1 no-parent -nH -nd -P/tmp -A".gif,.jpg" http://example.com/images

# Watch active calls on an Asterisk PBX
watch -n 1 "sudo asterisk -vvvvvrx 'core show channels' | grep call"

# Retrieve a random command from the commandlinefu.com API
wget -qO - http://www.commandlinefu.com/commands/random/plaintext | sed -n '1d; /./p'

# watch iptables counters
watch interval 0 'iptables -nvL | grep -v "0     0"'

# Lets Tux say the random fact. [add it to .bashrc to see it in new terminal window]
wget randomfunfacts.com -O - 2>/dev/null|grep \<strong\>|sed "s;^.*<i>\(.*\)</i>.*$;\1;"|cowsay -f tux

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Watch Data Usage on eth0
watch ifconfig eth0

# Killing processes with your mouse in an infinite loop
while true; do xkill -button any; done

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Get the weather forecast for the next 24 to 48 for your location.
weather(){ curl -s "http://api.wunderground.com/auto/wui/geo/ForecastXML/index.xml?query=${@:-<YOURZIPORLOCATION>}"|perl -ne '/<title>([^<]+)/&&printf "%s: ",$1;/<fcttext>([^<]+)/&&print $1,"\n"';}

# Block the 6700 worst spamhosts
wget -q -O - http://someonewhocares.org/hosts/ | grep ^127 >> /etc/hosts

# background a wget download
wget -b http://dl.google.com/android/android-sdk_r14-linux.tgz

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Block known dirty hosts from reaching your machine
wget -qO - http://infiltrated.net/blacklisted|awk '!/#|[a-z]/&&/./{print "iptables -A INPUT -s "$1" -j DROP"}'

# Binary Clock
watch -n 1 'date "+obase=2; print %H,\":\",%M,\":\",%S" |bc'

# climagic's New Year's Countdown clock
while V=$((`date +%s -d"2010-01-01"`-`date +%s`));do if [ $V == 0 ];then figlet 'Happy New Year!';break;else figlet $V;sleep 1;clear;fi;done

# Find out how old a web page is
wget -S spider http://osswin.sourceforge.net/ 2>&1 | grep Mod

# Download an entire ftp directory using wget
wget -r ftp://user:pass@ftp.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Check if a domain is available and get the answer in just one line
whois domainnametocheck.com | grep match

# Watch for when your web server returns
watch -n 15 curl -s connect-timeout 10 http://www.google.com/

# Get a regular updated list of zombies
watch "ps auxw | grep [d]efunct"

# Download from Rapidshare Premium using wget - Part 2
wget -c -t 1 load-cookies ~/.cookies/rapidshare <URL>

# Repeatedly purge orphaned packages on Debian-like Linuxes
while [ $(deborphan | wc -l) -gt 0 ]; do dpkg purge $(deborphan); done

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Show a curses based menu selector
whiptail checklist "Simple checkbox menu" 11 35 5 tag item status repeat tags 1

# Stop All Wine Apps and Processes
wineserver -k

# ascii digital clock
watch -tn1 'date +%T | xargs banner'

# Auto Rotate Cube (compiz)
wmctrl -o 2560,0 ;sleep 2 ; echo "FIRE 001" | osd_cat -o 470 -s 8 -c red -d 10 -f -*-bitstream\ vera\ sans-*-*-*250-*-*-*-*-*-*-* ; sleep 1; wmctrl -o 0,0

# Show a Command's Short Description
whatis [command-name]

# use wget to check if a remote file exists
wget spider -v http://www.server.com/path/file.ext

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Retrieve the size of a file on a server
wget spider $URL 2>&1 | awk '/Length/ {print $2}'

# Highlight network TX, RX information change
watch -n 2 -d '/sbin/ifconfig eth0'

# Google Translate
wget -U "Mozilla/5.0" -qO - "http://translate.google.com/translate_a/t?client=t&text=translation+example&sl=auto&tl=fr" | sed 's/\[\[\[\"//' | cut -d \" -f 1

# Save your open windows to a file so they can be opened after you restart
wmctrl -l -p | while read line; do ps -o cmd= "$(echo "$line" | awk '$0=$3')"; done > ~/.windows

# Get simple weather info from a zip code
weather() { curl -s "http://www.wunderground.com/q/zmw:$1.1.99999" | grep "og:title" | cut -d\" -f4 | sed 's/&deg;/ degrees F/'; }

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# translate what is in the clipboard in english and write it to the terminal
wget -qO - "http://ajax.googleapis.com/ajax/services/language/translate?langpair=|en&v=1.0&q=`xsel`" |cut -d \" -f 6

# Get a regular updated list of zombies
watch "ps auxw | grep 'defunct' | grep -v 'grep' | grep -v 'watch'"

# Download Apple movie trailers
wget -U "QuickTime/7.6.2 (qtver=7.6.2;os=Windows NT 5.1Service Pack 3)" `echo http://movies.apple.com/movies/someHDmovie_720p.mov | sed 's/\([0-9][0-9]\)0p/h\10p/'`

# make, or run a script, everytime a file in a directory is modified
while inotifywait -r -e MODIFY dir/; do make; done;

# Update your OpenDNS network ip
wget -q user=<username> password=<password> 'https://updates.opendns.com/nic/update?hostname=your_opendns_hostname&myip=your_ip' -O -

# Print current runlevel
who -r

# Remove all leading and trailing spaces or tabs from all lines of a text file
while read l; do echo -e "$l"; done <1.txt >2.txt

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# return external ip
wget -O - -q icanhazip.com

# download file1 file2 file3 file4 .... file 100
wget http://domain.com/file{1..100}

# Watch the disk fill up
watch -n 1 df

# Console clock
watch -t -n1 'date "+%r %F %A"'

# Put a console clock in top right corner
while true; do echo -ne "\e[s\e[0;$((COLUMNS-27))H$(date)\e[u"; sleep 1; done &

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Big Countdown Clock with hours, minutes and seconds
watch -tn1 'date +%r | figlet'

# Watch how fast the files in a drive are being deleted
watch "df | grep /path/to/drive"

# backup your entire hosted website using cPanel backup interface and wget
wget http-user=YourUsername http-password=YourPassword http://YourWebsiteUrl:2082/getbackup/backup-YourWebsiteUrl-`date +"%-m-%d-%Y"`.tar.gz

# HTTP redirect
while [ 0 ]; do echo -e "HTTP/1.1 302 Found\nLocation: http://www.whatevs.com/index.html" | nc -vvvv -l -p 80; done

# watch iptables counters
watch 'iptables -vL'

# Add a GPL license file to your project
wget -O LICENSE.txt http://www.gnu.org/licenses/gpl-3.0.txt

# continuously check size of files or directories
watch -n <time_interval> "du -s <file_or_directory>"

# Extract tarball from internet without local saving
wget -O - http://example.com/a.gz | tar xz

# for all who don't have the watch command
watch() { while test :; do clear; date=$(date); echo -e "Every "$1"s: $2 \t\t\t\t $date"; $2; sleep $1; done }

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# whowatch: Linux and UNIX interactive, process and users monitoring tool
whowatch

# Command to logout all the users in one command
who -u | grep -vE "^root " | kill `awk '{print $7}'`

# let the cow suggest some commit messages for you
while true; do lynx dump http://whatthecommit.com/ | head -n 1 | cowsay; sleep 2; done

# locate bin, src, and man file for a command
whereis somecommand

# Hear the mice moving
while true; do beep -l66 -f`head -c2 /dev/input/mice|hexdump -d|awk 'NR==1{print $2%10000}'`; done

# Create a continuous digital clock in Linux terminal
watch -t -n 1 date +%T

# Find the package that installed a command
whatinstalled() { which "$@" | xargs -r readlink -f | xargs -r dpkg -S ;}

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Find a CommandlineFu users average command rating
wget -qO- www.commandlinefu.com/commands/by/PhillipNordwall | awk -F\> '/num-votes/{S+=$2; I++}END{print S/I}'

# Monitor cpu freq and temperature
watch interval 1 "cat /proc/acpi/thermal_zone/THRM/*; cat /proc/cpuinfo | grep MHz; cat /proc/acpi/processor/*/throttling"

# Mouse Tracking
while true; do xdotool getmouselocation | sed 's/x:\(.*\) y:\(.*\) screen:.*/\1, \2/' >> ./mouse-tracking; sleep 10; done

# ThePirateBay.org torrent search
wget -U Mozilla -qO - "http://thepiratebay.org/search/your_querry_here/0/7/0" | grep -o 'http\:\/\/torrents\.thepiratebay\.org\/.*\.torrent'

# Monitor memory usage
watch vmstat -sSM

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# add a gpg key to aptitute package manager in a ubuntu system
wget -q http://xyz.gpg -O- | sudo  apt-key add -

# Take aWebcam Picture When the Mouse Moves
while true; do sudo cat /dev/input/mouse0|read -n1;streamer -q -o /tmp/cam.jpeg -s 640x480 > /dev/null 2>&1; sleep 10;done

# Put a console clock in top right corner
while true; do tput sc; tput cup 0 $(($(tput cols)-74)); w | grep load; tput rc; sleep 10; done &

# Ping Twitter to check if you can connect
wget http://twitter.com/help/test.json -q -O -

# Console clock
watch -n1 'date "+%T"'

# Download from Rapidshare Premium using wget - Part 1
wget save-cookies ~/.cookies/rapidshare post-data "login=USERNAME&password=PASSWORD" -O - https://ssl.rapidshare.com/cgi-bin/premiumzone.cgi > /dev/null

# Show simple disk IO table using snmp
watch -n1 snmptable -v2c -c public localhost diskIOTable

# Show current weather for any US city or zipcode
weather() { lynx -dump "http://mobile.weather.gov/port_zh.php?inputstring=$*" | sed 's/^ *//;/ror has occ/q;2h;/__/!{x;s/\n.*//;x;H;d};x;s/\n/  /;q';}

# shows the full path of shell commands
which command

# Get gzip compressed web page using wget.
wget  -q -O- header\="Accept-Encoding: gzip" <url> | gunzip > out.html

# Get your outgoing IP address
wget http://icanhazip.com -qO-

# send a circular
wall <<< "Broadcast This"

# Grab all .flv files from a webpage to the current working directory
wget `lynx -dump http://www.ebow.com/ebowtube.php | grep .flv$ | sed 's/[[:blank:]]\+[[:digit:]]\+\. //g'`

# Command to keep an SSH connection open
watch -n 30 uptime

# for all who don't have the watch command
watch() { t=$1; shift; while test :; do clear; date=$(date); echo -e "Every "$t"s: $@ \t\t\t\t $date"; $@; sleep $t; done }

# Monitor Linux/MD RAID Rebuild
watch -n 5 -d cat /proc/mdstat

# Do some learning...
whatis /usr/bin/* 2> /dev/null | less

# commandline dictionary
wn wonder -over

# Monitoring wifi connection by watch command (refresh every 3s), displaying iw dump info and iwconfig on wireless interface "wlan0"
watch -d -n 3 "iw dev wlan0 station dump; iwconfig wlan0"

# Recover username and password for Technicolor TC7200 admin page (vulnerability)
wget -q -O - http://192.168.0.1/goform/system/GatewaySettings.bin | strings | tail -n 2

# What is my ip?
wget -q -O - ifconfig.co

# Run remote web page, but don't save the results
wget -O /dev/null http://www.google.com

# What is my public IP-address?
wget -qO- ifconfig.me/ip

# Google voice recognition "API"
wget -q -U "Mozilla/5.0" post-file speech.flac header="Content-Type: audio/x-flac; rate=16000" -O - "http://www.google.com/speech-api/v1/recognize?lang=en-us&client=chromium"

# Displays the number of processes per state
while true; do clear;awk '{a[$3]+=1};END{for(x in a){print x,a[x]}}' /proc/[0-9]*/stat; sleep 1; done

# Mirror the NASA Astronomy Picture of the Day Archive
wget -t inf -k -r -l 3 -p -m http://apod.nasa.gov/apod/archivepix.html

# Donwload media from *.rm from an url of type htttp://.../*.ram
wget <URL> -O- | wget -i -

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Create a file server, listening in port 7000
while true; do nc -l 7000 | tar -xvf -; done

# whois surfing my web ?
watch lsof -i :80

# Download all manuals RedHat 7 (CentOS/Fedora) with one command in Linux
wget -q -O- https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/ | grep Linux/7/pdf | cut -d \" -f 2 | awk '{print "https://access.redhat.com"$1}' | xargs wget

# Debug redirects between production reloads
watch 'curl -s location -I http://any.site.or.url | grep -e "\(HTTP\|Location\)"'

# Wait for file to stop changing
while [ $(( $(date +%s) - $(stat -c %Y FILENAME) )) -lt 10 ]; do sleep 1; done; echo DONE

# Watch the size of a directory using figlet
watch -n1 "du -hs /home/$USER | cut -f1 -d'/' | figlet -k"

# Wait for an already launched program to stop before starting a new command.
wait $!

# Log the current memory statistics frequently to syslog
while true; do { $(which logger) -p local4.notice `free -m | grep Mem`; sleep 60; } done &

# Output system statistics every 5 seconds with timestamp
while [ 1 ]; do echo -n "`date +%F_%T`" ; vmstat 1 2 | tail -1 ; sleep 4; done

# Download all music files off of a website using wget
wget -r -l1 -H -nd -A mp3 -e robots=off http://example/url

# Watch command
watch -n 2 command

# Console clock
while [[ 1 ]] ; do clear; banner `date +%H:%M:%S` ; sleep 1; done

# Monitor open connections for httpd including listen, count and sort it per IP
watch "netstat -plan|grep :80|awk {'print \$5'} | cut -d: -f 1 | sort | uniq -c | sort -nk 1"

# To get the CPU temperature continuously on the desktop
while :; do acpi -t | osd_cat -p bottom ; sleep 1; done &

# Poor's man Matrix script
while (true) ; do pwgen 1 ; done

# output stats from a running dd command to see its progress
watch -n60 kill -USR1 $(pgrep dd)

# Pick a random image from a directory (and subdirectories) every thirty minutes and set it as xfce4 wallpaper
while :; do xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-path -s "$(find <image-directory> -type f -iregex '.*\.\(bmp\|gif\|jpg\|png\)$' | sort -R | head -1)"; sleep 30m; done

# read a file line by line and perform some operation on each line
while read line; do echo "$(date),$(hostname),$line"; done < somefile.txt

# Download Englishword pronounciation as mp3 file
word="apple"; wget http://ssl.gstatic.com/dictionary/static/sounds/de/0/$word.mp3

# Update IP filter for qBittorrent
wget -O - http://list.iblocklist.com/\?list\=ydxerpxkpcfqjaybcssw\&fileformat\=p2p\&archiveformat\=gz | gunzip > ~/ipfilter.p2p

# Save an HTML page, and covert it to a .pdf file
wget $URL | htmldoc webpage -f "$URL".pdf - ; xpdf "$URL".pdf &

# Monitor incoming connections of proxies and balancers.
watch -n 1 "/usr/sbin/lsof -p PID |awk '/TCP/{split(\$8,A,\":\"); split(A[2],B,\">\") ; split(B[1],C,\"-\"); print A[1],C[1],B[2], \$9}' | sort | uniq -c"

# Use acpi and notify-send to report current temperature every five minutes.
while ping -c 1 127.0.0.1 > /dev/null; do acpi -t -f | while read tem; do notify-send "$tem"; done; sleep 300; done

# Video Google download
wget -qO- "VURL" | grep -o "googleplayer.swf?videoUrl\\\x3d\(.\+\)\\\x26thumbnailUrl\\\x3dhttp" | grep -o "http.\+" | sed -e's/%\([0-9A-F][0-9A-F]\)/\\\\\x\1/g' | xargs echo -e | sed 's/.\{22\}$//g' | xargs wget -O OUPUT_FILE

# Echo the latest commands from commandlinefu on the console
wget -O - http://www.commandlinefu.com/commands/browse/rss 2>/dev/null | awk '/\s*<title/ {z=match($0, /CDATA\[([^\]]*)\]/, b);print b[1]} /\s*<description/ {c=match($0, /code>(.*)<\/code>/, d);print d[1]} ' | grep -v "^$"

# Do some learning...
whatis $(compgen -c) | sort | less

# Download YouTube Videos using wget and youtube-dl and just using the video link
wget -O "output-filename.mp4" $( youtube-dl -g -f "format-number" "youtube-video-link" )

# Go get those photos from a Picasa album
wget 'link of a Picasa WebAlbum' -O - |perl -e'while(<>){while(s/"media":{"content":\[{"url":"(.+?\.JPG)//){print "$1\n"}}' |wget -w1 -i -

# Display a random crass ascii art from www.asciiartfarts.com
wget -qO - http://www.asciiartfarts.com/random.cgi | sed -n '/<pre>/,/<\/pre>/p' | sed -n '/<table*/,/<\/table>/p' | sed '1d' | sed '$d' | recode html..ascii

# Query wikipedia over DNS
wiki() { local IFS=_; dig +short txt "${*^}".wp.dg.cx; }

# Blue Matrix
while [ 1 -lt 2 ]; do i=0; COL=$((RANDOM%$(tput cols)));ROW=$((RANDOM%$(tput cols)));while [ $i -lt $COL ]; do tput cup $i $ROW;echo -e "\033[1;34m" $(cat /dev/urandom | head -1 | cut -c1-1) 2>/dev/null ; i=$(expr $i + 1); done; done

# download and unpack tarball without leaving it sitting on your hard drive
wget -qO - http://example.com/path/to/blah.tar.gz | tar xzf -

# get all pdf and zips from a website using wget
wget reject html,htm accept pdf,zip -rl1 url

# Server load and process monitoring
watch -n1 "uptime && ps auxw|grep http|grep -v grep | grep -v watch|wc -l && netstat -ntup|grep :80 |grep ESTABLISHED|wc -l && netstat -ntup|grep :80|grep WAIT|wc -l && free -mo && ps -ylC httpd sort:rss|tail -3|awk '{print \$8}'"

# Monitor memory fine-grained usage (e.g. firefox)
watch "awk '/Rss/{sum += \$2; } END{print sum, \"kB\"}' < /proc/$(pidof firefox)/smaps"

# wget progress bar with customized data size for dots
wget blah progress=dot -e dotbytes=100M

# monitor what processes are waiting for IO interrupts
while true; do date; ps auxf | awk '{if($8=="D") print $0;}'; sleep 1; done

# Poor man's unsort (randomize lines)
while read l; do echo -e "$RANDOM\t$l"; done | sort -n | cut -f 2

# Working random fact generator
wget randomfunfacts.com -O - 2>/dev/null | grep \<strong\> | sed "s;^.*<i>\(.*\)</i>.*$;\1;" | while read FUNFACT; do notify-send -t $((1000+300*`echo -n $FUNFACT | wc -w`)) -i gtk-dialog-info "RandomFunFact" "$FUNFACT"; done

# Get NFL/MLB Scores/Time
w3m -no-cookie http://m.espn.go.com/nfl/scoreboard?|sed 's/ Final/ : Final/g'|sed 's/ F\// : F\//g'|sed 's/, / : /g'|grep -i ':'

# keep an eye on system load changes
watch -n 7 -d 'uptime | sed s/.*users,//'

# wget with resume
wget -c   or wget continue

# add a gpg key to aptitute package manager in a ubuntu system
wget -q http://xyz.gpg -O- | sudo  apt-key add -

# Display Spinner while waiting for some process to finish
while kill -0 0; do timeout 5 bash -c 'spinner=( Ooooo oOooo ooOoo oooOo ooooO oooOo ooOoo oOooo); while true; do for i in ${spinner[@]}; do for _ in seq 0 ${#i}; do echo -en "\b\b"; done; echo -ne "${i}"; sleep 0.2; done; done'; done

# keep a log of the active windows
while true; do (echo -n $(date  +"%F %T"):\ ; xwininfo -id $(xprop -root|grep "ACTIVE_WINDOW("|cut -d\  -f 5) | grep "Window id" | cut -d\" -f 2 ) >> logfile; sleep 60; done

# MPD + Digitally Imported
wget -q -O - http://listen.di.fm/public2 | sed 's/},{/\n/g' | perl -n -e '/"key":"([^"]*)".*"playlist":"([^"]*)"/; print "$1\n"; system("wget -q -O - $2 | grep -E '^File' | cut -d= -f2 > di_$1.m3u")'

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Download a file and uncompress it while it downloads
wget http://URL/FILE.tar.gz -O - | tar xfz -

# Matrix Style
while true ; do IFS="" read i; echo "$i"; sleep .01; done < <(tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep color "[^ ]")

# Labyrinth pattern
while ( true ) ; do if [ $(expr $RANDOM % 2 ) -eq 0 ] ; then echo -ne "\xE2\x95\xB1" ; else echo -ne "\xE2\x95\xB2" ; fi ; done

# Watch the National Debt clock
watch -n 10  "wget -q http://www.brillig.com/debt_clock -O - | grep debtiv.gif | sed -e 's/.*ALT=\"//' -e 's/\".*//' -e 's/ //g'"

# Hold off any screensavers/timeouts
while true; do xdotool mousemove_relative 1 1; xdotool mousemove_relative  -1 -1; sleep $((60 * 4)); done

# External IP (raw data)
wget -qO- http://utils.admin-linux.fr/ip.php

# Print trending topics on Twitter
wget http://search.twitter.com/trends.json -O - quiet | ruby -rubygems -e 'require "json";require "yaml"; puts YAML.dump(JSON.parse($stdin.gets))'

# Lists the size of certain file in every 10 seconds
watch -n 10 'du -sk testfile'

# Monitor RX/TX packets and any subsquent errors
watch 'netstat -aniv'

# Watch active calls on an Asterisk PBX
watch "asterisk -vvvvvrx 'core show channels' | egrep \"(call|channel)\""

# Connect to FreeWifi hotspot (France) and keep the connection active
while true ; do wget quiet no-check-certificate post-data 'login=my_account_number&password=my_password&submit=Valider' 'https://wifi.free.fr/Auth' -O '/dev/null' ; sleep 600; done

# Find last reboot time
who -b

# Download an entire static website to your local machine
wget recursive  page-requisites convert-links www.moyagraphix.co.za

# pop-up messages on a remote computer
while : ; do if [ ! $(ls -l commander | cut -d ' ' -f5) -eq 0 ]; then notify-send "$(less commander)"; > commander; fi; done

# Create .pdf from .doc
wvPDF test.doc test.pdf

# send DD a signal to print its progress
watch -n 1 pkill -USR1 "^dd$"

# Send an email from the terminal when job finishes
wait_for_this.sh; echo "wait_for_this.sh finished running" | mail -s "Job Status Update" username@gmail.com

# watch your network load on specific network interface
watch -n1 'ifconfig eth0|grep bytes'

# Simple Video Surveillance by email
while true ; do fswebcam -d /dev/video0 -r 1280x1024 -F 15 - | uuencode $(date +\%Y\%m\%d\%H\%M).jpeg | mail -s "Video surveillance" me@gmail.com ; sleep 300 ; done

# Get My Public IP Address
wget -qO - http://myip.dk/ | egrep -m1 -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'

# fork performance test
while (true); do date utc; done | uniq -c

# Expedient hard disk temprature and load cycle stats
watch -d 'sudo smartctl -a /dev/sda | grep Load_Cycle_Count ; sudo smartctl -a /dev/sda | grep Temp'

# Repeat a command until stopped
while true ; do echo -n "`date`";curl localhost:3000/site/sha;echo -e;sleep 1; done

# Count lines using wc.
wc -l file.txt

# Watch RX/TX rate of an interface in kb/s
while [ /bin/true ]; do OLD=$NEW; NEW=`cat /proc/net/dev | grep eth0 | tr -s ' ' | cut -d' ' -f "3 11"`; echo $NEW $OLD | awk '{printf("\rin: % 9.2g\t\tout: % 9.2g", ($1-$3)/1024, ($2-$4)/1024)}'; sleep 1; done

# make, or run a script, everytime a file in a directory is modified
while true; do inotifywait -r -e MODIFY dir/ && make; done;

# Continually monitor things
while (true); do clear; uname -n; echo ""; df -h /; echo ""; tail -5 /var/log/auth.log; echo ""; vmstat 1 5; sleep 15; done

# set wallpaper on windowmaker in one line
wmsetbg -s -u path_to_wallpaper

# shutdown if wget exit
while pgrep wget || sudo shutdown -P now; do sleep 1m; done

# Check wireless link quality with dialog box
while [ i != 0 ]; do sleep 1 | dialog clear gauge "Quality: " 0 0 $(cat /proc/net/wireless | grep $WIRELESSINTERFACE | awk '{print $3}' | tr -d "."); done

# resolving basic authentication problem(401) with wget
wget auth-no-challenge server-response -O- $url 2>&1 | grep "Cookie" | sed "s/^  Set-//g" > cookie.txt;  wget auth-no-challenge server-response http-user="user" http-password="pw" header="$(cat cookie.txt)" -O- $url

# continuously check size of files or directories
while true; do du -s <file_or_directory>; sleep <time_interval>; done

# Put the machine to sleep after the download(wget) is done
while [ -n "`pgrep wget`" ]; do sleep 2 ;done; [ -e "/tmp/nosleep"] || echo  mem >/sys/power/state

# Download an entire website from a specific folder on down
wget recursive no-clobber page-requisites html-extension convert-links domains website.org no-parent www.website.com/folder

# check the status of 'dd' in progress (OS X)
while pgrep ^dd; do pkill -INFO dd; sleep 10; done

# Command to logout all the users in one command
who -u|grep -v root|awk {'print $6'}|kill  `awk {'print $0'}`

# Find an installed app
wmic product | findstr /I "name_of_app"

# Not a kismet replacement...
watch -n .5 "iwlist wlan0 scan"

# watch the previous command
watch -n1 -d !!

# Burn an ISO on commandline with wodim instead cdrecord
wodim -v speed=4 dev='/dev/scd0' foo.iso

# Continuously show wifi signal strength on a mac
while i=1; do /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep CtlRSSI; sleep 0.5; done

# Keep track of diff progress
watch -d "ls -l /proc/$!/fd"

# use wget to check if a remote file exists
wget -O/dev/null -q URLtoCheck && echo exists || echo not exist

# Remind yourself every 15 minutes (repeated reminders)
watch -n 900 "notify-send -t 10000 'Look away. Rest your eyes'"

# Download and install the newest dropbox beta
wget http://forums.dropbox.com && wget $(cat index.html|grep "Latest Forum Build"|cut -d"\"" -f2) && wget $(cat topic.php*|grep "Linux x86:"|cut -d"\"" -f2|sort -r|head -n1) && rm -rf ~/.dropbox* && rm index.html *.php* && tar zxvf dropbox-*.tar.gz -C ~/

# monitor the last command run
watch !!

# Use acpi and notify-send to report current temperature every five minutes.
while notify-send "`acpi -t`"; do sleep 300; done

# Periodic Display of Fan Speed with Change Highlights
watch -n 10 -d eval "sensors | grep RPM | sed -e 's/.*: *//;s/ RPM.*//'"

# Monitor a file's size
watch -n 60 du /var/log/messages

# Download all PDFs from an authenificated website
wget -r -np -nd -A.pdf user *** password *** http://www.domain.tld/courses/***/download/

# Find the package that installed a command
whatinstalled () { local cmdpath=$(realpath -eP $(which -a $1 | grep -E "^/" | tail -n 1) 2>/dev/null) && [ -x "$cmdpath" ] && dpkg -S $cmdpath 2>/dev/null | grep -E ": $cmdpath\$" | cut -d ":" -f 1; }

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# Extract tarball from internet without local saving
wget -qO - "http://www.tarball.com/tarball.gz" | tar zxvf -

# Download all mp3's listed in an html page
wget -r -l1 -H -t1 -nd -N -np -A.mp3 -erobots=off [url of website]

# monitor memory usage
watch vmstat -sSM

# Create a continuous digital clock in Linux terminal
while [ 1 ] ; do echo -en "$(date +%T)\r" ; sleep 1; done

# Press a key automatically
while true; do xvkbd -xsendevent -text "\[$KEY]" && sleep 2; done

# let the cow suggest some commit messages for you
wget -qO- http://whatthecommit.com/index.txt | cowsay

# Download and install the OpenStore on the Ubuntu Phone
wget https://open.uappexplorer.com/api/download/openstore.openstore-team/openstore.*_*_armhf.click && pkcon install-local allow-untrusted openstore.*_*_armhf.click

# Test http request every second, fancy display.
watch -n 1 nc localhost 80 '<<EOF GET / HTTP/1.1 Host: tux-ninja Connection: Close  EOF'

# Command to logout all the users in one command
who -u | grep -vE "^root " | kill `awk '{print $6}'`

# Simple addicting bash game.
while $8;do read n;[ $n = "$l" ]&&c=$(($c+1))||c=0;echo $c;l=$n;done

# Automatically download Ubuntu 10.04 when available
while true; do if wget http://releases.ubuntu.com/10.04/ubuntu-10.04-desktop-i386.iso.torrent; then ktorrent silent ubuntu-10.04-desktop-i386.iso.torrent ; date; break; else sleep 5m; fi; done

# Play music from youtube without download
wget -q -O - `youtube-dl -b -g $url`| ffmpeg -i - -f mp3 -vn -acodec libmp3lame -| mpg123  -

# List your largest installed packages.
wajig large

# Monitor TCP opened connections
watch -n 1 "netstat -tpanl | grep ESTABLISHED"

# beep when a server goes offline
while true; do [ "$(ping -c1W1w1 server-or-ip.com | awk '/received/ {print $4}')" != 1 ] && beep; sleep 1; done

# Downlaoad websites to 5 level and browse offline!
wget -k -r -l 5 http://gentoo-install.com

# Google dictionary of word definitions
wget -qO - "http://www.google.com/dictionary/json?callback=dict_api.callbacks.id100&q=steering+wheel&sl=en&tl=en&restrict=pr,de&client=te" | sed 's/dict_api\.callbacks.id100.//' | sed 's/,200,null)//'

# Run a command when a file is changed
while :; do n=$(md5 myfile); if [ "$h" != "$n" ]; then h=$n; scp myfile myserver:mydir/myfile; fi; sleep 1; done

# Get a funny one-liner from www.onelinerz.net
w3m -dump_source http://www.onelinerz.net/random-one-liners/1/ | awk ' /.*<div id=\"oneliner_[0-9].*/ {while (! /\/div/ ) { gsub("\n", ""); getline; }; gsub (/<[^>][^>]*>/, "", $0); print $0}'

# download newest adminer and rename to it's version accordingly
wget -N content-disposition http://www.adminer.org/latest.php

# View the newest xkcd comic.
wget `lynx dump http://xkcd.com/|grep png`

# Download latest NVIDIA Geforce x64 Windows driver
wget "us.download.nvidia.com$(wget -qO- "$(wget -qO- "nvidia.com/Download/processFind.aspx?psid=95&pfid=695&osid=19&lid=1&lang=en-us"|awk '/driverResults.aspx/ {print $4}'|cut -d "'" -f2|head -n 1)"|awk '/url=/ {print $2}'|cut -d '=' -f3|cut -d '&' -f1)"

# put command in a loop to keep trying a connection
while true; do nc <ip address of server> <port>;done

# floating point operations in shell scripts
wcalc -q <<< '3/5'

# A simple way to securely use passwords on the command line or in scripts
wget input-file=~/donwloads.txt user="$USER" password="$(gpg2 decrypt ~/.gnupg/passwd/http-auth.gpg 2>/dev/null)"

# search for a file in PATH
which <filename>

# monitor your CPU core temperatures in real time
while :; do sensors|grep ^Core|while read x; do printf '% .23s\n' "$x"; done; sleep 1 && clear; done;

# UPS Tracking Script
watch -t -c -n30 'wget -q -O- "http://wwwapps.ups.com/WebTracking/processInputRequest?TypeOfInquiryNumber=T&InquiryNumber1=1Z4WYXXXXXXXXXX" | html2text | sed -n "/Shipment Progress/,/Shipping Information/p" | grep -v "*" | ccze -A'

# Erase CD RW
wodim -v dev=/dev/dvd -blank=fast

# google chart api
wget -O chart.png 'http://chart.googleapis.com/chart?chs=250x100&chd=t:60,40&cht=p3&chl=Hello|World'

# Listen to a file
while true; do cat /usr/src/linux/kernel/signal.c > /dev/dsp; done

# Audible warning when a downloading is finished
while [ "$(ls $filePart)" != "" ]; do sleep 5; done; mpg123 /home/.../warning.mp3

# Find the package a command belongs to on debian-based distros
whichpkg () { dpkg -S $1 | egrep -w $(readlink -f "$(which $1)")$; }

# Wait for file to stop changing
while [ "$(ls -l full-time TargetFile)" != "$a" ] ; do a=$(ls -l full-time TargetFile); sleep 10; done

# Short one line while loop that outputs parameterized content from one file to another
while read l; do echo ${l%% *}; done < three-column-list.txt > only-first-column.txt

# Watch the disk fill up with change highlighting
watch -d -n 5 df

# Ruby - nslookup against a list of IP`s or FQDN`s
while read n; do host $n; done < list

# World Cup Live Score
watch -n10 no-title "w3m http://www.livescore.com/ |egrep 'live [0-9H]+[^ ]'"

# Monitor connection statistics with netstat and watch
watch -n 1 "netstat -ntu | sed '1,2d' | awk '{ print \$6 }' | sort | uniq -c | sort -k 2"

# Mortality Countdown
while [ 0 ]; do expr 2365200000 \- `date +%s` \- `date date "YYYY-mm-dd HH:MM:ss" +%s`; sleep 1; clear; done

# Monitoring sessions that arrive at your server
watch -n 1 -d "finger"

# command line fu roulette
wget -qO - www.commandlinefu.com/commands/random | grep "<div class=\"command\">" | sed 's/<[^>]*>//g; s/^[ \t]*//; s/&quot;/"/g; s/&lt;/</g; s/&gt;/>/g; s/&amp;/\&/g'

# Working random fact generator
wget randomfunfacts.com -O - 2>/dev/null | grep \<strong\> | sed "s;^.*<i>\(.*\)</i>.*$;\1;"

# download specific files only from a website
wget -r -P ./dl/ -A jpg,jpeg http://captivates.com

# Like top but for files
watch -d -n 2 'df; ls -FlAt;'

# recursively walk down no more than three levels and grab any file with an extension of mp3, mpg, mpeg, or avi
wget -A mp3,mpg,mpeg,avi -r -l 3 http://www.site.com/

# Download all data from Google Ngram Viewer
wget -qO - http://ngrams.googlelabs.com/datasets | grep -E href='(.+\.zip)' | sed -r "s/.*href='(.+\.zip)'.*/\1/" | uniq | while read line; do `wget $line`; done

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# ssh tunnel with auto reconnect ability
while [ ! -f /tmp/stop ]; do ssh -o ExitOnForwardFailure=yes -R 2222:localhost:22 target "while nc -zv localhost 2222; do sleep 5; done"; sleep 5;done

# Disco lights in the terminal
while true; do printf "\e[38;5;$(($(od -d -N 2 -A n /dev/urandom)%$(tput colors)))m.\e[0m"; done

# Run a command when a file is changed
while inotifywait -e modify /tmp/myfile; do firefox; done

# Download an Entire website with wget
wget -m -k -K -E http://url/of/web/site

# Console clock
while sleep 1; do echo -n "\r`date`"; done

# find which lines in a file are longer than N characters
while read i; do [ ${#i} -gt 72 ] && echo "$i"; done < /path/to/file

# Watch a dig in progress
watch -n1 dig google.com

# download the contents of a remote folder in the current local folder
wget -r -l1 -np -nd http://yoururl.com/yourfolder/

# Watch and cat the last file to enter a directory
watch "cat `ls -rcA1 | tail -n1`"

# Make a server's console beep when the network is down
while :; do ping -W1 -c1 -n 8.8.8.8 > /dev/null || tput bel > /dev/console; sleep 1; done

# Watch RX/TX rate of an interface in kb/s
while cat /proc/net/dev; do sleep 1; done | awk '/eth0/ {o1=n1; o2=n2; n1=$2; n2=$10; printf "in: %9.2f\t\tout: %9.2f\r", (n1-o1)/1024, (n2-o2)/1024}'

# Grab mp3 files from your favorite netcasts, mp3blog, or sites that often have good mp3s
wget -r -l1 -H -t1 -nd -N -np -A.mp3 -erobots=off -i ~/sourceurls.txt

# To get the CPU temperature continuously on the desktop
while sleep 1; do acpi -t | osd_cat -p bottom; done &

# Decrypt MD5
wget -qO - post-data "data[Row][cripted]=1cb251ec0d568de6a929b520c4aed8d1" http://md5-decrypter.com/  | grep -A1 "Decrypted text"  | tail -n1 | cut -d '"' -f3 | sed 's/>//g; s/<\/b//g'

# Get own public IP address
wget http://ipecho.net/plain -O - -q ; echo

# rotate the compiz cube via command line
wmctrl -o 1280,0

# Print the current time on the whole screen, updated every second
while(true); do printf "%s\f" $(date +%T); sleep 1; done  | sm -

# One command line web server on port 80 using nc (netcat)
while true ; do nc -l 80  < index.html ; done

# translates acronyms for you
wtf is <acronym>

# Get your external IP address without curl
wget -qO- icanhazip.com

# Text message on wallpaper
wallpaperWarn() { BG="/desktop/gnome/background/picture_filename"; convert "`gconftool-2 -g $BG`" -pointsize 70 -draw "gravity center fill red  text 0,-360 'Warn' fill white  text 0,360 'Warn'" /tmp/w.jpg; gconftool-2 set $BG -t string "/tmp/w.jpg"; }

# Automatically skip bad songs in your MPD playlist.
while :; do (mpc current | grep -i nickleback && mpc next); sleep 5; done

# watch snapshots commit in VMware ESX
watch 'ls -tough full-time *.vmdk'

# Emergency Alien Invasion Warning
while true; do xset dpms force off; sleep 0.3; xset dpms force on; xset s reset; sleep 0.3; done

# Watching Command
watch 'cat /proc/loadavg'

# speedtest
wget output-document=/dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip

# Extract icons from windows exe/dll
wrestool -x output . -t14 /path/to/your-file.exe

# count the appearance of a word or a string  in a given webpage
wget -q -O- PAGE_URL | grep -o 'WORD_OR_STRING' | wc -w

# Play all the music in a folder, on shuffle
while [[ 1 ]]; do n=( */* ); s=${n[$(($RANDOM%${#n[@]}))]}; echo -e " - $s"; mpg123 -q "$s"; done

# Stream and save Youtube video
wget `youtube-dl -g 'http://www.youtube.com/watch?v=-S3O9qi2E2U'` -O - | tee -a parachute-ending.flv | mplayer -cache 8192 -

# Monitoring file change while a copy
watch "ls -al myfile"

# download with checksum
wget -qO - http://www.google.com | tee >(md5sum) > /tmp/index.html

# Download latest released gitlab docker container
wget -qO- 'https://github.com'$(curl -s 'https://github.com'$(curl -s https://github.com/sameersbn/docker-gitlab/releases | grep -m 1 -o '<a.*[0-9\.]</a>' | cut -d '"' -f 2) | grep -o '<a.* rel="nofollow">' | grep 'tar.gz' | cut -d '"' -f 2)

# Download full FLAC albums from archive.org
wget -rc -A.flac tries=5 http://archive.org/the/url/of/the/album

# Carriage return for reprinting on the same line
while true; do echo -ne "$(date)\r"; sleep 1; done

# Monitor dynamic changes in the dmesg log.
watch "dmesg |tail -15"

# force change password for all user
while IFS=: read u x; do passwd -e "$u"; done < /etc/passwd

# kvm disk info
while read X ; do printf "$X "; virsh dumpxml $X | egrep "source dev|source file"; done< <(virsh list | awk '$1 ~ /^[1-9]/ { print $2 }')

# Get your external IP address
wget -qO - http://www.sputnick-area.net/ip;echo

# Git autocomplete
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash; mv git-completion.bash ~/.git-completion.bash; echo "source ~/.git-completion.bash" > ~/.bashrc; source ~/.git-completion.bash

# Show directory sizes, refreshing every 2s
watch 'find -maxdepth 1 -mindepth 1 -type d  |xargs du -csh'

# Find processes blocked on IO
while [ 1 ] ;do ps aux|awk '{if ($8 ~ "D") print }'; sleep 1 ;done

# Automatically sync current git project with remote host while editing
while true; do rsync -vR $(git ls-files | inotifywait -q -e modify -e attrib -e close_write fromfile - format '%w') user@host:dest/dir/; done

# repeat a command every x seconds
while sleep 1; do foo; done

# Download an entire website
wget -mkEpnp example.com

# Send an email from the terminal when job finishes
wait_for_this.sh; echo "wait_for_this.sh finished running with status $?" | mail -s "Job Status Update" username@gmail.com

# Get name of running Window Manager
wmctrl -m | grep Name: | awk '{print $2}'

# repeat a command every one second
watch -n 1 "do foo"

# Daemonize nc - Transmit a file like a http server
while ( nc -l 80 < /file.htm > : ) ; do : ; done &

# Get all files of particular type (say, mp3) listed on some web page (say, audio.org)
wget -c -r no-parent -A .mp3 http://audio.org/mp3s/

# Download just html of a whole website
wget mirror random-wait recursive robots=off -U mozilla  -R gif,jpg,pdf reject-regex '((.*)\?(.*))|(.*)' -c [URLGOESHERE]

# Watch changeable interrupts continuously
watch -n1 'cat /proc/interrupts

# Monitor ElasticSearch cluster health - Useful for keeping an eye on ES when rebalancing takes place
watch -n 1 curl -XGET 'http://localhost:9200/_cluster/health?pretty=true'

# To recover and get back to your desktop's default window manager in Linux Mint 17.3.
wm-recovery

# Quick Battery Power Monitor
watch -n 5 "upower -d | grep energy -A 4"

# shortcut to immediately view any script with less
which script | xargs less

# see who is on this machine
w

# see the size of the downloaded traffic
watch -n 1 "echo | sudo iptables -nvL | head -1 | awk '{print \$7}'"

# grep BTC last trading price from BTC-E, but u can change it.. they got em all
wget -q -O- http://bitinfocharts.com/markets/btc-e/btc-usd.html |grep -o -P 'lastTrade">([0-9]{1,})(.){0,1}[0-9]{0,}' |grep -o -P '(\d)+(\.){0,1}(\d)*' |head -n 1

# terminal based annoy-a-tron
while true; do sleep $(($RANDOM/1000)) && beep -f 2000 -l $(($RANDOM/100)) ; done

# Realtime clock cowsay
watch -tn1 'figlet -f slant  `date +%T` | cowsay -n -f telebears'

# Wipe a directory recursively & safely
wipe -rfqQ 10 directory/

# Show a running count of CLOSE_WAIT and TIME_WAIT connections for debugging network apps
watch -n5 ss \| grep -c WAIT

# Execute ls -lah every one second
while true; do ls -lah && sleep 1; done

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# External IP address
wget http://cmyip.com -O - -o /dev/null | grep -Po '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+'

# get a random command-line-fu tip
w3m -dump http://www.commandlinefu.com/commands/random/plaintext

# check broken links using wget as a spider
wget spider  -o wget.log  -e robots=off wait 1 -r -p http://www.example.com

# Watch all postgres processes, sorted by memory use
watch -n 1 '{ ps aux | head -n 1; ps aux sort -rss | grep postgres | grep -v grep; } | cat'

# archlinux: find more commands provided by the package owning some command
w=`whereis <command> | awk '{print $2}'`; p=`pacman -Qo $w | sed -e 's/.*is owned by \([[:alpha:]]\+\).*/\1/'`; pacman -Ql $p | grep 'bin'

# Backup all MySQL Databases to individual files
while read; do mysqldump $REPLY | gzip > "/backup/mysql/$REPLY.sql.gz"; done < <( mysql -e 'show databases' -s skip-column-names )

# Save a file you edited in vim without the needed permissions
w !sudo cat >%

# Make mirror of ftp directory
wget -m ftp-user=root ftp-password=pass -A "*.csv" -nd -P "dirname" ftp://46.46.46.46/../mnt/sd/

# Continuously listen on a port and respond with a fixed message with netcat (and respond to kill signals)
while true ; do nc -l -p 4300 -c 'echo hello'; test $? -gt 0 && break; done

# Matrix Style
while $t; do for i in `seq 1 30`;do r="$[($RANDOM % 2)]";h="$[($RANDOM % 4)]";if [ $h -eq 1 ]; then v="\e[1m $r";else v="\e[2m $r";fi;v2="$v2 $v";done;echo -e $v2;v2="";done;

# who is the console user?
who | grep :0 | head -1 | cut -d " " -f 1

# How to run a shell script on a remote host using ftp
watch -n10 "if test -e run.txt ; then chmod +x script.sh && ./script.sh && rm run.txt || rm run.txt && echo > failed.txt ; fi"

# Monitor file contents that is being overwritten regularly
while sleep 1; do clear; cat /tmp/whatever.cue; done

# Print info about your real user.
who loves mum

# bash screensaver (scrolling ascii art with customizable message)
while [ 1 ]; do banner 'ze missiles, zey are coming! ' | while IFS="\n" read l; do echo "$l"; sleep 0.01; done; done

# Parallel file downloading with wget
wget -nv http://en.wikipedia.org/wiki/Linux -O- | egrep -o "http://[^[:space:]]*.jpg" | xargs -P 10 -r -n 1 wget -nv

# Command line email/SMS Bomber
while true; do echo "message here" | mutt something@something.com ; done

# Monitor Wireless Adapter Stats
watch -n 1 cat /proc/net/wireless

# Log a command's votes
while true; do curl -s http://www.commandlinefu.com/commands/view/3643/log-a-commands-votes | grep 'id="num-votes-' | sed 's;.*id="num-votes-[0-9]*">\([0-9\-]*\)</div>;\1;' >> votes; sleep 10; done

# Monitoring file change while a copy
while true; do ls -all myfile; spleep 1; clear; done

# Query Wikipedia via console over DNS
wki () { 	dig +short txt "${*// /_}".wp.dg.cx | sed -e 's/^"\(.*\)"$/\1/' -e 's/\([^\]\)"[^\]*"/\1/g' -e 's/\\\(.\)/\1/g' }

# Matrix Style
while true; do printf "\e[32m%X\e[0m" $((RANDOM%2)); for ((i=0; i<$((RANDOM%128)); i++)) do printf " "; done; done

# simple pomodoro
while true; do     sleep $((40 * 60)); echo "Fuck away for some time"; sleep $((3 * 60)); done &

# download whole website localls with wget mirroring
wget recursive no-clobber page-requisites html-extension convert-links restrict-file-names=windows domains website.tld http://www.website.tld

# Monitor system load and print out top offending processes
while sleep 1; do if [ $(echo "$(cat /proc/loadavg | cut -d' ' -f1) > .8 " | bc) -gt 0 ]; then echo -e "\n\a"$(date)"       \e[5m"$(cat /proc/loadavg)"\e[0m"; ps aux  sort=-%cpu|head -n 5; fi; done

# Monitor the queries being run by MySQL
watch -n 1 mysqladmin user=<user> password=<password> processlist

# Display a cool clock on your terminal
watch -t -n1 "date +%T|figlet"

# let the cow suggest some commit messages for you
while true; do curl -s http://whatthecommit.com | perl -p0e '($_)=m{<p>(.+?)</p>}s' | cowsay; sleep 2; done

# Find the package a command belongs to on rpm-based distros
whichpkg() { rpm -qf "$@"; }

# TCP server on one socket
while true; do cat "file"; done | nc -v -l 1337

# Display an updating clock in sh variants
while true; do date; sleep 1; done

# csv file of ping every minutes
while true; do (date | tr "\n" ";") && ping -q -c 1 www.google.com|tail -1|cut -d/ -f5 ;sleep 1; done >> uptime.csv

# What addresses are your applications talking to?
watch "lsof -i -P |grep ESTABLISHED |awk '{printf \"%15.15s \\t%s\\n\", \$1, \$9}'"

# Move Mouse, click there, sleep, and again....
while true; do xdotool mousemove 1390 500; xdotool click 1; sleep 1; xdotool mousemove 780 800; xdotool click 1; sleep 1; xdotool mousemove 1000 800; xdotool click 1; sleep 1;done

# @mail.com by adding the line in list.txt
while read line; do echo -e "$line@mail.com"; done < list.txt

# Download current stable kernel version from kernel.org
wget no-check-certificate https://www.kernel.org/$(wget -qO- no-check-certificate https://www.kernel.org | grep tar | head -n1 | cut -d\" -f2)

# Echo the latest commands from commandlinefu on the console
wget -O - http://www.commandlinefu.com/commands/browse/rss 2>/dev/null | awk '/\s*<title/ {z=match($0, /CDATA\[([^\]]*)\]/, b);print b[1]} /\s*<description/ {c=match($0, /code>(.*)<\/code>/, d);print d[1]"\n"} '

# Show bandwidth use oneliner
while true; do cat /proc/net/dev; sleep 1; done | awk -v dc="date \"+%T\"" '/eth0/{i = $2 - oi; o = $10 - oo; oi = $2; oo = $10; dc|getline d; close(dc); if (a++) printf "%s %8.2f KiB/s in %8.2f KiB/s out\n", d, i/1024, o/1024}'

# Switch workspace
wmctrl -o 100,0

# Which PATH variable should I use for this scirpt?
whichpath() { local -A path; local c p; for c; do p=$(type -P "$c"); p=${p%/*}; path[${p:-/}]=1; done; local IFS=:; printf '%s\n' "${!path[*]}"; }

# Copy with TAR PV and NC
while true; do nc -l -p 50002 | pv | tar -xf -; done

# run a command repeatedly indefinately
while true ; do killall mc ; done

# Set executable permissions only to executable files
while IFS= read -r -u3 -d $'\0' file; do     file "$file" | egrep -q 'executable|ELF' && chmod +x "$file"; done 3< <(find . -type f -print0)

# MEMORY DUMP ACROSS NETWORK 4 CYGWIN
wmr - | pv -s $SIZEOFMEM  | ssh -p 40004 -c arcfour,blowfish-cbc -C root@savelocation.com "cat - > /forensics/T430-8gb-RAM1.dd"

# Iterate through a file where instead of Newline characters, values are separated with a non-white space character.
while [[ COUNTER -le 10 && IFS=':' ]]; do for LINE in $(cat /tmp/list); do some_command(s) $LINE; done; COUNTER=$((COUNTER+1)); done

# for all who don't have the watch command
watch() { if [ -z "$1" ]; then echo "usage: watch interval command" return fi sec=$1 shift while test :; do clear; date=$(date); echo -e "Every "$sec"s: $@ \t\t\t\t $date"; echo $@; sleep $sec; done }

# Schedule one job after another (running).
while ps -p $PID; do sleep 1; done; script2

# Generate an XKCD #936 style 4 word password
word=$(shuf -n4 /usr/share/dict/words); for w in ${word[@]}; do  w=${w^}; w=${w//\'/}; p+=$w; done; echo $p

# php command show status memcache
watch 'php -r '"'"'$m=new Memcache;$m->connect("127.0.0.1", 11211);print_r($m->getstats());'"'"

# view the 10 most cpu using processes in browser
while true; do ps aux | sort -rk 3,3 | head -n 11 | cut -c -120 | netcat -l -p 8888 2>&1 >/dev/null; done &

# Password server
while [ 1 ]; do cat /dev/urandom | tr -dc ' -~' | head -c 10 | ncat -l 8080 &> /dev/null; test $? -gt 128 && break; done

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# send DD a signal to print its progress
while :;do killall -USR1 dd;sleep 1;done

# download and run script from trusted webserver
wget -qO - sometrusted.web.site/tmp/somecommand | sh

# watch iptables counters
while true; do iptables -nvL > /tmp/now; diff -U0 /tmp/prev /tmp/now > /tmp/diff; clear; cat /tmp/diff; mv /tmp/now /tmp/prev; slee p 1; done

# Pop up a Growl alert if Amtrak wifi doesn't know where to find The Google
while [ 1 ]; do (ping -c 1 google.com || growlnotify -m 'ur wifiz, it has teh sad'); sleep 10; done

# How to know if your NIC receive link
watch ethtool eth0

# Watching directories
watch -n1 "ls -p | grep '/$'"

# List wireless clients connected to an access point
wlanconfig <wireless_device> list sta

# This command watches the top 10 processes currently taking up the most memory with thread & other info, incase you don't want to use the TOP or HTOP command.
watch -n .8 'ps -eaLo uname,pid,pcpu,pmem,lwp,nlwp,rss,vsz,start_time,args sort -pmem| head -10'

# Watch those evil Red Hat states code D Uninterruptible sleep (usually IO).
watch -n 1 "ps aux | sed -n 's/ D /&/p'"

# How to run a command on a list of remote servers read from a file
while read server; do ssh -n user@$server "command"; done < servers.txt

# Run remote web page, but don't save the results
wget -q spider http://server/cgi/script

# A fun little harmless prank to pull on your friends.
while true; do sleep $(($RANDOM%50)); timeout 1 speaker-test -f 20000 -t sine 2>/dev/null; done&

# Shows live outboud connection attempts and/or suceess, refreshing every 0.5 seconds
watch -n0.5 -d "netstat -nafo | grep -v -E 'LISTENING|0.0.0.0|127.0.0.1|\[::\]:|\[::1\]:'"

# Watch netstat output every 2 seconds
watch -n 2 netstat -antu

# Random (sfw, 1920x1080) wallpaper from wallbase.cc
wget no-use-server-timestamps  $(curl $(curl http://wallbase.cc/random/23/eqeq/1920x1080/0/100/20 | grep 'wallpaper/' | awk -F'"' '{print $2}' | head -n1) | grep -A4 bigwall | grep img | awk -F'"' '{print $2}'); feh bg-center $(ls -1t | head -n1)

# Make ABBA better (requires firefox)
wget -O - -q http://www.azlyrics.com/lyrics/abba/takeachanceonme.html | sed -e 's/[cC]hance/dump/g' > ~/tdom.htm && firefox ~/tdom.htm

# uncompress file that is compressed multiple times
while true; do for bzipfile in $(file *|egrep bzip2|awk '{print $1'}|cut -d':' -f1); do bunzip2 $bzipfile; done; done

# One liner to check out CLOSE_WAIT and TIME_WAIT connection every five seconds while debugging network apps
while true; do netstat -a|grep WAIT|wc -l; sleep 5; done

# Measures download speed on eth0
while true; do X=$Y; sleep 1; Y=$(ifconfig eth0|grep RX\ bytes|awk '{ print $2 }'|cut -d : -f 2); echo "$(( Y-X )) bps"; done

# Speak the top 6 lines of your twitter timeline every 5 minutes.....
while [ 1 ]; do curl -s -u username:password  http://twitter.com/statuses/friends_timeline.rss|grep title|sed -ne 's/<\/*title>//gp' | head -n 6 |festival tts; sleep 300;done

# Find processes stuck in dreaded
while true; do date; ps auxf | awk '{if($8=="D") print $0;}'; sleep 1; done

# Monitor open connections for httpd including listen, count and sort it per IP
watch "netstat -plan | grep -v LISTEN | grep \":80 \" | awk {'print \$5'} | cut -d: -f 1 | uniq -c | sort -nk 1"

# Download all images from a website in a single folder
wget -nd -r -l 2 -A jpg,jpeg,png,gif http://website-url.com

# Get the latest Geek and Poke comic
wget -q $(lynx dump 'http://geekandpoke.typepad.com/' | grep '\/.a\/' | grep '\-pi' | head -n 1 | awk '{print $2}') -O geekandpoke.jpg

# watch iptables counters
watch -d -n 2 iptables -nvL

# Number of apache2 processes running with memory usage filter (sorting asc)
watch -n0.5 'ps -e -o pid,vsz,comm= | sort -n -k 2 | grep apache | wc -l'

# Geo Location of an IP-address
wget -qO - whatismyipaddress.com/ip/<type ip address> | grep -E "City:|Country:" | sed 's:<tr><th>::'| sed 's</th>::' | sed 's:</td>::' | sed 's:</tr>::' | sed 's:<img*::'

# Download all files of a certain type with wget.
wgetall () { wget -r -l2 -nd -Nc -A.$@ $@ }

# Poor man's watch: Repeat a command every N seconds
watch() { while true; do echo "<Ctrl+V><Ctrl+L>Every 2.0s: $@"; date; eval "$@"; sleep 2; done }

# Monitor ElasticSearch cluster health - Useful for keeping an eye on ES when rebalancing takes place
while true; do clear; curl -XGET 'http://localhost:9200/_cluster/health?pretty=true'; sleep 1; done

# my command for downloading  delicious web links,
wget  -H -r  -nv level=1  -k -p -erobots=off -np -N  exclude-domains=del.icio.us,doubleclick.net exclude-directories=

# Define words with google. (busybox version)
wget -q -U busybox -O- "http://www.google.com/search?ie=UTF8&q=define%3A$1" | tr '<' '\n' | sed -n 's/^li>\(.*\)/\1\n/p'

# Monitoring a port connections
watch -n1 'netstat -tn | grep -P :22'

# Download an entire static website to your local machine
wget recursive  page-requisites convert-links www.moyagraphix.co.za

# List widescreen wallpapers in current dir
wallpaper -w 800 -x 16384 -a 1.7 -b 1.85 *

# Displays mpd playing status in the terminal first raw
while sleep 1; do (mpc status;mpc currentsong)|awk 'BEGIN{FS=": "}/^Artist:/{r=r""$2};/^Title:/{r=r" - "$2};/^time:/{r=$2" "r};/^state: play/{f=1}END{if(f==1){print r}}'|echo -ne "\e[s\e[0;0H\e[K\e[0;44m\e[1;33m$(cat -)\e[0m\e[u";done &

# Wait for Web service to spin up, aka alert me when the server stops returning a 503
while true; do curl -vsL -o /dev/null example.com 2>&1 | grep 503 > /dev/null || echo "OK: server is up."; sleep 8; done

# build DTT channel list with w-scan
w_scan -X -P -t 2 -E 0 -c IT > dvb-channels.conf

# Generate random sensible passwords, and copy them to the clipboard
while true; do curl -s http://sensiblepassword.com/?harder=1 | tail -n 15 | head -n 1 | sed 's;<br/>;;' | cut -c 5- | cb; sleep 1; done

# Watch the number of RabbitMQ connections by user (sorted)
watch -d "rabbitmqctl -q list_connections | awk '{gsub(/[ \t]+/, \"\", \$1); print \$1}' | sort | uniq -c | sort -nr"

# Monitor a log file, filling up all available space in the terminal window and preventing line wrap
watch -n 4 "tail -n $(expr $(tput lines) - 4) /var/log/apache2/access.log | cut -c 1-$(tput cols)"

# Monitor a file's size
while [ 1 ]; do du /var/log/messages;sleep 60; done

# Continously show httpd's error log
while [ 1 ]; do tail /var/log/httpd/error_log; sleep 2; clear; done

# set desktop background to highest-rated image from Reddit /r/wallpapers
wget -O - http://www.reddit.com/r/wallpapers.rss | grep -Eo 'http://i.imgur.com[^&]+jpg' | head -1 | xargs wget -O background.jpg

# Download an entire website
wget random-wait -r -p -e robots=off -U mozilla http://www.example.com

# Put a console clock in top right corner
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

# pretend to be busy in office to enjoy a cup of coffee
while [ true ]; do head -n 100 /dev/urandom; sleep .1; done | hexdump -C | grep "ca fe"

# check the version of wine
wine version

# Use wget to download one page and all it's requisites for offline viewing
wget -e robots=off -E -H -k -K -p http://<page>
