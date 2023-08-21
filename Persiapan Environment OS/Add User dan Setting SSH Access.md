## 1. Menambahkan user sudoers
Menambahkan User baru dengan nama "hydra"
```sh
$ sudo adduser hydra
```
Menambahkan user "hydra" ke grup "sudo" agar mendapatkan akses Super User
```sh
$ sudo usermod -aG sudo hydra
```
Jalankan printah getent untuk melihat daftar grup yang memiliki akses sudo.
```sh
$ getent group sudo
```
![Set Hostname](https://iili.io/HbfW6Rs.png)

Hasil sudo:x:27:jebi,hadoop,hydra adalah output yang menggambarkan informasi tentang grup "sudo".
- **sudo** : Nama grup.
- **x** : Menandakan bahwa password grup tersimpan dalam berkas /etc/group
- **27** : Nomor identifikasi grup (GID).
- **jebi, hadoop, hydra** : Anggota-anggota grup sudo

#

## 2. Setting SSH Access Remote di User Sudoers
Melalui User utama lakukan perintah berikut untuk Membuah SSH key
```sh
$ ssh-keygen
```
Salin Public Key ke hydra melalui SSH
```sh
$ ssh-copy-id hydra@192.168.1.41
```
Periksa Pengaturan Kata Sandi SSH: Pastikan bahwa pengguna hydra diizinkan untuk masuk melalui SSH dengan kata sandi. Edit file konfigurasi sshd_config dan pastikan baris *PasswordAuthentication* diatur ke yes.
```sh
$ sudo nano /etc/ssh/sshd_config
```
![Editssh](https://iili.io/HbfWviN.png)
#
Untuk melakukan remote SSH dapat menggunakan IP hydra@192.168.1.41 atau hydra@yubuntu02.labs247.com 
```sh
$ ssh hydra@192.168.1.41 
```
![Test SSH Remote IP](https://iili.io/HbfWibf.png)
```sh
$ ssh hydra@yubuntu02.labs247.com
```
![Tes SSH Remote](https://iili.io/HbfWLx4.png)