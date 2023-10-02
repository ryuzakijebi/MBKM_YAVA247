# How to create Binary source
Struktur internal paket .deb meniru struktur file sistem Linux, seperti /usr, /usr/bin, /opt, dan sebagainya. Sehingga berkas yang di letakkan di direktori di dalam paket akan ditempatkan di lokasi yang sama di komputer user saat dipasang. 

Contoh, berkas biner yang ditempatkan di <.deb>/usr/local/bin/binaryfile akan diinstal ke /usr/local/bin/binaryfile pada system.

Secara eksternal, semua berkas paket .deb mengikuti konvensi penamaan tertentu :

```sh
<nama>_<versi>-<revisi>_<arsitektur>.deb
```

- `<nama>` : nama aplikasi.
- `<versi>` : nomor versi aplikasi.
- `<revisi>` : nomor versi paket .deb saat ini.
- `<arsitektur>` : arsitektur hardware di mana program akan dijalankan.


Contoh, jika ingin merilis  program dengan nama "uchiha", versi 1.0, dibuild untuk prosesor ARM 64-bit, maka nama berkas .deb nya menjadi `uchiha_1.0-1_arm64.deb`.

#
1. #### Membuat Directory project
    ```sh
    mkdir uchiha_1.0-1_amd64
    ```
#
2. #### Membuat struktur internal paket

    Letakkan berkas-berkas program di direktori sesuai dengan directory sistem target saat diinstal. Sebagai contoh, jika ingin program Anda diinstal ke `/usr/local/bin` :
    ```sh
    mkdir -p usr/local/bin
    ```
    Copy file sesuai dengan lokasi directory target pada sistem yang akan diinstall nantinya.

    ![](https://iili.io/Jde36Ge.png)
#
3. #### Membuat File Control
    Berkas Control harus berada di dalam direktori DEBIAN. Jadi, buatlah directory DEBIAN terlebih dahulu dan buat file control.
    
    ```sh
    mkdir DEBIAN
    touch DEBIAN/control
    ```


#
4. #### Isi file control
    ```sh
    nano DEBIAN/control
    ```
    File control wajib diisi dengan menyertakan field berikut.

    | Field          | Keterangan                                                                                     |
    |-----------------|-------------------------------------------------------------------------------------------------|
    | Package          | Nama paket biner.                                                                              |
    | Version         | Versi paket.                                                                                    |
    | Architecture    | Arsitektur perangkat keras yang didukung oleh paket ini, seperti amd64, i386, dll.              |
    | Maintainer       | Nama orang yang memelihara atau bertanggung jawab atas paket ini.                               |
    | Description      | Deskripsi singkat biasanya berisikan tentang tujuan dan fungsi paket. |
    #

    ![](https://iili.io/Jde3P6u.png)
    #
    Struktur directory package akan tampat seperti berikut :

    ![](https://iili.io/Jde34n9.png)
#
5. #### Build Paket .deb
    Pada umumnya command yang digunakan adalah sebagai berikut :
    ```sh
    dpkg-deb --build --root-owner-group <package-dir>
    ```
    Jadi, pada project ini menggunakan command :

    ```sh
    dpkg-deb --build --root-owner-group uchiha_1.0-1_amd64
    ```

    ![](https://iili.io/Jde3gZ7.png)

    flag `--root-owner-group` berfungsi untuk membuat semua konten didalam paket dimiliki oleh user root.

    

#    
6. #### Pengujian Paket deb yang telah dibuild 

    - Ujicoba install
        
        ```sh
        sudo dpkg -i <nama_paket>
        ```    

        ![](https://iili.io/Jde3s3b.png)
        ![](https://iili.io/Jde3Laj.png)

        Paket berhasil diinstall dan file dalam package diinstall sesuai dengan directory yang telah disetting dalam build package yaitu file `hello.sh` pada diretory `usr/local/bin`
        #
    - Ujicoba remove
        ```sh
        sudo dpkg -r <nama_aplikasi>
        ```
        
        Dapat menggunakan command berikut untuk menghapus konfigurasi terkait aplikasi (jika ada)
        ```sh
        sudo dpkg -P <nama_aplikasi>
        ```

        Pastikan bahwa aplikasi sudah terhapus sepenuhnya dengan benar
        ```sh
        dpkg -l | grep <nama_aplikasi>
        ```
        ![](https://iili.io/Jde3ZyQ.png)
        ![](https://iili.io/Jde3DuV.png)

        Aplikasi sudah berhasil diremove. 
#
Terkadang, saat menginstal paket .deb, terutama ketika berurusan dengan skrip pre/post yang mengalami gagal instalasi atau remove, umumnya mendapatkan pesan kesalahan berikut :

`Package is in a very bad inconsistent state - you should reinstall it before attempting a removal.`

Solusinya adalah memindahkan semua referensi paket yang rusak ke tempat yang aman (misalnya, direktori /tmp) dan kemudian menghapusnya secara paksa.

```sh
sudo mv /var/lib/dpkg/info/<namapaket>.* /tmp/
sudo dpkg --remove --force-remove-reinstreq <namapaket>
```







