# Installasi Hadoop di Ubuntu 22.04
## _Jebi Hendardi_
## 

## Step 1 - Membuat User untuk Hadoop Environment
Hal ini diperlukan untuk memisahkan lingkungan Hadoop dari user dan proses lain guna mengurangi potensi konflik. Dengan ini kita dapat mengelola izin akses dengan lebih baik, Memudahkan pelacakan masalah dan pemantauan aktivitas terkait Hadoop. 
```sh
$ sudo adduser jebi
```
Selanjutnya ubah atribut user "jebi". Command ini berfungsi untuk menambahkan user "jebi" kedalam grup sudo agar user ini dapat menjalankan perintah sebagai superuser atau administrator di sistem.
```sh
$ usermod -aG sudo jebi
```

## Step 2 - Install Java
Kerangka kerja Hadoop ditulis dalam bahasa Java, dan layanannya memerlukan Java Runtime Environment (JRE) yang cocok dan Java Development Kit (JDK). Jalankan command berikut untuk memperbarui sistem sebelum memulai instalasi:
```sh
$ sudo apt update
```
Selanjutnya, pasang versi terbaru dari Java.
```sh
$ sudo apt install openjdk-8-jdk -y
```
Setelah terpasang, verifikasi versi Java yang terinstal dengan perintah berikut:
```sh
$ java -version
```

## Step 3 - Install OpenSSH
Install server dan klien OpenSSH dengan perintah berikut :
```sh
$ sudo apt install openssh-server openssh-client -y
```
Beralih ke user yang telah dibuat sebelumnya.
```sh
$ sudo su - jebi
```
Buat sepasang kunci publik dan pribadi.
```sh
$ ssh-keygen -t rsa
```
Tambahkan kunci publik yang dihasilkan dari id_rsa.pub ke authorized_keys.
```sh
$ sudo cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
```
Ubah izin file authorized_keys.
```sh
$ sudo chmod 640 ~/.ssh/authorized_keys
```
Verifikasi apakah koneksi SSH berfungsi.
```sh
$ ssh localhost
```

## Step 4 - Install Apache Hadoop
Download Hadoop dari website resmi apache
```sh
$ wget https://downloads.apache.org/hadoop/common/hadoop-3.3.6/hadoop-3.3.6.tar.gz
```
Ekstrak file yang telah didownload
```sh
$ tar -xvzf hadoop-3.3.6.tar.gz
```
Pindahkan ke direktori yang akan digunakan untuk home hadoop
```sh
$ mv hadoop-3.3.6 /usr/local/hadoop
```
Selanjutnya, konfigurasikan variabel environment Java untuk mempersiapkan Hadoop. Cek lokasi variabel "JAVA_HOME":
```sh
dirname $(dirname $(readlink -f $(which java)))
```


## Step 5 - Konfigurasi Hadoop
Pengaturan Hadoop dilakukan dengan mengedit sejumlah file konfigurasi berikut :
- bashrc
- hadoop-env.sh
- core-site.xml
- hdfs-site.xml
- mapred-site-xml
- yarn-site.xml

File-file ini dapat ditemukan dalam direktori hadoop yang baru saja dibuat.

- ### Step 5a - Mengonfigurasi Variabel Lingkungan Hadoop (bashrc)
    Edit berkas ~/.bashrc untuk mengatur variabel lingkungan Hadoop.
    ```sh
    $ sudo nano ~/.bashrc
    ```
    Tambahkan baris-baris berikut pada file ini lalu Simpan lalu tutup.
    ```sh
    export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
    export HADOOP_HOME=/usr/local/hadoop
    export HADOOP_INSTALL=$HADOOP_HOME
    export HADOOP_MAPRED_HOME=$HADOOP_HOME
    export HADOOP_COMMON_HOME=$HADOOP_HOME
    export HADOOP_HDFS_HOME=$HADOOP_HOME
    export YARN_HOME=$HADOOP_HOME
    export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
    export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
    export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/native"
    ```
    Selanjutnya Aktifkan variabel environment.
    ```sh
    $ source ~/.bashrc
    ```

