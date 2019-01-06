# Parse tektronic csv files
awk 'BEGIN {FS=","} {loc = $4, val=$5; getline < "f0001ch1.csv"; print loc,val,$5}' f0001ch2.csv > data

# top 10  of  access log
awk '{ print $9 }' access.log | sort | uniq -c | sort -nr | head -n 10

# Parse logs for IP addresses and how many hits from each IP
awk '/text to grep/{print $1}' "log" | sort -n | uniq -c | sort -rn | head -n 100

# list all users with UID bigger than 999 in /etc/passwd
awk -F: '$3 > 999 { print $1 }' /etc/passwd

# Parse logs for IP addresses and how many hits from each IP
awk '/text to grep/{print \$1}' logs... | sort -n | uniq -c | sort -rn | head -n 100

# use awk to replace field with it's md5sum
awk '{command="echo "$2"|md5sum" ;command | getline $2; close(command);sub(/[[:blank:]].*/,"",$2); print $0}'

# output length of longest line
awk '(length > n) {n = length} END {print n}'

# Handling oracle alter log file
awk '{if ($1~/Sun|Mon|Tue|Wed|Thu|Fri|Sat/)  {DATE=$2" "$3" "$4" "$5 } else {print DATE"|"$0}}' alterorcl.log

# Show current folder permission from /, useful for debugging ssh key permission
awk 'BEGIN{dir=DIR?DIR:ENVIRON["PWD"];l=split(dir,parts,"/");last="";for(i=1;i<l+1;i++){d=last"/"parts[i];gsub("//","/",d);system("ls -ld \""d"\"");last=d}}'

# Delete the \n character at the end of file
awk 'BEGIN { ARGV[ARGC++]=ARGV[ARGC-1] } NR!=FNR { if(num==0) num=NR-1; if(FNR<num) {print} else { ORS=""; print } } ' abc1.txt > abc2.txt

# collapse first five fields of Google Adwords export .tsv file into a single field
awk -F $'\t' '{printf $1 LS $2 LS $3 LS $4 LS $5; for (i = 7; i < NF; i++) printf $i "\t"; printf "\n\n";}' LS=$'\n' 'Ad report.tsv' | column -t -s $'\t'

# output one file per line
awk 'BEGIN{ORS=""}NR!=1&&FNR==1{print "\n"}{print}END{print "\n"}' *.txt

# Printout a list of field numbers (awk index) from a CSV file with headers as first line.
awk -F, '{gsub(/ /,"");for(f=1;f<=NF;f++) print f,$f;exit}' file.csv

# Generate an XKCD #936 style 4 word password
awk 'BEGIN {srand} /^[a-z]{4,8}$/ {w[i++]=$0} END {while (j++<4) print w[int(rand*i)]}' /usr/share/dict/words

# AWK: Set Field Separator from command line
awk 'BEGIN {FS=","} { print $1 " " $2 " " $NF}' foo.txt

# transform several lines in one with Awk
awk ' { printf ("%s ", $0)} END {printf ("\n") } ' FILE

# Remove annotation- (or other own-lined) tags from an XML document
awk "/<xsd:annotation>/{h=1};!h;/<\/xsd:annotation>/{h=0}" annotatedSchema.xsd

# Restore individual table from mysqldump backup.
awk '/Table structure for table .table01./,/Table structure for table .table02./{print}' <file> > restored_table.sql

# Every Nth line position # (AWK)
awk '{if (NR % 3 == 1) print $0}' foo > foo_every3_position1; awk '{if (NR % 3 == 2) print $0}' foo > foo_every3_position2; awk '{if (NR % 3 == 0) print $0}' foo > foo_every3_position3

# Uptime in minute
awk  '{print $0/60;}' /proc/uptime

# Print just line 4 from a textfile
awk 'NR==4'

# Sum columns from CSV column $COL
awk -F ',' '{ x = x + $4 } END { print x }' test.csv

# print nearest multiples of 100 in a file
awk 'BEGIN {count=0;prev=-1} {if(count>0) { if(int($1/100) > int(prev/100)) {print $1} } ; prev=$1; count++}' inputFile > rounded

# Print starting line numbers of group of lines in a file, which have the same first and second column
awk '{pattern=$1$2; seen[pattern]++; if (seen[pattern] == 1) print NR}' inputFile

# Extract tags in a file
awk -vRS="</Tag2>" '/<Tag2>/{gsub(/.*<Tag2>/,"");print}' file

# Print a quick summary of RAID array health.
awk '/^md/ {printf "%s: ", $1}; /blocks/ {print $NF}' </proc/mdstat

# Find pages returning 404 errors in apache logs
awk '$9 == 404 {print $7}' access_log | uniq -c | sort -rn | head

# irssi log histogram
awk '/^- Day changed (.*)/ {st=""; for (i=0;i<ar[date];i++) {st=st"*"} print date" "st; date=$7"-"$5"-"$6} /> emergency/ {ar[date]++} END {st=""; for (i=0;i<ar[date];i++) {st=st"*"}; print date" "st}' #engineyard.log

# Laminate a file
awk '{print(substr($0,1,5))}' file

# Random Decimal in the interval 0 &#8804; n < 1 and 2d6 dice roll
awk 'BEGIN { srand(); print rand() }'

# sum a column of numbers
awk '{s+=$1}END{print s}' <file>

# Add a list of numbers
awk '{total+=$0}END{print total}' file

# Return IP Address
awk '/inet end/ {print $3}' <(ifconfig eth0)

