# Mkdir hdfs
### Membuat direktori tmp
```sh
hdfs dfs -mkdir /tmp
```
#
### Membuat shellscript
Program ini berfungsi untuk membuat direktori baru dengan format yang telah ditentukan.
```sh
#!/bin/bash

$HADOOP_HOME/bin/hdfs dfs -mkdir "/tmp/$(date +dir_%d_%b_%Y_Jam_%H_%M_%S)"
 ```

#
### Konfigurasi crontab
Konfigurasi ini berfungsi untuk menjalankan mkdir.sh sebanyak 5x dengan durasi jeda 1 menit pada menit ke 0 sampai 5 setiap jam nya.
```sh
0-5 * * * * /bin/bash /home/hadoop/mkdir.sh
```
![](https://iili.io/HyPwXIe.png)


#
# Send file to hdfs
### File generate data
Program ini berfungsi untuk generate data dan memindahkan file output nya ke directory hdfs
```sh
#!/bin/bash

parts_nama=("Udin" "Uchiha" "Junaedi" "Asep" "Uzumaki" "Bayu")
pilihan_jabatan=("Hokage" "ANBU" "Chunin" "Genin" "Jonin")
range_umur=({17..35})
range_gaji=({5000..45000})
range_code=({100..900})
file_table="table.csv"

generate_nama() {
    nama=""
    for _ in {1..2}; do
        nama_part=${parts_nama[$((RANDOM % ${#parts_nama[@]}))]}
        nama="$nama $nama_part"
    done
    echo "$nama"
}

generate_data() {
    echo "id|nama|jabatan|umur|gaji|code" > "$file_table"

    local i=1
    while [ $i -le 10 ]; do
        nama=$(generate_nama)
        jabatan=${pilihan_jabatan[$((RANDOM % ${#pilihan_jabatan[@]}))]}
        umur=${range_umur[$((RANDOM % ${#range_umur[@]}))]}
        gaji=${range_gaji[$((RANDOM % ${#range_gaji[@]}))]}
        code=${range_code[$((RANDOM % ${#range_code[@]}))]}
        echo "$i|$nama|$jabatan|$umur|$gaji|$code" >> "$file_table"
        ((i++))
    done
    echo "Update Selesai"
}

generate_data

current_time=$(date +"dir_%d_%b_%Y_Jam_%H_%M_%S")
hdfs_directory="/tmp/$current_time"
/usr/local/hadoop/bin/hadoop fs -mkdir "$hdfs_directory"
/usr/local/hadoop/bin/hadoop fs -put "$file_table" "$hdfs_directory/"
```

#
Crontab yang akan mengeksekusi program setiap menit pada menit 25-30
```sh
25-30 * * * * /bin/bash /home/hadoop/send_data.sh
```
#
### Hasil
![](https://iili.io/HyiBSTb.png)
#
![](https://iili.io/HyiCdFI.png)