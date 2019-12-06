IP=0;
jumlah=0;
indexnama=0;
indexnpm=0;
indexjurusan=0;
indexsemester=0;
indexmk1=0;
indexmk2=0;
indexmk3=0;
indexmk4=0;
declare -a nilai
declare -a IP
declare -a namaa
declare -a npmm
declare -a jurusann
declare -a semesterr
declare -a mk1
declare -a mk2
declare -a mk3
declare -a mk4

input_data(){
	par=$1;
	echo -n "Masukkan nama : ";
	read namaa[$indexnama];
	let indexnama=$indexnama+1;

	echo -n "Masukkan npm : ";
	read npmm[$indexnpm];
	let indexnpm=$indexnpm+1;

	echo -n "Masukkan jurusan : ";
	read jurusann[$indexjurusan];
	let indexjurusan=$indexjurusan+1;

	echo -n "Masukkan semester : ";
	read semesterr[$indexsemester];
	let indexsemester=$indexsemester+1;
}

input_nilai(){
	echo -n "Sistem Operasi : ";
	read mk1[$indexmk1];
	let indexmk1=$indexmk1+1;

	echo -n "Pemrograman Lanjut : ";
	read mk2[$indexmk2];
	let indexmk2=$indexmk2+1;

	echo -n "Bela Negara : ";
	read mk3[$indexmk3];
	let indexmk3=$indexmk3+1;

	echo -n "Statiska Komputasi : "
	read mk4[$indexmk4];
	let indexmk4=$indexmk4+1;
}

lihat_data()
{
	for((i=0;i<$indexnpm;i++));
	do
		echo "Nama : ${namaa[$i]}";
		echo "NPM : ${npmm[$i]}";
		echo "Jurusan : ${jurusann[$i]}";
		echo "Semester : ${semesterr[$i]}";
		echo " ";

		echo "Sistem Operasi : ${mk1[$i]}";
		echo "Pemrogaman lanjut : ${mk2[$i]}";
		echo "Bela Negara : ${mk3[$i]}";
		echo "Statiska Komputasi : ${mk4[$i]}"
		echo " "
	done
	echo " "
	read -rsp $'Press any key to continue...\n' -n1 key
}

lihat_ip()
{
	for((i=0;i<$indexnpm;i++));
	do
		echo "Nama : ${namaa[$i]}";
		echo "NPM : ${npmm[$i]}";	
		let jumlah=${mk1[$i]}+${mk2[$i]}+${mk3[$i]}+${mk4[$i]};
		let IP=$jumlah/4;
		echo "IP : $IP"
	done
	echo " "
	read -rsp $'Press any key to continue...\n' -n1 key
}

a=1; 
while [[ a -ge 1 ]]; do
	clear
	echo "==================";
	echo "1.Input data mahasiswa";
	echo "2.Input data nilai mata kuliah mahasiswa";
	echo "3.Lihat data mahasiswa dan nilai mata kuliah mahasiswa";
	echo "4.Nilai indeks prestasi tiap mahasiswa";
	echo "5.Exit";
	echo "==================";
	echo -n "Pilihan anda : ";
	read pilihan;

	if [[ $pilihan -eq 1 ]];
	then
		echo "==================";
		echo "Input data mahasiswa"
		input_data;
	elif [[ $pilihan -eq 2 ]];
	then
		echo "==================";
		echo "Input data nilai mata kuliah mahasiswa";
		input_nilai;
	elif [[ $pilihan -eq 3 ]];
	then
		echo "==================";
		echo "Lihat data mahasiswa";
		lihat_data
	elif [[ $pilihan -eq 4 ]]
	then
		echo "==================";
		echo "Nilai indeks prestasi tiap mahasiswa";
		lihat_ip
	elif [[ $pilihan -eq 5 ]]
	then
		a=0;
	fi
done	