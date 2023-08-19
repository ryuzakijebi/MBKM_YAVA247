## Set JAVA_HOME default openjdk 1.8.0 di user sudoers
Cek lokasi "JAVA_HOME"
```sh
$ dirname $(dirname $(readlink -f $(which java)))
```
![Set Hostname](https://iili.io/HbfWgUX.png)
#
Buka dan edit file bashrc
```sh
$ sudo nano ~/.bashrc
```
Tambahkan lokasi direktori java_home pada file bashrc
```sh
$ export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
```
Aktifkan variabel environment
```sh
$ source ~/.bashrc
```
Cek Java_Home
```sh
$ echo $JAVA_HOME
```
![javahome](https://iili.io/HbfWUlt.png)