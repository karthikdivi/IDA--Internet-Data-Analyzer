monthtemp=$(cat month)

gbtemp=$(cat gb)

((remaintemp=$gbtemp-$monthtemp))

zenity --info --text="$remaintemp bytes you have"