# Randomize the order of lines in a text file.
awk 'BEGIN {srand()} {print int(rand()*1000000) "\t" $0}' FILE | sort -n | cut -f 2-

# Print only the even lines of a file
awk '{if (NR % 2 == 0) print $0}' file.txt

# Get memory total from /proc/meminfo in Gigs
awk '{ printf "%.2f", $2/1024/1024 ; exit}' /proc/meminfo

# It outputs a given line from a file
awk 'NR==linenumber' filename

# To print a specific line from a file
awk '{if (NR == 3) print}' <file>

# How many lines does  the passwd file have?
awk 'END {print NR}' /etc/passwd

# Parse a quoted .csv file
awk -F'^"|", "|"$' '{ print $2,$3,$4 }' file.csv

# Print only the odd lines of a file
awk '{if (NR % 2 == 1) print $0}' file.txt

# Print all lines between two line numbers
awk 'NR >= 3 && NR <= 6' /path/to/file

# Exclude multiple columns using AWK
awk '{$1=$3=""}1' file

# Compute running average for a column of numbers
awk '{avg += ($1 - avg) / NR;} END { print avg; }'

# Display the standard deviation of a column of numbers with awk
awk '{sum+=$1; sumsq+=$1*$1} END {print sqrt(sumsq/NR - (sum/NR)**2)}' file.dat

# sort lines by length
awk '{print length, $0;}' | sort -nr

# Get line number of all matches in a file
awk '/match/{print NR}' file

# Show max lengths of all fields in a pipe delimited file with header row
awk -F"|" 'BEGIN {OFS="|"} NR==1 {for (b=1;b<=NF;b++) {hdr[b]=$b} } NR > 1 {for (i=1;i<=NF;i++) {if(length($i) > max[i]) max[i] = length($i)} } END {for (i=1;i <= NF;i++) print hdr[i],max[i]+0}' pipe_delimited_file.psv

# Count the number of characters in each line
awk '{count[length]++}END{for(i in count){printf("%d: %d\n", count[i], i)}}'

# Find duplicate UID in /etc/passwd
awk -F":" '!list[$3]++{print $3}' /etc/passwd

# Display a block of text with AWK
awk '/start_pattern/,/stop_pattern/' file.txt

# Lists all usernames in alphabetical order
awk -F ':' '{print $1 | "sort";}' /etc/passwd

# Fibonacci numbers with awk
awk 'func f(n){return(n<2?n:f(n-1)+f(n-2))}BEGIN{while(a<24){print f(a++)}}'

# print all except first collumn
awk '{$1=""; print}'

# uniq for unsorted data
awk '!_[$0]++{print}'

# Display a block of text with AWK
awk '/start_pattern/,/stop_pattern/' file.txt

# Short Information about loaded kernel modules
awk '{print $1}' "/proc/modules" | xargs modinfo | awk '/^(filename|desc|depends)/'

# Randomize lines in a file
awk 'BEGIN{srand()}{print rand(),$0}' SOMEFILE | sort -n | cut -d ' ' -f2-

# Extract title from HTML files
awk 'BEGIN{IGNORECASE=1;FS="<title>|</title>";RS=EOF} {print $2}' file.html

# Display a block of text with AWK
awk '/start_pattern/,/stop_pattern/' file.txt

# Display a block of text with AWK
awk '/start_pattern/,/stop_pattern/' file.txt

# print file without duplicated lines usind awk
awk '!($0 in a) {a[$0];print}' file

# Command line calculator
awk "BEGIN{ print $* }"

# Display the standard deviation of a column of numbers with awk
awk '{delta = $1 - avg; avg += delta / NR; mean2 += delta * ($1 - avg); } END { print sqrt(mean2 / NR); }'

# Display a block of text with AWK
awk '/start_pattern/,/stop_pattern/' file.txt

# Short one line while loop that outputs parameterized content from one file to another
awk '{print $1}' < three-column.txt > first-column.txt

# Create user add lines from partial passwd file
awk -F: '{print "useradd -u "$3,"-c \""$5"\"","-s "$7,$1}' passwd

# Remove duplicate rows of an un-sorted file based on a single column
awk '{ if ($1 in stored_lines) x=1; else print; stored_lines[$1]=1 }' infile.txt > outfile.txt

# Every Nth line position # (AWK)
awk 'NR%3==1' file

# Remove all HTML tags from a file
awk '{gsub("<[^>]*>", "")}1' file

# Display a block of text with AWK
awk '/start_pattern/,/stop_pattern/' file.txt

# Display a block of text with AWK
awk '/start_pattern/,/stop_pattern/' file.txt

# Display a block of text with AWK
awk '/start_pattern/,/stop_pattern/' file.txt

# Print line immediately before a matching regex.
awk '/regex/{print x};{x=$0}'

# Awk: Perform a rolling average on a column of data
awk 'BEGIN{size=5} {mod=NR%size; if(NR<=size){count++}else{sum-=array[mod]};sum+=$1;array[mod]=$1;print sum/count}' file.dat

# Extract shortcuts and hostnames from .ssh/config
awk '$1=="Host"{$1="";H=substr($0,2)};$1=="HostName"{print H,"$",$2}' ~/.ssh/config | column -s '$' -t

# Print diagram of user/groups
awk 'BEGIN{FS=":"; print "digraph{"}{split($4, a, ","); for (i in a) printf "\"%s\" [shape=box]\n\"%s\" -> \"%s\"\n", $1, a[i], $1}END{print "}"}' /etc/group|display

# Top 10 requestors by IP address from Apache/NCSA Logs
awk '{print $1}' /var/log/httpd/access_log | sort | uniq -c | sort -rnk1 | head -n 10

