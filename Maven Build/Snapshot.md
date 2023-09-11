### Snapshot Maven
Snapshot adalah versi proyek yang masih dalam pengembangan aktif dan belum dirilis secara resmi. Ini adalah versi yang masih berada dalam tahap pengembangan dan biasanya digunakan untuk menguji perubahan baru atau fitur-fitur yang ditambahkan ke dalam project.
#
### Penamaan Snapshot
Biasanya, Snapshot disertakan dalam nomor versi project dengan kata "SNAPSHOT" ditambahkan sebagai bagian dari versi. Contohnya "1.0-SNAPSHOT" atau "2.0.0-SNAPSHOT". Kata "SNAPSHOT" digunakan untuk mengindikasikan bahwa preoject ini adalah versi pengembangan.

#
### Fungsi Snapshot
Snapshot digunakan oleh pengembang untuk menguji perubahan terbaru dalam kode proyek atau untuk mengakses fitur-fitur yang belum dirilis.

#
### Repositori Snapshot
Maven menyediakan repositori yang disebut "Snapshot Repository" atau "Snapshots Repository" untuk menyimpan dan mendistribusikan versi Snapshot.

#
### Mengganti Versi snapshot
Ketika project mencapai tingkat stabilitas yang memadai, versi Snapshot dapat digantikan dengan versi yang dirilis secara resmi. Biasanya dilakukan dengan mengubah nomor versi dari "SNAPSHOT" menjadi nomor versi yang stabil (misalnya, dari "1.0-SNAPSHOT" menjadi "1.0.0").

#
## Contoh

1. POM untuk project app.ui

    ```sh
    <project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
        <modelVersion>4.0.0</modelVersion>
        <groupId>app-ui</groupId>
        <artifactId>app-ui</artifactId>
        <version>1.0</version>
        <packaging>jar</packaging>
        <name>health</name>
        <url>http://maven.apache.org</url>
        <properties>
            <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
        </properties>
        <dependencies>
            <dependency>
                <groupId>data-service</groupId>
                <artifactId>data-service</artifactId>
                <version>1.0-SNAPSHOT</version>
                <scope>test</scope>
            </dependency>
        </dependencies>
    </project>
    ```
#
2. POM untuk project data-service
   
   ```sh
    <project xmlns="http://maven.apache.org/POM/4.0.0"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
        <modelVersion>4.0.0</modelVersion>
        <groupId>data-service</groupId>
        <artifactId>data-service</artifactId>
        <version>1.0-SNAPSHOT</version>
        <packaging>jar</packaging>
        <name>health</name>
        <url>http://maven.apache.org</url>
        <properties>
            <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
        </properties>
    </project>
    ```

    Project app-ui memiliki dependensi pada data-service dengan versi 1.0-SNAPSHOT. Maven secara otomatis akan mengunduh versi terbaru dari data-service SNAPSHOT setiap kali project app-ui dibuild.

    Dengan konfigurasi ini, tim pengembang app-ui dapat terus menggunakan kode terbaru dari data-service tanpa harus secara manual mengubah versi dependensi mereka setiap kali ada pembaruan dalam project data-service.
#
3. Untuk membuild project app-ui dan memastikan bahwa project mendapatkan versi terbaru dari data-service:1.0-SNAPSHOT, dapat menjalankan perintah dengan opsi -U:
   ```sh
   mvn clean package -U
    ```
   
   Dengan perintah ini, Maven akan mengunduh versi Snapshot terbaru dari data-service:1.0-SNAPSHOT dari repositori sebelum membangun project app-ui. Keuntungannya adalah kita tidak perlu menunggu secara manual atau mengubah versi dependensi dalam file POM setiap kali ada pembaruan di project data-service.