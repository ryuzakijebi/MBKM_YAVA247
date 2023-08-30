# Function dan Sourcing
Program ini bertujuan untuk membuat tabel dan kemudian melakukan update terhadap file tabel yang telah dibuat. Menggunakan metode function dan sourcing, nantinya function akan dipanggil dari file lain untuk melakukan eksekusi program.

Untuk melakukan sourcing ada 2 file yang digunakan. 
#
1. function.sh

    File function.sh memiliki 2 function yaitu `generate_table` yang berfungsi untuk menyimpan perintah regenerate data dan pembuatan tabel ke file ***tabel.csv***, serta function `update table` untuk menambahkan kolom id dan code dan melakukan update untuk di teruskan ke file ***update_table.csv***.
    ```sh
    range_umur=({17..35})
    range_gaji=({5000..45000})
    range_code=({100..900})

    generate_table() {
        output_file="tabel.csv"
        echo "Nama|Jabatan|Umur|Gaji" > "$output_file"
        
        local i=1
        while [ $i -le $1 ]; do
            nama=$(shuf -n 1 /usr/share/dict/words)
            jabatan=$(shuf -n 1 /usr/share/dict/words)
            umur=${range_umur[$((RANDOM % ${#range_umur[@]}))]}
            gaji=${range_gaji[$((RANDOM % ${#range_gaji[@]}))]}
            echo "$nama|$jabatan|$umur|$gaji" >> "$output_file"
            ((i++))
        done

    echo "Tabel berhasil dibuat"
    }

    update_table() {
        file="tabel.csv"
        output="update_tabel.csv"

        echo "id|nama|jabatan|umur|gaji|code" > "$output"

        local i=1
        while IFS='|' read -r nama jabatan umur gaji; do
            if [ $i -gt 1 ]; then
                id=$(printf "%04d" $((i - 1)))
                code=${range_code[$((RANDOM % ${#range_code[@]}))]}
                echo "$id|$nama|$jabatan|$umur|$gaji|$code" >> "$output"
            fi
            ((i++))
        done < "$file"

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

![run](https://iili.io/HyO8Swl.png)

#
### Hasil Output Program
Akan ada 2 file baru yang dibuat, file pertama adalah `tabel.csv` (memiliki 4 kolom) yang merupakan hasil dari function `generate table`  dan `update_table.csv` yang merupakan hasil dari function `update table.csv` (memiliki kolom tambahan id dan code).

![hasil](https://iili.io/HyO8Ut2.png)