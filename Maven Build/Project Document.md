# Project Document
Project document adalah berkas-berkas dokumentasi yang berkaitan dengan project Maven. Fungsinya adalah untuk memberikan deskripsi project, petunjuk penggunaan, laporan project, dokumentasi code, dan panduan pengembangan. 

Edit file pom.xml


#
1. Menambahkan informasi nama project dan url website

    ```
    <name>Akatsuki Membership</name>
    <url>http://maven.apache.org</url>
    ```
#
2. Menambahkan plugin 
    ```
    <plugins>
        <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-site-plugin</artifactId>
            <version>3.9.1</version>
        </plugin>
        <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-project-info-reports-plugin</artifactId>
            <version>3.1.2</version>
        </plugin>
    </plugins>
    ```
    Plugin `maven-site-plugin` berfungsi untuk membuat situs web dokumentasi project secara otomatis dan Plugin `maven-project-info-reports-plugin` berfungsi untuk menyediakan berbagai data laporan dan informasi tambahan tentang project seperti informasi versi, laporan penggunaan dependensi, laporan plugin, dan banyak lagi.

    ![](https://iili.io/J90k6rv.png)
#
3. Jalankan command `mvn site` yang berfungsi untuk menghasilkan situs dokumentasi project.
    ![](https://iili.io/J904tSa.png)


#
4. Secara otomatis maven akan membuat directory site
    ![](https://iili.io/J904Zcg.png)
#
5. Buka file index.html untuk melihat hasil document project

    ![](https://iili.io/J906hJa.png)
  

     
