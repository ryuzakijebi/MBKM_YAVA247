## Membuat tabel
```sh
#!/bin/bash

output_file="tabel.csv"

echo "Kolom 1, Kolom 2, Kolom 3, Kolom 4" > "$output_file"
for ((i=1; i<=50; i++));
 do
    echo "Baris $i, Baris $i, Baris $i, Baris $i" >> "$output_file"
 done

echo "Tabel berhasil dibuat"

```

Jalankan sh
```sh
./coba1.sh
```
#
Hasil

![test1](https://iili.io/HpyXNpt.png)