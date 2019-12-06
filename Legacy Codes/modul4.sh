a=1;
while [[ a -ge 1 ]]; do
	echo "=============================";
	echo "1. Menu Kalkulator Loop ";
	echo "2. Exit";
	echo "=============================";
	echo -n "Pilihan : ";
	read pilihan;
	if [[ $pilihan -eq 1 ]]; 
	then
		echo -n "Masukkan Inputan Bilangan Acuan : ";
		read bil_acuan;
		echo -n "Masukkan Batasan Loop : ";
		read bts_loop;
		echo "";

		b=1;
		echo "== Penjumlahan == ";
		while [[ $b -le bts_loop ]]; 
			do
			let jumlah=$bil_acuan+$b;	
			echo "$bil_acuan + $b = $jumlah";
			b=$((b + 1))
		done
		echo "";

		b=1;
		echo "== Pengurangan ==";
		while [[ $b -le bts_loop ]]; 
			do
			let kurang=$bil_acuan-$b;	
			echo "$bil_acuan - $b = $kurang";
			b=$((b + 1))
		done
		echo "";

		b=1;
		echo "== Perkalian ==";
		while [[ $b -le bts_loop ]]; 
			do
			let kali=$bil_acuan*$b;		
			echo "$bil_acuan x $b = $kali";
			b=$((b + 1))
		done
		echo "";

		b=1;
		echo "== Pembagian ==";
		while [[ $b -le bts_loop ]]; 
			do
			let bagi=$bil_acuan/$b;		
			echo "$bil_acuan / $b = $bagi";
			b=$((b + 1))
		done
		echo "";
	elif [[ $pilihan -eq 2 ]];
	then
		a=0;	
	fi
done
