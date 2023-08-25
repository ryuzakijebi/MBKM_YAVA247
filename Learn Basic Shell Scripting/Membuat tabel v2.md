## Membuat tabel

- **Nama** dan **Jabatan** digenerate random dari file /usr/share/dict/words
- **Umur** digenerate random dari variabel **range_umur**
- **Gaji** digenerate random dari variabel **range_gaji**
- Menggunakan perintah Output Redirection untuk mengalihkan keluaran program ke berkas tabel.csv

  ```sh
  #!/bin/bash

  output_file="tabel.csv"

  echo " Nama, Jabatan, Umur, Gaji" > "$output_file"

  range_umur=({17..35})
  range_gaji=({5000..45000})

  i=1
  while [ $i -le $1 ]; do
    nama=$(shuf -n 1 /usr/share/dict/words)
    jabatan=$(shuf -n 1 /usr/share/dict/words)
    umur=${range_umur[$((RANDOM % ${#range_umur[@]}))]}
    gaji=${range_gaji[$((RANDOM % ${#range_gaji[@]}))]}
    echo "$nama, $jabatan, $umur, $gaji" >> "$output_file"
    ((i++))
  done

  echo "Tabel berhasil dibuat"

  ```
  #
  Contoh
  ```
  ./coba1.sh 1000
  ```
  Dari perintah ini program akan melakukan perulangan sebanyai jumlah variabel $1. Variabel $1 adalah argumen pertama saat menjalankan script. Pada perintah diatas argument pertama adalam 1000. Jadi nilai $1 = 1000 dan perulangan akan dilakukan 1000x untuk membuat 1000 baris data.

  ![test1](https://iili.io/Hy3WPrg.jpg)
