# Decision Making
### The if...else statements
- if...fi statement
    
    Bentuk dasar pernyataan if. Blok kode dijalankan jika kondisi benar.
    ```sh
    if [ kondisi ]; 
    then
     # Blok kode yang dijalankan jika kondisi benar
    fi
    ```
#
- if...else...fi statement
    
    Memungkinkan program menjalankan blok kode jika kondisi benar dan blok lain jika kondisi salah.
    ```sh
    if [ kondisi ]; 
    then
     # Blok kode yang dijalankan jika kondisi benar
    else
     # Blok kode yang dijalankan jika kondisi salah
    fi
    ```
#
- if...elif...else...fi statement
    ```sh
    if [ kondisi1 ]; then
        # Blok kode dijalankan jika kondisi1 benar
    elif [ kondisi2 ]; then
        # Blok kode dijalankan jika kondisi2 benar
    else
        # Blok kode dijalankan jika semua kondisi salah
    fi
    ```
#
### The case...esac Statement
Pernyataan case...esac digunakan ketika kita ingin melakukan pengambilan keputusan berdasarkan nilai dari satu variabel. 
```sh
case $variable in
    nilai1)
        # Blok kode jika variable == nilai1
        ;;
    nilai2)
        # Blok kode jika variable == nilai2
        ;;
    *)
        # Blok kode jika tidak ada nilai yang cocok
        ;;
esac
```