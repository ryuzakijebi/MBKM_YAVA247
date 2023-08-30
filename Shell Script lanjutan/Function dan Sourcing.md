# Function dan Sourcing
Program ini bertujuan untuk membuat tabel dan kemudian melakukan update terhadap file tabel yang telah dibuat. Menggunakan metode function dan sourcing, nantinya function akan dipanggil dari file lain untuk melakukan eksekusi program.

Untuk melakukan sourcing ada 2 file yang digunakan. 
#
1. function.sh

    File function.sh memiliki 3 function yaitu `generate_nama` yang berfungsi untuk mengambil 2 part random dari array `parts_nama`, lalu funtion `generate_table` yang berfungsi untuk regenerate data dan pembuatan tabel ke file ***tabel.csv***, serta function `update table` untuk menambahkan kolom id dan code dan melakukan update untuk di teruskan ke file baru ***update_table.csv***.
    ```sh
    parts_nama=("Udin" "Uchiha" "Junaedi" "Asep" "Uzumaki" "Bayu" )
    pilihan_jabatan=("Hokage" "ANBU" "Chunin" "Genin" "Jonin")
    range_umur=({17..35})
    range_gaji=({5000..45000})
    range_code=({100..900})
    file_table="table.csv"
    file_update_table="update_table.csv"

    generate_nama(){
        nama=""
        for _ in {1..2}; do
            nama_part=${parts_nama[$((RANDOM % ${#parts_nama[@]}))]}
            nama="$nama $nama_part"
        done
        echo "$nama"
    }

    generate_table() {
        echo "Nama|Jabatan|Umur|Gaji" > "$file_table"

        local i=1
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

        local i=1
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
    ```    
#
2. run.sh 
    
    File run.sh memiliki function ***run*** yang berfungsi untuk memanggil function `generate data` dan `update table` dari file function.sh. 
    
    Perintah `Source function.sh` berfungsi untuk mengimport code yang ada didalam berkas function.sh. Dengan menggunakan metode sourcing kita dapat menggunakan dan memanggil fungsi-fungsi yang ada dalam berkas functions.sh.
    ```sh
    source function.sh

    run() {
        generate_table "$1"
        update_table
    }

    run "$1"
    ```

#
### Menjalankan program
Untuk mengeksekusi program cukup jalankan file run.sh dengan parameter sesuai kebutuhan, dalam contoh ini nilai yang diinput adalah 1000 yang akan membuat data berjumlah 1000 baris.

```sh
./run.sh 1000
```


![run](https://iili.io/HyOtsLu.png)

#
### Hasil Output Program
Akan ada 2 file baru yang dibuat, file pertama adalah `tabel.csv` (memiliki 4 kolom) yang merupakan hasil dari function `generate table`  dan `update_table.csv` yang merupakan hasil dari function `update table.csv` (memiliki kolom tambahan id dan code).

![hasil](https://iili.io/HyOtiXe.png)