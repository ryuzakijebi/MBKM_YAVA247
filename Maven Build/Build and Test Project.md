# Build and Test Project

Sebelum melakukan build and test pastikan bahwa file pom.xml sudah terkonfigurasi dengan benar dan sesuai kebutuhan. Berkas pom.xml (Project Object Model) adalah inti dari konfigurasi project Maven.

Jalankan build dengan command :
```
mvn clean package
```
Perintah ini akan menjalankan dua goal (tujuan): pertama, membersihkan (clean) hasil build sebelumnya, dan kedua, membangun (package) project dengan melakukan kompilasi source code dan pembuatan berkas distribusi sesuai dengan konfigurasi yang ada dalam berkas pom.xml.

Maven akan melakukan kompilasi berkas source code dan menjalankan pengujian berkas source code, lalu menjalankan tes yang telah diatur. Setelah semua proses berhasil maka berkas paket distribusi siap digunakan.

![](https://iili.io/J90ugIe.png)
#
File hasil building jar berada di directory target `/target/akatsuki-1.0-SNAPSHOT.jar` 

![](https://iili.io/J90Rkb9.png)
#
Untuk melakukan test App buka directory `target/classes` dan jalankan :
```
java uchiha.App
```
![](https://iili.io/J905GkB.png)