# list all hd partitions
awk '/d.[0-9]/{print $4}' /proc/partitions

# sorting file contents into individual files with awk
awk '{print > $3".txt"}' FILENAME

# Emulate tail using awk.
awk '{ c=NR%n; a[c]=$0 } END{ for(i=1; i<=n; i++) print a[(c+i)%n] }' n=10 File

# Hits per hour apache log
awk -F: '{print $2}' access_log | sort | uniq -c

# Find the real procesor speed when you use CPU scaling [cpuspeed]
awk -F": " '/cpu MHz\ */ { print "Processor (or core) running speed is: " $2 }' /proc/cpuinfo ; dmidecode | awk -F": " '/Current Speed/ { print "Processor real speed is: " $2 }'

# last.fm rss parser
awk '/<link>/{gsub(/.*<link>|<\/link>.*/,"");print "<li><a href=\042"$0"\042> "t"</a>" } /<title>/{gsub(/.*<title>|<\/title>.*/,"");t=$0 }' file

# Display unique values of a column
awk '{ a[$2]++ } END { for (b in a) { print b } }' file

# Averaging columns of numbers
awk '{sum1+=$1; sum2+=$2} END {print sum1/NR, sum2/NR}' file.dat

# Show a line when a "column" matchs
awk '{ FS = OFS = "#" } { if ($9==1234) print }' filename*.log > bigfile.log

# List your largest installed packages (on Debian/Ubuntu)
awk '{if ($1 ~ /Package/) p = $2; if ($1 ~ /Installed/) printf("%9d %s\n", $2, p)}'  /var/lib/dpkg/status | sort -n | tail

# drop first column of output by piping to this
awk '{for(i=2;i<=NF;i++) printf("%s%s",$i,(i!=NF)?OFS:ORS)}'

# Identify long lines in a file
awk 'length>72' file

# Analyze awk fields
awk '{print NR": "$0; for(i=1;i<=NF;++i)print "\t"i": "$i}'

# Exclude a string with awk
awk '{sub("String","")}1'

# Determine next available UID
awk -F: '{uid[$3]=1}END{for(x=500; x<=600; x++) {if(uid[x] != ""){}else{print x; exit;}}}' /etc/passwd

# Length of longest line of code
awk '(length>t) {t=length} END {print t}' *.cpp

# Print all /etc/passwd lines with duplicated uid
awk -F: 'BEGIN{a[NULL]=0;dupli[NULL]=0;}{if($3 in a){print a[$3];print ;}else a[$3]=$0;} ' /etc/passwd | sort -t: -k3 -n | sed -e 's/^/'$(hostname)':/g'

# Puts every word from a file into a new line
awk '{c=split($0, s); for(n=1; n<=c; ++n) print s[n] }' INPUT_FILE > OUTPUT_FILE

# To print a specific line from a file
awk 'FNR==5' <file>

# sort ip by count quickly with awk from apache logs
awk '{array[$1]++}END{ for (ip in array) print array[ip] " " ip}' <path/to/apache/*.log> | sort -n

# Checks apache's access_log file, strips the search queries and shoves them up your e-mail
awk '/q=/{print $11}' /var/log/httpd/access_log.4 | awk -F 'q=' '{print $2}' | sed 's/+/ /g;s/%22/"/g;s/q=//' | cut -d "&" -f 1

# Print only the odd lines of a file
awk 'NR%2'

# Awk one-liner that sorts a css file by selector
awk '/.*{$/{s[$1]=z[$1]=j+0}{l[j++]=$0}END{asorti(s);for(v in s){while(l[z[s[v]]]!~/}$/)print l[z[s[v]]++];print"}"ORS}}'

# Extract title from HTML files
awk 'BEGIN{IGNORECASE=1;FS="<title>|</title>";RS=EOF} {print $2}' | sed '/^$/d' > file.html

# Print summary of referers with X amount of occurances
awk -F\" '{print $4}' *.log | grep -v "eviljaymz\|\-" | sort | uniq -c | awk -F\  '{ if($1>500) print $1,$2;}' | sort -n

# How To Get the Apache Document Root
awk -F\" '/^DocumentRoot/{print $2}' $(httpd -V | awk -F\" '/\.conf/{print $2}')

# Single words from Amazon Kindle 3 notes
awk -F" " '{ if ( NF == 1 ) { print $0 } }' KINDLE_NOTES_FILE.txt | sed -e '/^=/d' | sed -e '/^[[:space:]]*$/d' -e 's/,//g' | sort | comm -12 List_of_language_words.txt - | uniq

# Remove duplicate entries in a file without sorting.
awk '!x[$0]++' <file>

# Remove duplicate entries in a file without sorting.
awk '!x[$0]++' <file>

# reverse order of file
awk '{a[i++]=$0} END {for (j=i-1; j>=0;) print a[j] }'

# awk date convert
awk '{cmd="date date=\""$1"\" +\"%Y/%m/%d %H:%M:%S\" "; cmd | getline convdate; print cmd";"convdate }' file.txt

# AWK: Set Field Separator from command line
awk -F, '{print $1" "$2" "$NF}' foo.txt

# Print all lines in a file that are not a certain length
awk 'length($0)!=12 {print}' your_file_name

# Join lines
awk 'BEGIN{RS="\0"}{gsub(/\n/,"<SOMETEXT>");print}' file.txt

# Remove BOM (Byte Order Mark) from text file
awk '{if(NR==1)sub(/^\xef\xbb\xbf/,"");print}' text.txt > newFile.txt

# Remove newlines from output
awk /./ filename

# Add line number count as C-style comments
awk '{printf("/* %02d */ %s\n", NR,$0)}' inputfile > outputfile

