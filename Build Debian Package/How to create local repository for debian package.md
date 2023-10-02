# How to Create Local Repository for Debian Package

1. #### Membuat Directory untuk repository local
   ```sh
   sudo mkdir -p /opt/local/uchiha
   ```
#
2. #### Copy file paket .deb kedalam directory repo_local
    ```sh
    sudo cp /home/jebi/deb/akatsuki.deb /opt/local/uchiha
    sudo cp /home/jebi/deb/uchiha_1.0-1_amd64.deb /opt/local/uchiha
    ```
    Pada contoh ini ada 2 file deb yang akan di tambahkan ke repository yaitu `akatsuki.deb` dan `uchiha_1.0-1_amd64.deb`.
#
3. #### Membuat File Kontrol
    Masuk ke directory repository local 
    ```sh
    cd /opt/local/uchiha/
    ```
    ```sh
    dpkg-scanpackages debs /dev/null | gzip -9c > debs/Packages.gz
    ```
    Command akan memindai paket-paket di direktori debs dan membuat berkas Packages.gz yang berisi informasi tentang paket-paket tersebut.

    Selanjutnya buat file Release :
    ```sh
    dpkg-scanpackages . /dev/null > Release
    ```

    ![](https://iili.io/JdkoZxf.png)

    ![](https://iili.io/JdkxLdP.png)
#
4. #### Konfigurasi Repositori Lokal
   Edit berkas /etc/apt/sources.list pada sistem Debian
    ```sh
    sudo nano /etc/apt/sources.list
    ```
    tambahkan baris berikut:
    ```sh
    deb [trusted=yes] file:/opt/local/uchiha ./
    ```

    ![](https://iili.io/JdkorlI.png)
#
5. #### Update Repositori dan Instal Paket
    ```sh
    sudo apt-get update
    ```
    Sekarang user dapat menginstal paket Debian dari repositori lokal
    ```sh
    sudo apt-get install <nama-paket>
    ```
    ```sh
    sudo apt-get install akatsuki
    sudo apt-get install uchiha
    ```
    ![](https://iili.io/JdkosNs.png)
    ![](https://iili.io/JdkoLDG.png)





