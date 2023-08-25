- ### Creating Functions
    Fungsi dalam shell adalah cara untuk memecah skrip menjadi bagian-bagian yang lebih kecil dan terorganisir, yang dapat dipanggil saat diperlukan. Fungsi membantu dalam menciptakan penggunaan kembali kode dan mengelompokkan tugas-tugas terkait.
    ```sh
    nama_fungsi () {
    daftar_perintah
    }
    ```
#
- ### Pass Parameters to a Function
    Kita dapat memberikan parameter kepada fungsi saat memanggilnya. Parameter ini direpresentasikan oleh $1, $2, dan seterusnya.
    ```sh
    #!/bin/sh

    # Mendefinisikan fungsi dengan parameter
    Sapa () {
    echo "Halo $1 $2"
    }

    # Memanggil fungsi dengan parameter
    Sapa Zara Ali
    ```
#
- ### Returning Values from Functions
    Kita dapat mengembalikan nilai dari fungsi menggunakan perintah return. Jika ingin menghentikan eksekusi fungsi tanpa menghentikan seluruh skrip, gunakan perintah return dengan nilai yang diinginkan.
    ```sh
    #!/bin/sh

    # Mendefinisikan fungsi yang mengembalikan nilai
    TampilkanPesan () {
    echo "Halo $1 $2"
    return 10
    }

    # Memanggil fungsi dan menangkap nilai yang dikembalikan
    TampilkanPesan Zara Ali
    ret=$?

    echo "Nilai kembali adalah $ret"
    ```
#
- ### Nested Functions
    Fungsi dapat memanggil fungsi lain, termasuk dirinya sendiri. Ini dikenal sebagai fungsi bertingkat atau rekursif.
    Contoh :
    ```sh
    #!/bin/sh

    # Memanggil fungsi lain dari dalam fungsi
    FungsiSatu () {
    echo "Ini adalah fungsi pertama..."
    FungsiDua
    }

    FungsiDua () {
    echo "Ini sekarang adalah fungsi kedua..."
    }

    # Memanggil fungsi pertama
    FungsiSatu
    ```
#
- ### Function Call from Prompt
    Kita dapat menempatkan definisi fungsi di .profile untuk mengaksesnya di setiap sesi shell. Atau Anda dapat menyimpan definisi fungsi dalam berkas dan menjalankannya dengan perintah seperti ini :
    ```sh
    $. nama_berkas.sh
    ```
    Perintah ini akan membuat fungsi tersedia untuk digunakan dalam sesi shell saat ini.

    Contoh Misalnya kita ingin membuat fungsi yang melakukan operasi sederhana.
    ```sh
    #!/bin/sh

    # Mendefinisikan fungsi penjumlahan
    Penjumlahan () {
    hasil=$(( $1 + $2 ))
    echo "Hasil penjumlahan: $hasil"
    }

    # Memanggil fungsi dengan parameter
    Penjumlahan 10 20
    ```

    Hasil
    ```sh
    Hasil penjumlahan: 30
    ```