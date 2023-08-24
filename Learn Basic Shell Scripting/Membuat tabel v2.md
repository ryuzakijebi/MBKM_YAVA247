## Membuat tabel v2

- **Nama** digenerate random mengambil 2 part dari variabel **part_nama**
- **Jabatan** digenerate random dari list variabel **pilihan_jabatan**
- **Umur** digenerate random dari variabel **range_umur**
- **Gaji** digenerate random dari variabel **range_gaji**

```sh
!/bin/bash

output_file="tabel.csv"

echo " Nama, Jabatan, Umur, Gaji" > "$output_file"

range_umur=({17..35})
pilihan_jabatan=("Hokage" "ANBU" "Chunin" "Genin" "Jonin")
range_gaji=({5000..45000})
parts_nama=("Uchiha" "Udin" "Uzumaki" "Junaedi" "Itachi" "Kakashi" "Asep" "Bayu")

generate_nama() {
  nama=""
  for _ in {1..2}; do
    nama_part=${parts_nama[$((RANDOM % ${#parts_nama[@]}))]}
    nama="$nama $nama_part"
  done
  echo "$nama"
}

i=1
while [ $i -le 50 ]; do
  nama=$(generate_nama)
  jabatan=${pilihan_jabatan[$((RANDOM % ${#pilihan_jabatan[@]}))]}
  umur=${range_umur[$((RANDOM % ${#range_umur[@]}))]}
  gaji=${range_gaji[$((RANDOM % ${#range_gaji[@]}))]}
  echo "$nama, $jabatan, $umur, $gaji" >> "$output_file"
  ((i++))
done

echo "Tabel berhasil dibuat"
```
![test1](https://iili.io/HyHTOyQ.png)



