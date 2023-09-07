# Creating Project Maven
Proses pembuatan proyek Maven melibatkan penentuan sejumlah parameter penting seperti groupId, artifactId, dan pemilihan template project yang sesuai.
#
1. Masuk ke directory tempat di mana akan membuat dan mengelola proyek.
2. Untuk membuat project dapat menggunakan perintah `mvn archetype:generate` untuk memulai pembuatan project Maven.

    ```
    mvn archetype:generate
    -DgroupId=<groupId>
    -DartifactId=<artifactId>
    -DarchetypeArtifactId=<archetypeArtifactId>
    -DarchetypeVersion=<version>
    -DinteractiveMode=<interactiveMode>
    ```
    - `groupId` : Identifikasi unik untuk grup yang membantu dalam mengelompokkan project.
    - `artifactId` : Identifikasi unik untuk project. Setiap proyek Maven harus memiliki artifactId yang berbeda. Biasanya merupakan nama project.
    - `archetypeArtifactId` : Jenis template projek, Template ini mendefinisikan struktur awal dan dependensi project.
    - `DarchetypeVersion` : Nomor versi dari template project yang digunakan.
    - `interactiveMode` : Menentukan apakah interaksi pengguna diperlukan (biasanya diatur ke "false" untuk otomatisasi).
    #
    Contoh :
    ```
    mvn archetype:generate -DgroupId=uchiha -DartifactId=akatsuki -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false
    ```
    ![](https://iili.io/J9lb68P.png)
#
3. Struktur standard project

    ![](https://iili.io/J9lp114.png)
    
    Direktori src/main/java berisi source code project, direktori src/test/java berisi source code untuk pengujian, dan berkas pom.xml merupakan Model Objek Proyek.

    #
    Secara default maven akan membuat directory seperti ini dan membuat 3 file yang akan digunakan dalam project maven yaitu pom.xml App.java dan AppTest.java

    1. App.java
        ```
        cd akatsuki/src/main/java/uchiha
        ```
        ![](https://iili.io/J90HErv.png)

        `App.java` adalah file sumber utama (main source file) dalam project. File ini berisi kode Java yang menjalankan aplikasi utama.
        #
    2. AppTest.java
        ```
        cd akatsuki/src/test/java/uchiha
        ```
        ![](https://iili.io/J90JLNI.png)

        `AppTest.java` adalah file pengujian unit (unit test file) yang digunakan untuk menguji kode dalam App.java.

    #
    3. pom.xml
    
        ![](https://iili.io/J9lyF44.png)
        
        Berkas pom.xml adalah inti dari konfigurasi project dalam Maven. File ini adalah berkas konfigurasi yang berisi sebagian besar informasi yang diperlukan untuk build project.

    
