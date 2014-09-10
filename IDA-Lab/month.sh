
echo " Close this window to stop recording"
peakspeed=0
echo $peakspeed>peakspeed

for ((  i = 0 ;  i >= 0;  i++  ))
do

ifconfig>a_2
tail -12 a_2>t_2
head -1 t_2>b_2
awk '{print $2}' b_2>c_2
awk '{print $6}' b_2>d_2
cut -c 7-10,10-100 c_2>in1_2
cut -c 7-10,10-100 d_2>out1_2


sleep 1

ifconfig>a_2
tail -12 a_2>t_2
head -1 t_2>b_2
awk '{print $2}' b_2>c_2
awk '{print $6}' b_2>d_2
cut -c 7-10,10-100 c_2>in2_2
cut -c 7-10,10-100 d_2>out2_2

in1_2=$(cat in1_2)
in2_2=$(cat in2_2)

out1_2=$(cat out1_2)
out2_2=$(cat out2_2)

((inspeed_2=$in2_2-$in1_2))

((outspeed_2=$out2_2-$out1_2))

((total_2=$inspeed_2+$outspeed_2))





if (( total_2 > peakspeed )) ;
then
peakspeed=$total_2
fi

echo $peakspeed>peakspeed 

month=$(cat month)
((month=$month+$total_2))
echo $month>month


 

done


