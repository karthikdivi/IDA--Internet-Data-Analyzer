ifconfig>a
tail -2 a>b
c=$(cat b)
zenity --info --text="$c"