- ### Step 5b - Konfigurasi File hadoop-env.sh
    Berkas hadoop-env.sh berfungsi sebagai berkas utama untuk mengonfigurasi pengaturan YARN, HDFS, MapReduce, dan pengaturan proyek-proyek terkait Hadoop. 
    
    Ketika menyiapkan kluster Hadoop satu node, kita perlu menentukan implementasi Java yang akan digunakan. Gunakan variabel $HADOOP_HOME yang sudah dibuat sebelumnya untuk mengakses berkas hadoop-env.sh:
    ```sh
    sudo nano $HADOOP_HOME/etc/hadoop/hadoop-env.sh
    ```
    Cari dan hilangkan tanda (#) pada "export JAVA_HOME" lalu tambahkan address lengkap instalasi OpenJDK di sistem. 
    ```sh
    export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
    ```

- ### Step 5c - Konfigurasi File core-site.xml
    Berkas core-site.xml mendefinisikan properti HDFS dan inti Hadoop. Untuk mengatur Hadoop dalam mode  pseudo-distributed, kita perlu menentukan URL untuk NameNode dan direktori sementara yang digunakan Hadoop untuk proses map dan reduce.
    
    Buka berkas core-site.xml menggunakan editor teks:
    ```sh
    sudo nano $HADOOP_HOME/etc/hadoop/core-site.xml
    ```
    Tambahkan konfigurasi berikut untuk mengganti nilai-nilai default untuk direktori sementara dan tambahkan URL HDFS untuk menggantikan pengaturan sistem file lokal default:
    ```sh
    <configuration>
        <property>
            <name>fs.defaultFS</name>
            <value>hdfs://localhost:9000</value>
        </property>
    </configuration>
    ```

- ### Step 5d - Konfigurasi File hdfs-site.xml
    Properti dalam berkas hdfs-site.xml mengatur lokasi penyimpanan metadata node, berkas fsimage, dan berkas edit log. Konfigurasikan berkas ini dengan menentukan direktori penyimpanan NameNode dan DataNode. Dalam berkas "hdfs-site.xml" ini, kita akan mengubah jalur direktori "datanode" dan "namenode":
    
    Buka berkas hdfs-site.xml :
    ```sh
    sudo nano $HADOOP_HOME/etc/hadoop/hdfs-site.xml
    ```
    Tambahkan konfigurasi berikut, jika diperlukan, sesuaikan direktori NameNode dan DataNode sesuai dengan lokasi kustom yang diinginkan:
    ```sh
    <configuration>
            <property>
                    <name>dfs.replication</name>
                    <value>1</value>
            </property>
            <property>
                    <name>dfs.name.dir</name>
                    <value>file:///home/hadoop/hadoopdata/hdfs/namenode</value>
            </property>
            <property>
                    <name>dfs.data.dir</name>
                    <value>file:///home/hadoop/hadoopdata/hdfs/datanode</value>
            </property>
    </configuration>
    ```

- ### Step 5e - Konfigurasi File mapred-site.xml
    Buka file mapred-site.xml dan tentukan nilai-nilai MapReduce:
    ```sh
    sudo nano $HADOOP_HOME/etc/hadoop/mapred-site.xml
    ```
    Tambahkan konfigurasi berikut untuk mengubah nilai default nama kerangka kerja MapReduce menjadi yarn:
    ```sh
    <configuration> 
        <property> 
            <name>mapreduce.framework.name</name> 
            <value>yarn</value> 
        </property> 
    </configuration>
    ```

- ### Step 5f - Konfigurasi File yarn-site.xml
    Berkas yarn-site.xml digunakan untuk mendefinisikan pengaturan yang relevan untuk YARN. File ini berisi konfigurasi untuk Node Manager, Resource Manager, Container, dan Application Master.
    
    Buka berkas yarn-site.xml :
    ```sh
    sudo nano $HADOOP_HOME/etc/hadoop/yarn-site.xml
    ```
    Tambahkan konfigurasi berikut :
    ```sh
    <configuration>
            <property>
                    <name>yarn.nodemanager.aux-services</name>
                    <value>mapreduce_shuffle</value>
            </property>
    </configuration>
    ```

- ### Step 5g - Memformat NameNode HDFS 
    Langkah ini berfungsi untuk mengosongkan dan mempersiapkan penyimpanan metadata HDFS sebelum memulai layanan Hadoop. Hal ini memastikan bahwa kluster Hadoop memiliki basis yang bersih dan siap digunakan, mencegah masalah dan memastikan konsistensi dalam penyimpanan data.
    ```sh
    hdfs namenode -format
    ```

## Step 6 - Memulai Kluster Hadoop
Memulai NameNode dan DataNode.
```sh
$ start-dfs.sh
```
Memulai Resources YARN dan manajer node.
```sh
$ start-yarn.sh
```
Verifikasi semua komponen yang berjalan.
```sh
$ jps
```
Sistem akan memerlukan beberapa saat untuk menginisialisasi node-node yang diperlukan.
Jika semuanya berfungsi sebagaimana seharusnya, daftar hasil dari proses Java yang berjalan akan mencakup semua daemon HDFS dan YARN.

## Step 7 - Mengakses UI Hadoop dari Browser
Gunakan browser lalu buka URL localhost atau IP yang digunakan. 
Port default 9870 memberi akses ke UI NameNode Hadoop, halaman ini menyediakan gambaran menyeluruh tentang seluruh kluster :
```sh
http://localhost:9870
```
Port default 9864 digunakan untuk mengakses DataNode individu langsung dari browser:
```sh
http://localhost:9864
```
Port 8088 digunakan untuk management Resources YARN :
```sh
http://localhost:8088
```