# Show the 1000*1000 and 1024*1024 size of HDs on system
awk '/d[a-z]+$/{print $4}' /proc/partitions | xargs -i sudo hdparm -I /dev/{} | grep 'device size with M'

# Output entire line once per unique value of the first column
awk '!array[$1]++' file.txt

# Take a file as input (two columns data format) and sum values on the 2nd column for all lines that have the same value in 1st column
awk '{a[$1] += $2} END { for (i in a) {print i " " a[i]}}' /path/to/file

# Target a specific column for pattern substitution
awk '{gsub("foo","bar",$5)}1' file

# most used unix commands
awk '{print $1}' ~/.bash_history | sort | uniq -c | sort -rn | head -n 10

# Calculates the number of physical cores considering HyperThreading in AWK
awk -F: '/^core id/ && !P[$2] { CORES++; P[$2]=1 }; /^physical id/ && !N[$2] { CPUs++; N[$2]=1 };  END { print CPUs*CORES }' /proc/cpuinfo

# awk change field separator
awk '$1=$1' FS=" " OFS=":" file

# Remove duplicate lines whilst keeping empty lines and order
awk '!NF || !seen[$0]++'

# Print entire field if string is detected in column
awk '{ if ($column == "string") print}' file.txt

# Resolve a list of domain names to IP addresses
awk < file.name '{ system("resolveip -s " $1) }'

# How To Get the Apache Document Root
awk '$1~/^DocumentRoot/{print $2}' /etc/apache2/sites-available/default

# Split tsv file by fifth column ... or any column
awk -F'\t' '{print $0 >>$5.tsv}'

# Remove duplicate lines using awk
awk '!($0 in array) { array[$0]; print }' temp

# Sometimes you just want a quick way to find out if a certain user account is locked [Linux].
awk -F":" '{ print $1 }' /etc/passwd | while read UU ; do STATUS=$(passwd -S ${UU} | grep locked 2>/dev/null) ; if [[ ! -z ${STATUS} ]] ; then echo "Account ${UU} is locked." ; fi ; done

# pattern match in awk - no grep
awk '/pattern1/ && /pattern2/ && !/pattern3/ {print}'

# Lists all clients of a Squid proxy
awk '{a[$3]++} END {for(i in a) print i}' /var/log/squid/access.log

# Set user passwords to username from partial password file
awk -F: '{print "echo "$1" | passwd stdin "$1}' passwd

# Fibonacci numbers with awk
awk 'BEGIN {a=1;b=1;for(i=0;i<'${NUM}';i++){print a;c=a+b;a=b;b=c}}'

# collapse first five fields of Google Adwords export .tsv file into a single field, for gnumeric
awk -F $'\t' '{printf $1 LS $2 LS $3 LS $4 LS $5; for (i = 7; i < NF; i++) printf $i "\t"; printf "\n";}' LS=`env printf '\u2028'` 'Ad report.tsv'

# exclude a column with awk
awk '{ $5=""; print }' file

# Print a list of all disks or volumes attached to a system
awk '{if ($NF ~ "^[a-zA-Z].*[a-zA-Z]$" && $NF !~ "name" || $NF ~ "c[0-9]+d[0-9]+$") print "/dev/"$NF}' /proc/partitions

# Print out all partitions on a system
awk '{if ($NF ~ "^[a-zA-Z].*[0-9]$" && $NF !~ "c[0-9]+d[0-9]+$" && $NF !~ "^loop.*") print "/dev/"$NF}'  /proc/partitions

# Display the standard deviation of a column of numbers with awk
awk '{delta=$1; avg+=$1/NR;} END {print "stdev = " sqrt(((delta-avg)^2)/NR);}'

# Lil stats on instant usage of navigator
awk 'BEGIN{ff=0;chr=0;sf=0}{if($0~/Firefox/){ff=ff+1}if($0~/Safari/){sf=sf+1}if($0~/Chrome/){chr=chr+1} }END{total=(chr+ff+sf); print "Total: "total "\nSafari:  " (sf/total*100) "\nFirefox: "(ff/total*100) "\nChrome: "(chr/total*100)  }' /logs/access_log

# Calculating series with awk: add numbers from 1 to 100
awk 'BEGIN {for(i=1;i<=100;i++)sum+=i}; END {print sum}' /dev/null

# Print all lines from a file that has the same N th and M th column
awk '$3==$4' /etc/passwd

# stdin speaker via espeak
awk '{print}' | espeak -v pt -stdin

# irssi log histogram
awk '/^- Day changed (.*)/ {st=""; for (i=0;i<ar[date];i++) {st=st"*"} print date" "st; date=$7"-"$5"-"$6} /> emergency/ {ar[date]++} END {st=""; for (i=0;i<ar[date];i++) {st=st"*"}; print date" "st}' #engineyard.log

# Find duplicate UID in /etc/passwd
awk -F: '{print $3}' /etc/passwd | sort |uniq -d

# Removing leading + sign from numbers
awk '{print $0+0}' <(echo -2; echo +3;)

# group every five lines
awk '{x+=$2; y+=$3} NR%5==0{print x/5,y/5; x=y=0}' file.txt

# drop first column of output by piping to this
awk '{ $1="";print}'

# Search count how many times a character or string is present into a file
awk '{ total += gsub(/yourstring/,"") } END { print total }' yourfile

# Print data from field 9 till the end separated by a white space and new record separated by newline.
awk '{for (i=9;i<=NF;i++) {printf "%s",$i; printf "%s", " ";}; printf "\n"}'

