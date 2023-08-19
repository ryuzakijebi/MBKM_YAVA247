## Menambahkan user sudoers
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