# Function dan Sourcing
Program ini bertujuan untuk membuat tabel dan kemudian melakukan update terhadap file tabel yang telah dibuat. 

File ini memimiliki beberapa function
- function `generate_nama` berfungsi untuk mengambil 2 part random dari array `parts_nama` yang akan digunakan untuk generate data kolom nama
- funtion `generate_table` yang berfungsi untuk regenerate data dan membuat tabel ke file ***tabel.csv***
- function `update table` untuk menambahkan kolom id dan code dan melakukan update untuk di teruskan ke file baru ***update_table.csv***.

Saat dieksekusi, program akan memanggil function `generate_table` dan `update table`.
```sh
parts_nama=("Udin" "Uchiha" "Junaedi" "Asep" "Uzumaki" "Bayu")
pilihan_jabatan=("Hokage" "ANBU" "Chunin" "Genin" "Jonin")
range_umur=({17..35})
range_gaji=({5000..45000})
range_code=({100..900})
file_table="table.csv"
file_update_table="update_table.csv"

generate_nama() {
    nama=""
    for _ in {1..2}; do
        nama_part=${parts_nama[$((RANDOM % ${#parts_nama[@]}))]}
        nama="$nama $nama_part"
    done
    echo "$nama"
}

generate_table() {
    echo "Nama|Jabatan|Umur|Gaji" > "$file_table"

    i=1
    while [ $i -le $1 ]; do
        nama=$(generate_nama)
        jabatan=${pilihan_jabatan[$((RANDOM % ${#pilihan_jabatan[@]}))]}
        umur=${range_umur[$((RANDOM % ${#range_umur[@]}))]}
        gaji=${range_gaji[$((RANDOM % ${#range_gaji[@]}))]}
        echo "$nama|$jabatan|$umur|$gaji" >> "$file_table"
        ((i++))
    done

    echo "Tabel berhasil dibuat"
}

update_table() {
    echo "id|nama|jabatan|umur|gaji|code" > "$file_update_table"

    i=1
    while IFS='|' read -r nama jabatan umur gaji; do
        if [ $i -gt 1 ]; then
            id=$(printf "%04d" $((i - 1)))
            code=${range_code[$((RANDOM % ${#range_code[@]}))]}
            echo "$id|$nama|$jabatan|$umur|$gaji|$code" >> "$file_update_table"
        fi
        ((i++))
    done < "$file_table"

    echo "Update Selesai"
}


generate_table "$1"
update_table "$1"
```

#
### Menjalankan program
Jalankan program function.sh dengan parameter sesuai kebutuhan, dalam contoh ini nilai yang diinput adalah 1000 yang akan membuat data berjumlah 1000 baris.

```sh
./run.sh 1000
```



![run](https://iili.io/Hye9R5v.png)

#
### Hasil Output Program
Akan ada 2 file baru yang dibuat, file pertama adalah `tabel.csv` (memiliki 4 kolom) yang merupakan hasil dari function `generate table`  dan `update_table.csv` yang merupakan hasil dari function `update table.csv` (memiliki kolom tambahan id dan code).

![hasil](https://iili.io/Hye9AdJ.png)