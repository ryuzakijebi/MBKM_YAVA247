## How to Create File Control
File Control adalah berkas teks yang berisi metadata tentang paket Debian. Berkas ini diperlukan untuk semua paket Debian (.deb) dan berfungsi sebagai panduan bagi sistem manajemen paket (seperti dpkg, apt, dan lainnya) untuk menginstal, mengkonfigurasi, dan menghapus paket tersebut dari sistem.
#
1. Membuat directory project. Directory ini digunakan untuk menyimpan semua konten paket, termasuk metadata, biner, file konfigurasi, dan file log.
    #
2. Buat directory DEBIAN. Directory ini berfungsi sebagai penyimpanan untuk berkas kontrol dan konfigurasi yang diperlukan untuk mengelola instalasi, konfigurasi, dan penghapusan paket. Kemudian buat file `control`.

    ![](https://iili.io/JdBbIOG.png)
    ![](https://iili.io/JdByRWv.png)
   #
3. Didalam file `control` umumnya terdapat field berikut :


    | Field          | Keterangan                                                                                     |
    |-----------------|-------------------------------------------------------------------------------------------------|
    | Package **(wajib ada)**         | Nama paket biner.                                                                              |
    | Version **(wajib ada)**         | Versi paket.                                                                                    |
    | Architecture **(wajib ada)**   | Arsitektur perangkat keras yang didukung oleh paket ini, seperti amd64, i386, dll.              |
    | Maintainer **(wajib ada)**      | Nama orang yang memelihara atau bertanggung jawab atas paket ini.                               |
    | Description **(wajib ada)**     | Deskripsi singkat tentang apa yang dilakukan oleh paket ini dan apa yang berbeda setelah diinstal. |
    | Section (direkomendasi)        | Kategori aplikasi, contohnya: debug, devel, dll.                                                |
    | Priority (direkomendasi)        | Prioritas paket, misalnya: penting, opsional, ekstra.                                           |
    | Source          | Nama paket sumber yang dihasilkan paket ini, jika berlaku.                                     |
    | Essential       | Menyatakan apakah paket ini penting untuk fungsi dasar sistem atau tidak.                        |
    | Depends et al   | Paket-paket lain yang diperlukan oleh paket ini agar dapat berfungsi dengan baik.                |
    | Installed-Size  | Ukuran yang diambil oleh paket ini setelah diinstal di sistem.                                  |
    | Homepage        | Situs web proyek yang terkait dengan paket ini.                                                  |
    | Built-Using     | Informasi tentang paket-paket lain yang digunakan saat membangun paket ini.                       |
    #
4. Field ***Priority*** dapat diisi dengan berbagai parameter yaitu :
   | **Nilai Priority** | **Deskripsi**                                                  |
    |-------------------|-----------------------------------------------------------------|
    | required          | Bagian dari instalasi dasar sistem operasi.                      |
    | important         | Penting, tetapi tidak diperlukan untuk sistem dasar.             |
    | standard          | Bagian dari instalasi standar sistem operasi.                    |
    | optional          | Bersifat opsional dan tidak diperlukan untuk menjalankan sistem.  |
    | extra             | Aplikasi tambahan atau perangkat lunak eksperimental.            |
    | unknown           | Prioritas paket tidak diketahui atau tidak terdefinisi.           |
    #
5. Buka dan isi file `control` dengan field yang diperlukan.
   
    ![](https://iili.io/JdBy5sR.png)
    #
6. Kemudian Save. File `control` tidak memiliki extensi apapun.