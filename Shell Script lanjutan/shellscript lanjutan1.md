# 1. Word Count
Program ini bertujuan untuk mencari :
- Jumlah total kata
- Jumlah total kata amet dan Amet
- Jumlah total baris

Kemudian program akan mengubah kata "amet" menjadi "tema" dan "Amet" menjadi "temA" dan melakukan export ke file uptade.txt.

```sh
file="target.txt"

total_kata=$(wc -w < "$file")
total_cari=$(grep -o -i "Amet" "$file" | wc -w)
total_baris=$(wc -l < "$file")

echo "Total Seluruh Kata : $total_kata"
echo "Total kata amet : $total_cari"
echo "Total baris : $total_baris"

sed -e 's/amet/tema/g' -e 's/Amet/Tema/g' "$file" > update.txt

echo "Update sukses"

total_tema=$(grep -o "tema" update.txt | wc -w)
total_Tema=$(grep -o "Tema" update.txt | wc -w)

echo "Total kata tema : $total_tema"
echo "Total kata Tema : $total_Tema"
```

![test1](https://iili.io/HylZENt.jpg)







#
Kode ini menggunakan perintah sed untuk melakukan penggantian teks pada file "target.txt". Pada bagian -e 's/amet/tema/g', perintah sed mencari setiap kemunculan kata "amet" dalam file dan menggantinya dengan "tema". Kemudian, pada bagian -e 's/Amet/temA/g', perintah ini mencari setiap kemunculan kata "Amet" dalam file dan menggantinya dengan "temA". Hasil dari kedua penggantian ini disimpan dalam file baru yang diberi nama "update.txt". 



```sh
sed -e 's/amet/tema/g' -e 's/Amet/temA/g' target.txt > update.txt
```





![test15](https://iili.io/HylQP9I.jpg)

#
# 2. Update Tabel
Program ini bertujuan untuk mengupdate tabel dengan menambahkan kolom baru id dan code. 

```sh
file="tabel.csv"
output="update_tabel.csv"

range_code=({100..900})
echo "id|nama|jabatan|umur|gaji|code" > "$output"

i=1
while IFS=, read -r nama jabatan umur gaji;
do
  if [ $i -gt 1 ]; then
    id=$(printf "%04d" $((i - 1)))
    code=${range_code[$((RANDOM % ${#range_code[@]}))]}
    echo "$id|$nama|$jabatan|$umur|$gaji|$code" >> "$output"
  fi
  ((i++))
done < "$file"

echo "Update Selesai"
```

#


![test2](https://iili.io/HylQ9hg.jpg)