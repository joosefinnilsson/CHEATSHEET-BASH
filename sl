# slice a fixed number of characters from the output of a command, where the width of the slice is the number of characters in $slice
slice="-rw-rr  "; ls -l | cut -c $(echo "$slice" | wc -c)-

# slice a fixed number of characters from the output of a command, where the width of the slice is the number of characters in $slice
slice(){ cut -c$((${#1}+1))-; }; ls -l | slice "-rw-rr"

# Instant editing screenshot with Gimp
sleep 4; F="$(tempfile -s '.xwd')"; xwd > "$F" ; gimp "$F"

# Slow down IO heavy process
slow () { [ -n $1 ] && while kill -STOP $1; do sleep 1; kill -CONT $1; sleep 1; done }

# Display Spinner while waiting for some process to finish
sleep 10 & perl -e '$|=@s=qw(-Ooooo \oOooo |ooOoo /oooOo -ooooO \oooOo |ooOoo /oOooo);while(kill 0,'$!'){ print "\r",$s[$t++%($#s+1)];select(undef,undef,undef,0.2);}'

# Simply generate a password for userPassword in ldap
slpappasswd

# securely locate file and dir
slocate filename/dirname

# shutdown pc in a 4 hours
sleep 4h && halt

# Wait a moment and then Power off
sleep 10; poweroff

# Type a random string into a X11 window
sleep 3 && xdotool type delay 0ms texthere

# Set a Reminder for yourself via the notification system
sleep 6s && notify-send -t 10000 -u critical "remember to think" &

# When feeling down, this command helps
sl

# Speaking alarm clock
sleep 8h && while [ 1 ] ; do date "+Good Morning. It is time to wake up. The time is %I %M %p" | espeak -v english -p 0 -s 150 -a 100 ; sleep 1m; done

# slow down CPU and IO for process and its offsprings.
slow2() { ionice -c3 renice -n 20 $(pstree `pidof $1` -p -a -u -A|gawk 'BEGIN{FS=","}{print $2}'|cut -f1 -d " ") ; }

# Set an alarm to wake up
sleep 5h && rhythmbox path/to/song

# Take a screenshot of the window the user clicks on and name the file the same as the window title
sleep 4; xwd >foo.xwd; mv foo.xwd "$(dd skip=100 if=foo.xwd bs=1 count=256 2>/dev/null | egrep -ao '^[[:print:]]+' | tr / :).xwd"

# sleep until X o'clock
sleep $((3600 - ($(date +%s) % 3600) ))

# positions the mysql slave at a specific master position
slave start; SELECT MASTER_POS_WAIT('master.000088','8145654'); slave stop;

# Slow down IO heavy process
slow () { [ -n $1 ] && while ps -p $1 >/dev/null ; do kill -STOP  $1; sleep 1; kill -CONT $1; sleep 1; done & }

# Timer with sound alarm
sleep 3s && espeak "wake up, you bastard" 2>/dev/null

# Mute speakers after an hour
sleep 3600; amixer set Master mute

# Stoppable sleep
sleep 10 & wait $!

# Function that outputs dots every second until command completes
sleeper(){ while `ps -p $1 &>/dev/null`; do echo -n "${2:-.}"; sleep ${3:-1}; done; }; export -f sleeper

# Backup your LDAP
slapcat -n 1 > /backup/`date "+%Y%m%d"`.ldif

# Count lines of source code excluding blank lines and comments
sloccount <directory>

# Capture screen with timer
sleep 3;import -window root output.png

# sleep for a random amount of time up to an hour
sleep `shuf -i 0-3600 -n 1`

# Notify by text-message when command completes
sleep 15 ; `echo "done" | mail -s "done" 4158575309@txt.att.net`

# Timer with sound alarm
sleep 15m; yes > /dev/dsp

# teatimer
sleep 3m; play bigben.wav

# when you type this simple command, a train will show in the terminal! JUST FOR FUN
sl

# Instant editing screenshot with Gimp
sleep 4; xwd > /tmp/_.xwd ; gimp /tmp/_.xwd

# Type a random string into a X11 window
sleep 3 && xdotool type delay 0ms texthere

# Set a Reminder for yourself via the notification system
sleep 6s && notify-send -t 10000 -u critical "remember to think" &

# When feeling down, this command helps
sl

# Speaking alarm clock
sleep 8h && while [ 1 ] ; do date "+Good Morning. It is time to wake up. The time is %I %M %p" | espeak -v english -p 0 -s 150 -a 100 ; sleep 1m; done

# slow down CPU and IO for process and its offsprings.
slow2() { ionice -c3 renice -n 20 $(pstree `pidof $1` -p -a -u -A|gawk 'BEGIN{FS=","}{print $2}'|cut -f1 -d " ") ; }

# Set an alarm to wake up
sleep 5h && rhythmbox path/to/song

# Take a screenshot of the window the user clicks on and name the file the same as the window title
sleep 4; xwd >foo.xwd; mv foo.xwd "$(dd skip=100 if=foo.xwd bs=1 count=256 2>/dev/null | egrep -ao '^[[:print:]]+' | tr / :).xwd"

# sleep until X o'clock
sleep $((3600 - ($(date +%s) % 3600) ))

# positions the mysql slave at a specific master position
slave start; SELECT MASTER_POS_WAIT('master.000088','8145654'); slave stop;

# Slow down IO heavy process
slow () { [ -n $1 ] && while ps -p $1 >/dev/null ; do kill -STOP  $1; sleep 1; kill -CONT $1; sleep 1; done & }

# Timer with sound alarm
sleep 3s && espeak "wake up, you bastard" 2>/dev/null

# Mute speakers after an hour
sleep 3600; amixer set Master mute

# Stoppable sleep
sleep 10 & wait $!

# Function that outputs dots every second until command completes
sleeper(){ while `ps -p $1 &>/dev/null`; do echo -n "${2:-.}"; sleep ${3:-1}; done; }; export -f sleeper

# Backup your LDAP
slapcat -n 1 > /backup/`date "+%Y%m%d"`.ldif

# Count lines of source code excluding blank lines and comments
sloccount <directory>

# Capture screen with timer
sleep 3;import -window root output.png

# sleep for a random amount of time up to an hour
sleep `shuf -i 0-3600 -n 1`

# Notify by text-message when command completes
sleep 15 ; `echo "done" | mail -s "done" 4158575309@txt.att.net`

# Timer with sound alarm
sleep 15m; yes > /dev/dsp

# teatimer
sleep 3m; play bigben.wav
