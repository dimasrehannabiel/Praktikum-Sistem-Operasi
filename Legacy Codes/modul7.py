from os import getpid
from time import time, sleep
from multiprocessing import Pool, Process

def modul(angka):
    global mod
    if angka % mod == 0:
        print(angka**2," - ID proses",getpid())
    else :
        print(angka," - ID proses",getpid())
    sleep(1)

if __name__ == '__main__':
    mod = int(input("Masukkan Modulus: "))
    angka = int(input("Masukkan Batas: "))

    #sekuensial
    print("\nLoop Sekuensial Processing")
    sek_awal = time()

    for i in range(1,(angka**2)+1):
        modul(i)

    sek_akhir=time()

    #Process
    print("\nLoop Multiprocessing Process")
    pro_arr = []
    pro_awal = time()

    for i in range(1,(angka**2)+1):
        p = Process(target=modul, args=(i,))
        pro_arr.append(p)
        p.start()

    for i in pro_arr:
        p.join()

    pro_akhir = time()

    #Pool
    print("\nLoop Multiprocessing Pool")
    pool_awal = time()

    pool=Pool()
    pool.map(modul,range(1,(angka**2)+1))
    pool.close()

    pool_akhir=time()

print("\nWaktu Sekuensial : ",sek_akhir - sek_awal," detik")
print("\nWaktu Multiprocessing Process : ",pro_akhir - pro_awal," detik")
print("\nWaktu Multiprocessing Pool : ",pool_akhir - pool_awal," detik")