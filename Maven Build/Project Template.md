# Project Template
Archetype adalah semacam template telah disiapkan sebelumnya untuk berbagai jenis project. Misalnya, jika ingin membuat proyek Java sederhana, maka dapat memilih archetype `maven-archetype-quickstart` yang sudah tersedia. Archetype ini akan membantu mengatur struktur dasar project, termasuk direktori, file konfigurasi, dan dependensi yang diperlukan.

1. Perintah ini digunakan untuk membuat project Java baru dengan menggunakan archetype yang tersedia dalam Maven.

    ```
    mvn archetype:generate
    ```
#
2. Akan muncul banyak list template yang tersedia, dalam contoh ini pilih 1843 untuk menggunakan template `lift-archetype-mvc`. Selanjutnya masukkan groupId, artifactId, version, dan nama package.

    ![](https://iili.io/J90tbZG.png)
#
3. Setelah mengisi informasi project tekan Y untuk memulai membuat project.

    ![](https://iili.io/J90DCnj.png)
#
4. Berikut ini adalah file dan directory yang dibuat secara default dari template `lift-archetype-mvc`. Template ini digunakan untuk menghasilkan proyek web dengan menggunakan framework Lift.

    ![](https://iili.io/J90mqEx.png)

#
5. Ada banyak template yang dapat dipilih sesuai kebutuhan, berikut ini adalah contoh beberapa archetype yang sering digunakan

    | Archetype ArtifactIds          | Deskripsi                                                                                           |
    | ------------------------------ | --------------------------------------------------------------------------------------------------- |
    | maven-archetype-quickstart     | Project Maven sederhana dengan struktur dasar. Cocok untuk project-project kecil atau sebagai awal untuk project yang lebih besar.                  |
    | maven-archetype-webapp         | Project web dengan struktur direktori standar seperti WAR (Web Application Archive). Cocok untuk pengembangan aplikasi web.                          |
    | maven-archetype-jar            | Project JAR (Java Archive) yang berisi kode Java yang dapat digunakan sebagai dependensi oleh project lain.                                    |
    | maven-archetype-ear            | Project EAR (Enterprise Archive) yang berisi aplikasi J2EE yang kompleks, seperti EJB (Enterprise JavaBeans) dan aplikasi web.                  |
    | maven-archetype-plugin         | Project Maven Plugin. Cocok jika ingin mengembangkan plugin kustom untuk Maven.                                                     |
    | maven-archetype-site-simple    | Project Situs dokumentasi sederhana. Berguna untuk menyediakan dokumentasi project.                                               |
    | maven-archetype-remote-resources | Project yang mengelola sumber daya (resources) jarak jauh dalam repositori Maven. Berguna jika ingin berbagi atau mengelola sumber daya secara terpusat. |
    | maven-archetype-assembly       | Project yang menghasilkan distribusi project yang dapat dijalankan (seperti ZIP atau tarball) dengan berbagai konfigurasi.                       |                                          