# Extract single column from TPC-H datafiles
awk -F\| '{ print $2 }' nation.tbl

# Substitute from "." to "_" character in the 2nd column of a csv file, sending the output to newfile.csv
awk 'BEGIN {FS=OFS=","} {if(NF==2);gsub(/\./,"_",$2)} 1 ' file.csv > newfile.csv

# Output specific line in a very big file and exit afterwards
awk 'FNR==100 {print;exit}' file

# find the device when you only know the mount point
awk '$2 == "/media/KINGSTON" {print $1}' /etc/mtab

# Displays the attempted user name, ip address, and time of SSH failed logins on Debian machines
awk '/sshd/ && /Failed/ {gsub(/invalid user/,""); printf "%-12s %-16s %s-%s-%s\n", $9, $11, $1, $2, $3}' /var/log/auth.log

# Router discovery
awk 'NR==2 {print $1}' /proc/net/arp

# prints line numbers
awk '{print NR "\t" $0}'

# Print a row of 50 hyphens
awk 'BEGIN{while (a++<50) s=s "-"; print s}'

# transpose a file
awk '{ for (f = 1; f <= NF; f++)   a[NR, f] = $f  }  NF > nf { nf = NF } END {   for (f = 1; f <= nf; f++) for (r = 1; r <= NR; r++)     printf a[r, f] (r==NR ? RS : FS)  }'

# awk using multiple field separators
awk -F "=| "

# Network Interfaces
awk '{print $1}' /proc/net/dev|grep :|sed "s/:.*//g"

# AWK example of using substr + index to print strings in an unknown position.
awk '{word=(substr($0,index($0,"blah"),5));print word}'

# remove duplicate with change order
awk '{if(!seen[$0]++) {print $0;}}'

# unix2dos with awk
awk 'sub("$", "\r")' unixfile.txt > winfile.txt

# Prints line numbers
awk '{print NR,$0}'

# Prints the second part of the hostname of a given database in /etc/sybase/interfaces
awk '/^'$SEARCH'[ ]*$/{getline;if ($1 ~ /query/) {split($4,a,".");print a[2]}}' /etc/sybase/interfaces

# Remove blank lines from a file using grep and save output to new file
awk NF

# print file without duplicated lines using awk
awk '!a[$0]++' file

# Output ranges from length(L) and width(W)
awk -v L=100 -v W=9 'BEGIN{C=0;while(C<L){A=C;B=C+W-1;if((L-1)<B){B=L-1};print A"\t"B;system("");C=B+1}}'

# Get memory total from /proc/meminfo in Gigs
awk '( $1 == "MemTotal:" ) { print $2/1048576 }' /proc/meminfo

# get a random regex match from a file
awk 'BEGIN{srand()} match($0, /DELTA=([0-9]+);/, a) {w[i++]=a[1]} END {print w[int(rand()*i)]}' file.name

# dnscrypt-proxy: get servers with lowest rtt
awk -F, '$1!~/^Name/ {print $1,$(NF-3)}' dnscrypt-resolvers.csv | awk -F"[: ]" '$2!~/^\[/ {print $1,$2}' | parallel -j 10 colsep " " "echo -n \"{1} \"; ping -qc 60 {2} | tr -d \"\\n\"  |awk -F\"[/ ]+\" '{print \$(NF-3),\$2}'" |sort -rnk 2

# Print all fields in a file/output from field N to the end of the line
awk '{print substr($0, index($0,$N))}'

# Split the file into multiple files at every 3rd line
awk 'NR%3==1{x="F"++i;}{print > x}' file3

# find top 20 results in apache statistics for a specific month
awk '/Dec\/2012/ {print $1,$8}' logfile | grep -ivE '(.gif|.jpg|.png|favicon|.css|.js|robots.txt|wp-l|wp-term)' | sort | uniq -c | sort -rn | head -n 20

# access.log to csv
awk '{ agent=""; for(i=12; i<=NF; i++){agent=agent $i" ";} print "\""$1"\",\""$4" "$5"\","$6" "$7" "$8","$9","$10","$11","agent }' access.log

# output length of longest line
awk '(length > n) {n = length} END {print n}'

# Print just line 4 from a textfile
awk 'NR==4'

# Sum columns from CSV column $COL
awk -F ',' '{ x = x + $4 } END { print x }' test.csv

# Find pages returning 404 errors in apache logs
awk '$9 == 404 {print $7}' access_log | uniq -c | sort -rn | head

# sum a column of numbers
awk '{s+=$1}END{print s}' <file>

# Parse a quoted .csv file
awk -F'^"|", "|"$' '{ print $2,$3,$4 }' file.csv

# Print all lines between two line numbers
awk 'NR >= 3 && NR <= 6' /path/to/file

# Exclude multiple columns using AWK
awk '{$1=$3=""}1' file

# Compute running average for a column of numbers
awk '{avg += ($1 - avg) / NR;} END { print avg; }'

# Display the standard deviation of a column of numbers with awk
awk '{sum+=$1; sumsq+=$1*$1} END {print sqrt(sumsq/NR - (sum/NR)**2)}' file.dat

# sort lines by length
awk '{print length, $0;}' | sort -nr

# Get line number of all matches in a file
awk '/match/{print NR}' file

# Show max lengths of all fields in a pipe delimited file with header row
awk -F"|" 'BEGIN {OFS="|"} NR==1 {for (b=1;b<=NF;b++) {hdr[b]=$b} } NR > 1 {for (i=1;i<=NF;i++) {if(length($i) > max[i]) max[i] = length($i)} } END {for (i=1;i <= NF;i++) print hdr[i],max[i]+0}' pipe_delimited_file.psv

