POM mengandung informasi tentang project dan berbagai detail konfigurasi yang digunakan oleh Maven untuk membangun project-project tersebut. Saat menjalankan tugas, Maven mencari POM di direktori saat ini. Lalu membaca POM, mendapatkan informasi konfigurasi yang dibutuhkan, dan kemudian menjalankan tugas tersebut.

Semua file POM membutuhkan project element dan tiga bidang yang wajib: groupId, artifactId, dan version.

#
## Element dasar dalam POM
### 1. Project Root
    
Elemen utama yang mengelilingi seluruh POM yang digunakan untuk mengidentifikasi bahwa file ini adalah POM Maven. Secara umum, elemen ini tidak mengandung banyak informasi konfigurasi proyek, tetapi berfungsi sebagai tag yang mengelilingi seluruh struktur POM.
```sh
<project>
    <!-- Seluruh isi POM akan ada di sini -->
</project>
```
#
### 2. Model Version
Elemen yang menentukan versi model POM yang digunakan project. Biasanya, nilainya adalah "4.0.0" untuk mengindikasikan penggunaan model POM Maven versi 4.0.0.
```sh
<modelVersion>4.0.0</modelVersion>
```

#
### 3. GroupId
Mengidentifikasi ID grup project.
```sh
<groupId>com.companyname.project-group</groupId>
```

#
### 4. ArtifactId
Mengidentifikasi ID unik project. Biasanya, ini adalah nama project.
```sh
<artifactId>project</artifactId>
```
#
### 5. Version
Mengidentifikasi versi project saat ini. Versi biasanya dinyatakan dalam format numerik atau alfanumerik, seperti "1.0" atau "2.3.1."
```sh
<version>1.0</version>
```

#
## Element tambahan POM
| Elemen         | Deskripsi                                                    |
|----------------|--------------------------------------------------------------|
| packaging      | Jenis pengemasan proyek Maven (jar, war, dll.).              |
| name           | Nama proyek Maven untuk identifikasi.                       |
| url            | URL proyek yang mengarah ke sumber daya terkait.              |
| dependencies   | Daftar dependensi yang diperlukan oleh proyek.              |
| dependency     | Dependensi tunggal di dalam "dependencies."                 |
| scope          | Cakupan dependensi (compile, provided, runtime, test, system).|

#
```sh
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">

    <modelVersion>4.0.0</modelVersion>

    <groupId>com.javatpoint.application1</groupId>
    <artifactId>my-application1</artifactId>
    <version>1.0</version>
    <packaging>jar</packaging>

    <name>Maven Quick Start Archetype</name>
    <url>http://maven.apache.org</url>

    <dependencies>
        <dependency>
            <groupId>junit</groupId>
            <artifactId>junit</artifactId>
            <version>4.8.2</version>
            <scope>test</scope>
        </dependency>
    </dependencies>

</project>
```