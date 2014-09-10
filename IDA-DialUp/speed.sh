i=0

for ((  i = 0 ;  i >= 0;  i++  ))
do

ifconfig>a_1
tail -2 a_1>b_1
awk '{print $2}' b_1>c_1
awk '{print $6}' b_1>d_1
cut -c 7-10,10-100 c_1>in1_1
cut -c 7-10,10-100 d_1>out1_1


sleep 1

ifconfig>a_1
tail -2 a_1>b_1
awk '{print $2}' b_1>c_1
awk '{print $6}' b_1>d_1
cut -c 7-10,10-100 c_1>in2_1
cut -c 7-10,10-100 d_1>out2_1

in1_1=$(cat in1_1)
in2_1=$(cat in2_1)

out1_1=$(cat out1_1)
out2_1=$(cat out2_1)

((inspeed_1=$in2_1-$in1_1))

((outspeed_1=$out2_1-$out1_1))

((total_1=$inspeed_1+$outspeed_1))

clear
echo received: $inspeed_1 bytes/sec  sent: $outspeed_1 bytes/sec

echo totaldata transfer: $total_1 bytes/sec




done
