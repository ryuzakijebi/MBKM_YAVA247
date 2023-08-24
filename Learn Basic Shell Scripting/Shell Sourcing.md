# Shell Scripting Sourcing a config file
Integrasi konfigurasi eksternal melibatkan pemisahan pengaturan seperti koneksi database atau pengaturan server dari kode inti script Tujuannya adalah untuk meningkatkan fleksibilitas, keamanan, dan kemudahan pengelolaan kode.

Contoh kita mempunyai 2 buah file **config.sh** dan **main.sh**

### config.sh
```sh
#!/bin/bash
user=Jebi
id=1717
```
#
### main.sh
```sh
#!/bin/bash

source config.sh

echo "Nama user : $user"
echo "ID : $id"
```
#

![testmain](https://iili.io/Hy9HCIp.png)


Script "main.sh" menggunakan integrasi konfigurasi eksternal dari "config.sh". Melalui perintah "source", script utama mengambil nilai variabel "user" dan "id" yang terdefinisi dalam "config.sh". 

Dengan ini, script utama mampu mencetak nilai-nilai variabel tersebut sebagai hasil output. Pendekatan ini memberikan manfaat dalam manajemen konfigurasi yang terpisah, memudahkan perubahan pengaturan tanpa memengaruhi kode inti script.


