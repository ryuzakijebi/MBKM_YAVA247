# How to create debian package using dpkg-deb

Project ini adalah membuat paket debian dari `jenkins.war` sebagai systemd service. File `jenkins.war` dapat didownload dari link berikut http://mirrors.jenkins.io/war/latest/jenkins.war
#
1. #### Membuat Directory project

    Buatlah sebuah directory baru untuk menyimpan konten project dan buatlah directory DEBIAN dan file control.

    ![](https://iili.io/JdenDg9.png)
    ![](https://iili.io/JdenmJe.png)
#
2. #### Isi file control

   Didalam file `control` umumnya terdapat field berikut :


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
    ```sh
    nano DEBIAN/control
    ```
    ```sh
    Package: akatsuki
    Version: 1.0
    Section: base
    Priority: optional
    Architecture: all
    Depends: openjdk-8-jdk
    Maintainer: uchiha_jebi@gmail.com
    Description: run jenkins.war as a service.
    ```
   ![](https://iili.io/Jdent07.png)


#
3. #### Konfigurasi file jenkins.war untuk build
    Karena file akan diinstall pada directory opt/jenkins pada sistem, maka buat directory opr/jenkins pada project, lalu Copy file jenkins.war ke directory opt/jenkins.

    ```sh
    mkdir -p opt/jenkins
    cp /home/jebi/Uchiha/jenkins.war opt/jenkins
    ```
    ![](https://iili.io/JdenZfS.png)

#
4. #### Konfigurasi file jenkins.service
    Agar dapat dijalankan sebagai service maka dibutuhkan sebuah file untuk mengontrol service jenkins menggunakan tools systemctl. Buat sebuah file jenkins.service
    ```sh
    touch jenkins.service
    ```
    ```sh
    [Unit]
    Description=Jenkins Daemon service
    [Service]
    ExecStart=/usr/bin/java -jar /opt/jenkins/jenkins.war --logfile=/var/log/jenkins.log
    SuccessExitStatus=143
    User=knoldus
    [Install]
    WantedBy=multi-user.target
    ```
    ![](https://iili.io/JdenyOb.png)
    #
    File service berada pada directory `etc/systemd/system` pada sistem linux. Oleh karena itu file jenkins.service di copy ke directory yang sesuai dalam directory project.

    ```sh
    mkdir -p etc/systemd/system
    cp /home/jebi/Uchiha/jenkins.service etc/systemd/system 
    ```
    ![](https://iili.io/Jdeo9bj.png)

#
5. #### Konfigurasi file log untuk service jenkins
    File log biasanya diinstall di directory `var/log` dalam system. Buat directory yang sesuai dalam project lalu buat sebuah file log untuk jenkins.

    ```sh
    mkdir -p var/log
    touch var/log/jenkins.log
    ```

    ![](https://iili.io/JdeodWQ.png)
    ![](https://iili.io/Jdeo2sV.png)
#
6. #### Mulai build
    Untuk memulai build paket jalankan command :

    ```sh
    dpkg-deb --build <directory_paket>
    ```
    ![](https://iili.io/Jde1lp4.png)

#
7. #### Install paket
    ```sh
    sudo dpkg -i akatsuki.deb
    ```
    ![](https://iili.io/Jde1cvf.png)
#
8. #### Cek status dan jalankan service
   ```sh
   sudo systemctl start jenkins
   sudo systemctl status jenkins
   ```
    ![](https://iili.io/Jde11Tl.png)
#
9. #### Remove package
    Untuk menghapus package yang sudah diinstall jalankan command remove atau purge :

    ```sh
    sudo dpkg --remove akatsuki
    ```
    Command remove akan menghapus file package tanpa menghapus file konfigurasinya.
    #
    Sedangkan command purge berfungsi untuk menghapus semua file package termasuk konfigurasi.
    ```sh
    sudo dpkg --purge akatsuki 
    ```

    ![](https://iili.io/Jde1aYG.png)



