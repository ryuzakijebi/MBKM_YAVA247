## Setting network static IP and hostname FQDN
### Mengatur alamat IP Statis
Buka dan edit file konfigurasi netplan :
```sh
$ sudo nano /etc/netplan/01-netcfg.yaml
```
Mengedit file konfigurasi seperti berikut :
```sh
network:
version: 2
renderer: networkd
ethernets:
    enp2s0:
    addresses:
        - 192.168.1.41/24
    routes:
        - to: 0.0.0.0/0
        via: 192.168.1.1
    nameservers:
        addresses: [8.8.8.8, 8.8.4.4]
```

Setelah mengedit konfigurasi, simpan berkas dan apply perubahan 
```sh
$ sudo netplan apply
```
Cek IP address interface enp2s0 yang telah disetting menjadi **192.168.1.41**
```sh
$ ip addr show dev enp2s0
```
![Cek IP](https://iili.io/HbfWSfI.png)
#
### Setting Hostname FQDN
Jalankan perintah berikut
```sh
$ sudo hostnamectl set-hostname yubuntu02.labs247.com
```
Lalu cek perubahan hostname
```sh
$ hostname -f
```
![Set Hostname](https://iili.io/HbfW4Jn.png)