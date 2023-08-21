## Install maven and check version (3.6.x) on user sudoers
Download Package Maven
```sh
$ wget https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
```
Ekstract file
```sh
$ tar -xvf apache-maven-3.6.3-bin.tar.gz
```
Pindahkan ke directory /opt
```sh
$ mv apache-maven-3.6.3 /opt/
```
Buka berkas profil pengguna
```sh
$ nano ~/.profile
```
Tambahkan baris berikut 
```sh
M2_HOME='/opt/apache-maven-3.6.3'
PATH="$M2_HOME/bin:$PATH"
export PATH
```
Restart file profile
```sh
$ source ~/.profile
```
Cek versi Maven yang telah diinstal
```sh
$ mvn -version
```
![mvnver](https://iili.io/Hb8ID3g.png)
