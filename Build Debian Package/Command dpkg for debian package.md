## dpkg for Debian

dpkg adalah perintah di sistem operasi Debian dan distribusi turunannya yang digunakan untuk mengelola paket software dalam format .deb yang memungkinkan pengguna untuk melakukan berbagai operasi seperti instalasi, penghapusan, dan konfigurasi paket. Dengan dpkg, pengguna dapat mengelola program, library, dan file konfigurasi sistem.
#
### Struktur dasar paket .deb
Paket .deb adalah arsip yang mengandung data dan metadata yang diperlukan untuk menginstal aplikasi. Paket .deb memiliki struktur dasar yang mengorganisir berkas-berkas dan direktori-direktori yang ingin diinstal ke dalam sistem Linux.

![](https://iili.io/JdB4nTP.png)



1. **/DEBIAN/**
   
   Direktori DEBIAN/ dalam paket .deb adalah salah satu komponen paling penting karena berisi berkas kontrol dan konfigurasi yang diperlukan untuk mengelola instalasi, konfigurasi, dan penghapusan paket. 

   Ini adalah lokasi file `control`. Berkas control adalah berkas yang paling penting dalam direktori DEBIAN/. Berkas ini berisi metadata paket seperti nama paket, versi, dependensi, prioritas, arsitektur, dan deskripsi. Berkas ini diperlukan untuk semua paket .deb dan membantu manajer paket memahami cara mengelola paket tersebut di sistem.

2. **/usr/bin**
   
   Direktori /usr/bin dalam paket .deb digunakan untuk menyimpan berkas biner eksekutif dari aplikasi yang akan dijalankan oleh user. Misalnya, jika user memiliki aplikasi bernama "MyApp", berkas binernya (myapp-executable) akan ditempatkan di /usr/bin dalam struktur paket .deb. User kemudian dapat menjalankan aplikasi ini dari terminal tanpa menuliskan jalur lengkap menuju berkas binernya.

3. **/opt**

    Direktori /opt adalah alternatif untuk menyimpan aplikasi kompleks dengan struktur direktori terpisah. Hal ini akan memberi fleksibilitas pada instalasi aplikasi dengan banyak dependensi tanpa mengganggu struktur sistem yang ada.
#
## Command dpkg yang sering digunakan
| **Perintah**               | **Deskripsi**                                                                             |
|------------------------|------------------------------------------------------------------------------------------|
| `dpkg-deb --build <nama-direktori>` | Membangun paket Debian dari direktori yang ditentukan.                                  |
| `dpkg --purge <nama-paket>`                | Menghapus paket Debian beserta konfigurasi dan file konfigurasi dari sistem. |
| `dpkg -i <nama-file.deb>`          | Menginstal paket Debian.                                                                  |
| `dpkg -r <nama-paket>`             | Menghapus paket Debian dari sistem (tanpa menghapus konfigurasi).                        |
| `dpkg -P <nama-paket>`             | Menghapus paket Debian beserta konfigurasi dari sistem.                                  |
| `dpkg -L <nama-paket>`             | Menampilkan daftar berkas yang dipasang oleh paket Debian.                               |
| `dpkg -s <nama-paket>`             | Menampilkan informasi status tentang paket Debian, termasuk versi dan deskripsi.          |
| `dpkg-query -l <nama-paket>`       | Menampilkan informasi lengkap tentang paket Debian, termasuk status instalasi dan versi. |
