echo -n "Masukkan Menit : "
read input;

if [ $input -ge 1440 ]
then
    let hari=$input/1440
    let sisa=$input%1440
    let jam=$sisa/60
    let sisa=$sisa%60
    let menit=$sisa
    echo "$hari Hari"
    echo "$jam Jam"
    echo "$menit Menit"
elif [ $input -ge 60 ]
then
    let jam=$input/60
    let sisa=$input%60
    let menit=$sisa
    echo "$jam Jam"
    echo "$menit Menit"
elif [ $input -ge 1 ]
then
    echo "$input Menit"
fi
