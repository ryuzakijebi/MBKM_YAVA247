# Plugin Maven
Plugin Maven adalah komponen yang memungkinkan untuk mengeksekusi berbagai tugas dalam project. Setiap tugas khusus, seperti mengompilasi kode, mengemas project menjadi file JAR atau WAR, menjalankan pengujian unit, atau menghasilkan dokumentasi project, dapat dijalankan menggunakan plugin yang sesuai.

Sebuah plugin biasanya menyediakan serangkaian tujuan (goal) yang dapat dieksekusi dengan menggunakan sintax berikut:
```sh
mvn [nama-plugin]:[nama-goal]
```
#
Maven menyediakan dua jenis plugin utama:

- #### Build plugins
    
    Plugin ini dieksekusi selama proses build dan harus dikonfigurasi dalam elemen `<build/>` dari berkas pom.xml. Contoh plugin build termasuk compiler (untuk mengompilasi kode) dan jar (untuk mengemas project menjadi file JAR)
    

- #### Reporting plugins
    
    Plugin ini dieksekusi selama proses site generation dan harus dikonfigurasi dalam elemen `<reporting/>` dari berkas pom.xml. Contoh plugin ini adalah surefire (untuk menjalankan pengujian unit) dan javadoc (untuk menghasilkan dokumentasi Javadoc).

#
### Plugin maven yang sering digunakan
| Plugin              | Penggunaan                           | Penjelasan                                                                                   |
|---------------------|-------------------------------------|----------------------------------------------------------------------------------------------|
| Clean               | `mvn clean`                         | Membersihkan direktori `target` setelah build.           |
| Compiler            | `mvn compiler:compile`              | Mengompilasi file sumber Java dalam proyek untuk menghasilkan bytecode yang siap dijalankan. |
| Surefire            | `mvn surefire:test`                 | Menjalankan pengujian unit (biasanya dengan JUnit) dan membuat laporan pengujian.           |
| Jar                 | `mvn jar:jar`                       | Membangun file JAR dari proyek, mengemas kode Java menjadi arsip yang dapat dijalankan.  |
| War                 | `mvn war:war`                       | Membangun file WAR dari proyek, biasanya untuk aplikasi web Java.                              |
| Javadoc             | `mvn javadoc:javadoc`               | Menghasilkan dokumentasi Javadoc dari kode sumber Java Anda.                                   |
| Antrun              | `mvn antrun:run`                    | Menjalankan tugas-tugas Ant dalam project.                                         |
| Dependency          | `mvn dependency:tree`               | Menampilkan tree dependensi proyek, membantu memahami dependensi proyek secara visual.        |
| Assembly            | `mvn assembly:assembly`             | Membangun arsip kustom berdasarkan konfigurasi tertentu, berguna untuk distribusi proyek.    |
| Resources           | `mvn resources:resources`           | Menyalin file sumber ke direktori target, memastikan file non-Java ikut dalam build.         |
| Release             | `mvn release:prepare`               | Memfasilitasi proses release proyek dengan mengatur versi yang stabil.            |
| Tomcat              | `mvn tomcat:run`                    | Mengelola deploy project ke server Apache Tomcat saat pengembangan aplikasi web Java.     |

