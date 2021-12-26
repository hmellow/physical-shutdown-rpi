cd ~/sys/class/gpio;
echo 17 > export;
echo in > gpio17/direction;

state = 0;
while [ state -e 0 ];
do
    out = cat gpio17/value;
    if [ out -e 0  ];
    then
        break;
    else
        state = 1;
        break;
shutdown;
