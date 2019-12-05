kecepatan_internet()
{
	# Ping google sebanyak 5x 
	ping -c 5 google.com
}

buka_browser()
{
	# Membuka browser firefox jika sudah terinstall firefox
	firefox
}

download_file()
{
	# Mengunduh file dari suatu link dengan menggunakan command wget *alamat link*
	link=$1
	wget $link
}

lihat_isi_folder()
{
	# Melihat isi dari folder saat ini
	ls
}

lihat_permission()
{
	# Melihat permission dari isi folder saat ini
	ls -l
}

buka_berkas()
{
	# Membuka sebuah berkas yang ada di dalam folder saat ini
	nama_berkas=$1
	xdg-open $nama_berkas
}

rename_berkas()
{
	# Mengganti nama dan ekstension dari berkas yang ada di dalam folder saat ini
	nama_berkas_lama=$1
	nama_berkas_baru=$2
	mv $nama_berkas_lama $nama_berkas_baru
}

hapus_berkas()
{
	# Menghapus sebuah berkas dari berkas yang ada di dalam folder saat ini
	nama_berkas=$1
	rm $nama_berkas
}

a=1;
while [[ a -eq 1 ]];
do
	clear
	echo "==========================================="
	echo "   PROGRAM PEMBANTU PENJELAJAH INTERNET    "
	echo "==========================================="
	echo "      Tugas Akhir Sistem Operasi 2019      " 
	echo "  Oleh : Dimas Rehan Nabiel Avianto (021)  "
	echo "==========================================="
	echo "1. Melihat kecepatan internet ( test ping )"
	echo "2. Buka browser firefox"
	echo "3. Download sebuah berkas"
	echo "4. Melihat isi dari folder saat ini"
	echo "5. Melihat permission dari isi folder saat ini"
	echo "6. Membuka sebuah berkas"
	echo "7. Rename sebuah berkas"
	echo "8. Menghapus sebuah berkas"
	echo "9. Terima kasih"
	echo "10.Keluar Program"
	echo "==========================================="
	echo -n "Silahkan pilih menu : "
	read pilihan

	if [[ $pilihan -eq 1 ]]; 
	then
		echo " "
		kecepatan_internet

		echo " "
		read -rsp $'Press any key to continue...\n' -n1 key
	elif [[ $pilihan -eq 2 ]]; 
	then
		echo "Browser fireox akan segera dibuka"
		buka_browser

		echo " "
		echo "Browser firefox telah dibuka"
		read -rsp $'Press any key to continue...\n' -n1 key
	elif [[ $pilihan -eq 3 ]]; 
	then
		echo "Masukkan link berkas yang akan diunduh : "
		read link_berkas
		download_file $link_berkas

		echo " "
		echo "Berkas telah terunduh"
		read -rsp $'Press any key to continue...\n' -n1 key
	elif [[ $pilihan -eq 4 ]]; 
	then
		echo "Berikut adalah daftar isi folder saat ini : "
		lihat_isi_folder

		echo " "
		read -rsp $'Press any key to continue...\n' -n1 key
	elif [[ $pilihan -eq 5 ]]; 
	then
		echo "Berikut adalah daftar permission dari isi folder saat ini : "
		lihat_permission

		echo " "
		read -rsp $'Press any key to continue...\n' -n1 key
	elif [[ $pilihan -eq 6 ]]; 
	then
		lihat_isi_folder
		echo " "

		echo "Masukkan nama berkas yang ingin dibuka : "
		read nama_berkas
		buka_berkas $nama_berkas

		echo " "
		echo "Berkas telah dibuka"
		read -rsp $'Press any key to continue...\n' -n1 key
	elif [[ $pilihan -eq 7 ]]; 
	then
		lihat_isi_folder
		echo " "

		echo "Masukkan nama dari berkas yang akan diubah : "
		read berkas_lama
		echo "Masukkan nama baru dari file yang akan diubah : "
		read berkas_baru
		rename_berkas $berkas_lama $berkas_baru

		echo " "
		echo "Nama dan esktensi berkas berhasil diubah"
		read -rsp $'Press any key to continue...\n' -n1 key
	elif [[ $pilihan -eq 8 ]]; 
	then
		lihat_isi_folder
		echo " "

		echo "Masukkan nama dari berkas yang akan dihapus : "
		read nama_berkas
		hapus_berkas $nama_berkas

		echo " "
		echo "Berkas telah dihapus"
		read -rsp $'Press any key to continue...\n' -n1 key
	elif [[ $pilihan -eq 9 ]]; 
	then
		echo "Terima kasih kepada dosen pengajar mata kuliah sistem operasi"
		echo "kelas paralel B. Beserta asisten dosen yang telah memberikan"
		echo "materi tentang konsep dasar sistem operasi dan juga praktikum"
		echo " "
		read -rsp $'Press any key to continue...\n' -n1 key
	elif [[ $pilihan -eq 10 ]];
	then
		echo "Terima kasih telah menggunakan program ini"
		echo "Sampai jumpa di lain waktu"
		echo " "
		read -rsp $'Press any key to continue...\n' -n1 key
		a=0;
	else
		echo " "
		echo "Pilihan anda tidak ada dalam menu program!"
		echo "Silahkan pilih menu yang ada dalam program"

		echo " "
		read -rsp $'Press any key to continue...\n' -n1 key
	fi
done