# Count the number of characters in each line
awk '{count[length]++}END{for(i in count){printf("%d: %d\n", count[i], i)}}'

# Find duplicate UID in /etc/passwd
awk -F":" '!list[$3]++{print $3}' /etc/passwd

# Display a block of text with AWK
awk '/start_pattern/,/stop_pattern/' file.txt

# Lists all usernames in alphabetical order
awk -F ':' '{print $1 | "sort";}' /etc/passwd

# Fibonacci numbers with awk
awk 'func f(n){return(n<2?n:f(n-1)+f(n-2))}BEGIN{while(a<24){print f(a++)}}'

# print all except first collumn
awk '{$1=""; print}'

# uniq for unsorted data
awk '!_[$0]++{print}'

# Display a block of text with AWK
awk '/start_pattern/,/stop_pattern/' file.txt

# Short Information about loaded kernel modules
awk '{print $1}' "/proc/modules" | xargs modinfo | awk '/^(filename|desc|depends)/'

# Randomize lines in a file
awk 'BEGIN{srand()}{print rand(),$0}' SOMEFILE | sort -n | cut -d ' ' -f2-

# Extract title from HTML files
awk 'BEGIN{IGNORECASE=1;FS="<title>|</title>";RS=EOF} {print $2}' file.html

# Display a block of text with AWK
awk '/start_pattern/,/stop_pattern/' file.txt

# Display a block of text with AWK
awk '/start_pattern/,/stop_pattern/' file.txt

# print file without duplicated lines usind awk
awk '!($0 in a) {a[$0];print}' file

# Command line calculator
awk "BEGIN{ print $* }"

# Display the standard deviation of a column of numbers with awk
awk '{delta = $1 - avg; avg += delta / NR; mean2 += delta * ($1 - avg); } END { print sqrt(mean2 / NR); }'

# Display a block of text with AWK
awk '/start_pattern/,/stop_pattern/' file.txt

# Short one line while loop that outputs parameterized content from one file to another
awk '{print $1}' < three-column.txt > first-column.txt

# Create user add lines from partial passwd file
awk -F: '{print "useradd -u "$3,"-c \""$5"\"","-s "$7,$1}' passwd

# Remove duplicate rows of an un-sorted file based on a single column
awk '{ if ($1 in stored_lines) x=1; else print; stored_lines[$1]=1 }' infile.txt > outfile.txt

# Every Nth line position # (AWK)
awk 'NR%3==1' file

# Remove all HTML tags from a file
awk '{gsub("<[^>]*>", "")}1' file

# Display a block of text with AWK
awk '/start_pattern/,/stop_pattern/' file.txt

# Display a block of text with AWK
awk '/start_pattern/,/stop_pattern/' file.txt

# Print line immediately before a matching regex.
awk '/regex/{print x};{x=$0}'

# Awk: Perform a rolling average on a column of data
awk 'BEGIN{size=5} {mod=NR%size; if(NR<=size){count++}else{sum-=array[mod]};sum+=$1;array[mod]=$1;print sum/count}' file.dat

# Extract shortcuts and hostnames from .ssh/config
awk '$1=="Host"{$1="";H=substr($0,2)};$1=="HostName"{print H,"$",$2}' ~/.ssh/config | column -s '$' -t

# Print diagram of user/groups
awk 'BEGIN{FS=":"; print "digraph{"}{split($4, a, ","); for (i in a) printf "\"%s\" [shape=box]\n\"%s\" -> \"%s\"\n", $1, a[i], $1}END{print "}"}' /etc/group|display

# Top 10 requestors by IP address from Apache/NCSA Logs
awk '{print $1}' /var/log/httpd/access_log | sort | uniq -c | sort -rnk1 | head -n 10

# list all hd partitions
awk '/d.[0-9]/{print $4}' /proc/partitions

# sorting file contents into individual files with awk
awk '{print > $3".txt"}' FILENAME

# Emulate tail using awk.
awk '{ c=NR%n; a[c]=$0 } END{ for(i=1; i<=n; i++) print a[(c+i)%n] }' n=10 File

# Hits per hour apache log
awk -F: '{print $2}' access_log | sort | uniq -c

# Find the real procesor speed when you use CPU scaling [cpuspeed]
awk -F": " '/cpu MHz\ */ { print "Processor (or core) running speed is: " $2 }' /proc/cpuinfo ; dmidecode | awk -F": " '/Current Speed/ { print "Processor real speed is: " $2 }'

# last.fm rss parser
awk '/<link>/{gsub(/.*<link>|<\/link>.*/,"");print "<li><a href=\042"$0"\042> "t"</a>" } /<title>/{gsub(/.*<title>|<\/title>.*/,"");t=$0 }' file

# Display unique values of a column
awk '{ a[$2]++ } END { for (b in a) { print b } }' file

# Averaging columns of numbers
awk '{sum1+=$1; sum2+=$2} END {print sum1/NR, sum2/NR}' file.dat

# Show a line when a "column" matchs
awk '{ FS = OFS = "#" } { if ($9==1234) print }' filename*.log > bigfile.log

# List your largest installed packages (on Debian/Ubuntu)
awk '{if ($1 ~ /Package/) p = $2; if ($1 ~ /Installed/) printf("%9d %s\n", $2, p)}'  /var/lib/dpkg/status | sort -n | tail

