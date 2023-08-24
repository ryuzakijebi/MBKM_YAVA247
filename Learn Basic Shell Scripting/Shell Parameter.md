# Shellscript Parameter
Dalam skrip shell Bash, kita dapat menggunakan parameter untuk mengambil input dari baris perintah saat menjalankan skrip tersebut. Parameter-parameter ini memiliki format $1 hingga $9 untuk mewakili argumen-posisi pertama hingga kesembilan. Jika terdapat lebih dari 9 argumen, kita tidak bisa menggunakan notasi $10 atau $11 untuk argumen kesepuluh atau lebih. Solusi untuk ini adalah dengan menggunakan perintah "shift".

Misalnya, jika kita memiliki lebih dari 9 argumen, kita harus memproses atau menyimpan nilai dari $1 terlebih dahulu. Kemudian kita dapat menggunakan perintah "shift" untuk menggeser semua argumen ke bawah sehingga $10 menjadi $9, $9 menjadi $8, dan seterusnya.

### Shell Parameter
| Parameter   | Fungsi |
| ------------ | --------------------------------------------------- |
| `$1-$9`       | Mewakili parameter posisional untuk argumen satu hingga sembilan. |
| `${10}-${n}`  | Mewakili parameter posisional untuk argumen setelah sembilan. |
| `$0`          | Mewakili nama dari skrip itu sendiri. |
| `$*`          | Mewakili semua argumen sebagai satu string tunggal. |
| `$@`          | Sama seperti `$*`, tetapi berbeda saat dikelilingi dengan tanda (""). |
| `$#`          | Mewakili jumlah total argumen. |
| `$$`          | Mewakili ID proses (PID) dari skrip. |
| `$?`          | Mewakili kode kembali terakhir. |

#
Contoh :
```sh
#!/bin/bash
#
echo Nama Script ini adalah : $0
#
echo Argumen Pertama :  $1 
echo Argumen Kedua : $2 
echo Argumen Ketiga :  $3
#
echo PID file ini : $$
echo Argumen berjumlah : $# 
```
Hasil :

![test1](https://iili.io/Hpyowe1.png)


#
# Shell Scripting Shift Through Parameters
Perintah "shift" dalam skrip shell berfungsi untuk menggeser argumen-argumen yang diberikan. Perintah ini menerima angka sebagai argumen. Argumen-argumen ini akan digeser ke bawah sesuai dengan angka yang diberikan.

Misalnya, jika angka yang diberikan adalah 5, maka argumen $5 akan menjadi $1, argumen $6 akan menjadi $2, dan seterusnya.

Contoh :
```sh
#!/bin/bash

if [ "$#" == "0" ]; then
  echo Tidak ada parameter yang dimasukkan.
  exit 1
fi

while (( $# )); do
  echo Data yang diinput: $1
  shift
done

```
![test2](https://iili.io/Hpyoj5P.png)

#
## Materi tambahan
- ### Environment Parameters
    Shell juga memiliki akses kepada variabel lingkungan sistem, yang dapat diakses melalui parameter khusus seperti $HOME, $USER, dan lain-lain. Ini berguna untuk mendapatkan informasi tentang pengguna atau konfigurasi sistem.

    ```sh
    #!/bin/bash
    echo "Nama user: $USER"
    echo "Direktori home: $HOME"
    ```
#
- ### Parameter with Options
    Skrip shell dapat menerima argumen dengan opsi yang ditentukan, dapat menggunakan perintah getopts yang memungkinkan penggunaan argumen dengan opsi pendek (-a, -b, dst.) dan opsi panjang (--option1, --option2, dst.).

    Contoh :
    ```sh
    #!/bin/bash

    while getopts "a:b:" opt; do
    case $opt in
        a) arg_a="$OPTARG";;
        b) arg_b="$OPTARG";;
        \?) echo "Opsi yang tidak valid: -$OPTARG";;
    esac
    done

    echo "Opsi a: $arg_a"
    echo "Opsi b: $arg_b"
    ```
