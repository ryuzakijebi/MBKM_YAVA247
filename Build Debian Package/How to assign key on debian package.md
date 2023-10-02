# How to assign key on debian package
Sign pada paket Debian berfungsi untuk memastikan keaslian, integritas, dan sumber paket tersebut.

User dapat memverifikasi bahwa paket berasal dari penerbit yang sah atau entitas yang dipercayai. Ini membantu mencegah paket dari pihak yang tidak sah atau palsu.

Sign key melindungi paket dari modifikasi yang tidak sah. Jika paket dimodifikasi, maka sign key akan menjadi tidak valid, hal ini bertujuan untuk memastikan paket tidak mengalami perubahan yang tidak diinginkan.

User dapat mengidentifikasi asal-usul paket, memverifikasi bahwa paket berasal dari sumber yang sah dan dapat dipercayai. Hal ini penting dalam konteks distribusi perangkat lunak open source atau pengelolaan infrastruktur IT yang kompleks.
#
1. #### Generate GPG Key Pair
    ```sh
    gpg --gen-key
    ```
    Selama proses pembuatan key, user akan diminta untuk memasukkan nama, alamat email, dan passphrase.

    ![](https://iili.io/Jdejg2I.png)
#
2. #### Cek Available Keys yang sudah dibuat
    ```sh
    gpg --list-keys
    ```
    Cek daftar keys yang ada di sistem dan temukan ID key GPG yang ingin digunakan untuk signing paket.

    ![](https://iili.io/JdejvBR.png)

    Pada list ini keys yang akan digunakan adalah keys jebi dengan ID :
    ```sh
    BB2E69CC70E367E11FE815DE618DBB471B917DAD
    ```


#
3. #### Memberikan signature pada paket deb
    ```sh
    dpkg-sig
    ```

    Install jika belum ada
    ```sh
    sudo apt-get install dpkg-sig
    ```

    Gunakan command berikut untuk memberikan signature ke paket deb
    ```sh
    dpkg-sig --sign builder -k <ID-Kunci-GPG> <nama-paket.deb>
    ```
    ```sh
    dpkg-sig --sign builder -k BB2E69CC70E367E11FE815DE618DBB471B917DAD xfsprogs_3.2.1_amd64.deb
    ```

    Masukkan passphrase yang sesuai dengan yang di konfigurasi saat membuat keys.
    ![](https://iili.io/JdejSrN.png)

    ![](https://iili.io/Jdej81p.png)
#
4. #### Verifikasi signature
    ```sh
    dpkg-sig --verify xfsprogs_3.2.1_amd64.deb
    ```

    ![](https://iili.io/Jdej4kX.png)