# drop first column of output by piping to this
awk '{for(i=2;i<=NF;i++) printf("%s%s",$i,(i!=NF)?OFS:ORS)}'

# Identify long lines in a file
awk 'length>72' file

# Analyze awk fields
awk '{print NR": "$0; for(i=1;i<=NF;++i)print "\t"i": "$i}'

# Exclude a string with awk
awk '{sub("String","")}1'

# Determine next available UID
awk -F: '{uid[$3]=1}END{for(x=500; x<=600; x++) {if(uid[x] != ""){}else{print x; exit;}}}' /etc/passwd

# Length of longest line of code
awk '(length>t) {t=length} END {print t}' *.cpp

# Print all /etc/passwd lines with duplicated uid
awk -F: 'BEGIN{a[NULL]=0;dupli[NULL]=0;}{if($3 in a){print a[$3];print ;}else a[$3]=$0;} ' /etc/passwd | sort -t: -k3 -n | sed -e 's/^/'$(hostname)':/g'

# Puts every word from a file into a new line
awk '{c=split($0, s); for(n=1; n<=c; ++n) print s[n] }' INPUT_FILE > OUTPUT_FILE

# To print a specific line from a file
awk 'FNR==5' <file>

# sort ip by count quickly with awk from apache logs
awk '{array[$1]++}END{ for (ip in array) print array[ip] " " ip}' <path/to/apache/*.log> | sort -n

# Checks apache's access_log file, strips the search queries and shoves them up your e-mail
awk '/q=/{print $11}' /var/log/httpd/access_log.4 | awk -F 'q=' '{print $2}' | sed 's/+/ /g;s/%22/"/g;s/q=//' | cut -d "&" -f 1

# Print only the odd lines of a file
awk 'NR%2'

# Awk one-liner that sorts a css file by selector
awk '/.*{$/{s[$1]=z[$1]=j+0}{l[j++]=$0}END{asorti(s);for(v in s){while(l[z[s[v]]]!~/}$/)print l[z[s[v]]++];print"}"ORS}}'

# Extract title from HTML files
awk 'BEGIN{IGNORECASE=1;FS="<title>|</title>";RS=EOF} {print $2}' | sed '/^$/d' > file.html

# Print summary of referers with X amount of occurances
awk -F\" '{print $4}' *.log | grep -v "eviljaymz\|\-" | sort | uniq -c | awk -F\  '{ if($1>500) print $1,$2;}' | sort -n

# How To Get the Apache Document Root
awk -F\" '/^DocumentRoot/{print $2}' $(httpd -V | awk -F\" '/\.conf/{print $2}')

# Single words from Amazon Kindle 3 notes
awk -F" " '{ if ( NF == 1 ) { print $0 } }' KINDLE_NOTES_FILE.txt | sed -e '/^=/d' | sed -e '/^[[:space:]]*$/d' -e 's/,//g' | sort | comm -12 List_of_language_words.txt - | uniq

# Remove duplicate entries in a file without sorting.
awk '!x[$0]++' <file>

# reverse order of file
awk '{a[i++]=$0} END {for (j=i-1; j>=0;) print a[j] }'

# awk date convert
awk '{cmd="date date=\""$1"\" +\"%Y/%m/%d %H:%M:%S\" "; cmd | getline convdate; print cmd";"convdate }' file.txt

# AWK: Set Field Separator from command line
awk -F, '{print $1" "$2" "$NF}' foo.txt

# Print all lines in a file that are not a certain length
awk 'length($0)!=12 {print}' your_file_name

# Join lines
awk 'BEGIN{RS="\0"}{gsub(/\n/,"<SOMETEXT>");print}' file.txt

# Remove BOM (Byte Order Mark) from text file
awk '{if(NR==1)sub(/^\xef\xbb\xbf/,"");print}' text.txt > newFile.txt

# Remove newlines from output
awk /./ filename

# Add line number count as C-style comments
awk '{printf("/* %02d */ %s\n", NR,$0)}' inputfile > outputfile

# Show the 1000*1000 and 1024*1024 size of HDs on system
awk '/d[a-z]+$/{print $4}' /proc/partitions | xargs -i sudo hdparm -I /dev/{} | grep 'device size with M'

# Output entire line once per unique value of the first column
awk '!array[$1]++' file.txt

# Take a file as input (two columns data format) and sum values on the 2nd column for all lines that have the same value in 1st column
awk '{a[$1] += $2} END { for (i in a) {print i " " a[i]}}' /path/to/file

# Target a specific column for pattern substitution
awk '{gsub("foo","bar",$5)}1' file

# most used unix commands
awk '{print $1}' ~/.bash_history | sort | uniq -c | sort -rn | head -n 10

# Calculates the number of physical cores considering HyperThreading in AWK
awk -F: '/^core id/ && !P[$2] { CORES++; P[$2]=1 }; /^physical id/ && !N[$2] { CPUs++; N[$2]=1 };  END { print CPUs*CORES }' /proc/cpuinfo

# awk change field separator
awk '$1=$1' FS=" " OFS=":" file

# Remove duplicate lines whilst keeping empty lines and order
awk '!NF || !seen[$0]++'

# Print entire field if string is detected in column
awk '{ if ($column == "string") print}' file.txt

# Resolve a list of domain names to IP addresses
awk < file.name '{ system("resolveip -s " $1) }'

# How To Get the Apache Document Root
awk '$1~/^DocumentRoot/{print $2}' /etc/apache2/sites-available/default

# Split tsv file by fifth column ... or any column
awk -F'\t' '{print $0 >>$5.tsv}'

# Remove duplicate lines using awk
awk '!($0 in array) { array[$0]; print }' temp

