Plugin Maven adalah komponen yang memungkinkan untuk mengeksekusi berbagai tugas dalam project. Setiap tugas khusus, seperti mengompilasi kode, mengemas project menjadi file JAR atau WAR, menjalankan pengujian unit, atau menghasilkan dokumentasi project, dapat dijalankan menggunakan plugin yang sesuai.

Sebuah plugin biasanya menyediakan serangkaian tujuan (goal) yang dapat dieksekusi dengan menggunakan sintax berikut:
```sh
mvn [nama-plugin]:[nama-goal]
```
#
Maven menyediakan dua jenis plugin utama:

- #### Build plugins
    
    Plugin ini dieksekusi selama proses build dan harus dikonfigurasi dalam elemen `<build/>` dari berkas pom.xml. 
    
    Contoh plugin build termasuk compiler (untuk mengompilasi kode) dan jar (untuk mengemas project menjadi file JAR)
    

- #### Reporting plugins
    
    Plugin ini dieksekusi selama proses site generation dan harus dikonfigurasi dalam elemen `<reporting/>` dari berkas pom.xml.
    
    Contoh plugin ini adalah surefire (untuk menjalankan pengujian unit) dan javadoc (untuk menghasilkan dokumentasi Javadoc).

