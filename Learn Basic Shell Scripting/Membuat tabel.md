## Membuat tabel
```sh
#!/bin/bash
output_file="tabel.csv"

echo "Kolom 1, Kolom 2, Kolom 3, Kolom 4" > "$output_file"

i=1
while [ $i -le 50 ]; do
 echo "Baris $i, Baris $i, Baris $i, Baris $i" >> "$output_file"
 ((i++))
done

echo "Tabel berhasil dibuat"

```

Jalankan sh
```sh
./coba1.sh
```
#
Hasil

![test1](https://iili.io/HpyhNKx.png)