# Sometimes you just want a quick way to find out if a certain user account is locked [Linux].
awk -F":" '{ print $1 }' /etc/passwd | while read UU ; do STATUS=$(passwd -S ${UU} | grep locked 2>/dev/null) ; if [[ ! -z ${STATUS} ]] ; then echo "Account ${UU} is locked." ; fi ; done

# pattern match in awk - no grep
awk '/pattern1/ && /pattern2/ && !/pattern3/ {print}'

# Lists all clients of a Squid proxy
awk '{a[$3]++} END {for(i in a) print i}' /var/log/squid/access.log

# Set user passwords to username from partial password file
awk -F: '{print "echo "$1" | passwd stdin "$1}' passwd

# Fibonacci numbers with awk
awk 'BEGIN {a=1;b=1;for(i=0;i<'${NUM}';i++){print a;c=a+b;a=b;b=c}}'

# collapse first five fields of Google Adwords export .tsv file into a single field, for gnumeric
awk -F $'\t' '{printf $1 LS $2 LS $3 LS $4 LS $5; for (i = 7; i < NF; i++) printf $i "\t"; printf "\n";}' LS=`env printf '\u2028'` 'Ad report.tsv'

# exclude a column with awk
awk '{ $5=""; print }' file

# Print a list of all disks or volumes attached to a system
awk '{if ($NF ~ "^[a-zA-Z].*[a-zA-Z]$" && $NF !~ "name" || $NF ~ "c[0-9]+d[0-9]+$") print "/dev/"$NF}' /proc/partitions

# Print out all partitions on a system
awk '{if ($NF ~ "^[a-zA-Z].*[0-9]$" && $NF !~ "c[0-9]+d[0-9]+$" && $NF !~ "^loop.*") print "/dev/"$NF}'  /proc/partitions

# Display the standard deviation of a column of numbers with awk
awk '{delta=$1; avg+=$1/NR;} END {print "stdev = " sqrt(((delta-avg)^2)/NR);}'

# Lil stats on instant usage of navigator
awk 'BEGIN{ff=0;chr=0;sf=0}{if($0~/Firefox/){ff=ff+1}if($0~/Safari/){sf=sf+1}if($0~/Chrome/){chr=chr+1} }END{total=(chr+ff+sf); print "Total: "total "\nSafari:  " (sf/total*100) "\nFirefox: "(ff/total*100) "\nChrome: "(chr/total*100)  }' /logs/access_log

# Calculating series with awk: add numbers from 1 to 100
awk 'BEGIN {for(i=1;i<=100;i++)sum+=i}; END {print sum}' /dev/null

# Print all lines from a file that has the same N th and M th column
awk '$3==$4' /etc/passwd

# stdin speaker via espeak
awk '{print}' | espeak -v pt -stdin

# irssi log histogram
awk '/^- Day changed (.*)/ {st=""; for (i=0;i<ar[date];i++) {st=st"*"} print date" "st; date=$7"-"$5"-"$6} /> emergency/ {ar[date]++} END {st=""; for (i=0;i<ar[date];i++) {st=st"*"}; print date" "st}' #engineyard.log

# Find duplicate UID in /etc/passwd
awk -F: '{print $3}' /etc/passwd | sort |uniq -d

# Removing leading + sign from numbers
awk '{print $0+0}' <(echo -2; echo +3;)

# group every five lines
awk '{x+=$2; y+=$3} NR%5==0{print x/5,y/5; x=y=0}' file.txt

# drop first column of output by piping to this
awk '{ $1="";print}'

# Search count how many times a character or string is present into a file
awk '{ total += gsub(/yourstring/,"") } END { print total }' yourfile

# Print data from field 9 till the end separated by a white space and new record separated by newline.
awk '{for (i=9;i<=NF;i++) {printf "%s",$i; printf "%s", " ";}; printf "\n"}'

# Extract single column from TPC-H datafiles
awk -F\| '{ print $2 }' nation.tbl

# Substitute from "." to "_" character in the 2nd column of a csv file, sending the output to newfile.csv
awk 'BEGIN {FS=OFS=","} {if(NF==2);gsub(/\./,"_",$2)} 1 ' file.csv > newfile.csv

# Output specific line in a very big file and exit afterwards
awk 'FNR==100 {print;exit}' file

# find the device when you only know the mount point
awk '$2 == "/media/KINGSTON" {print $1}' /etc/mtab

# Displays the attempted user name, ip address, and time of SSH failed logins on Debian machines
awk '/sshd/ && /Failed/ {gsub(/invalid user/,""); printf "%-12s %-16s %s-%s-%s\n", $9, $11, $1, $2, $3}' /var/log/auth.log

# Router discovery
awk 'NR==2 {print $1}' /proc/net/arp

# prints line numbers
awk '{print NR "\t" $0}'

# Print a row of 50 hyphens
awk 'BEGIN{while (a++<50) s=s "-"; print s}'

# transpose a file
awk '{ for (f = 1; f <= NF; f++)   a[NR, f] = $f  }  NF > nf { nf = NF } END {   for (f = 1; f <= nf; f++) for (r = 1; r <= NR; r++)     printf a[r, f] (r==NR ? RS : FS)  }'

# awk using multiple field separators
awk -F "=| "

# Network Interfaces
awk '{print $1}' /proc/net/dev|grep :|sed "s/:.*//g"

# AWK example of using substr + index to print strings in an unknown position.
awk '{word=(substr($0,index($0,"blah"),5));print word}'

# print file without duplicated lines using awk
awk '!a[$0]++' file
