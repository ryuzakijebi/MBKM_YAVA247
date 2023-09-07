# External Dependencies
Dependensi Eksternal adalah pustaka yang tidak tersedia di repositori standar Maven. Fungsinya adalah untuk menambahkan pustaka khusus yang tidak dapat diunduh secara otomatis oleh Maven, mengatasi keterbatasan repositori Maven, dan memberikan kontrol penuh kepada pengembang dalam menangani dependensi project yang lebih spesifik.
#
1. File jar dependencies maven dapat didownload di `mvnrepository.com`. Tersedia banyak kategori sesuai dengan kebutuhan. Pada contoh ini file dependies yang akan ditambahkan adalah RxJava.

    ![](https://iili.io/J9004QS.png)

    Code untuk pom.xml juga sudah di sediakan oleh website ini, pada file diatas code penambahan dependencies `RxJava` adalah : 
    ```sh
    <dependency>
        <groupId>io.reactivex.rxjava2</groupId>
        <artifactId>rxjava</artifactId>
        <version>2.0.2</version>
    </dependency>
    ```
#
2. Download file dependecies jar nya `rxjava-2.0.2.jar`. Kemudian Buat directory baru `lib` di dalam `src` dan pindahkan file jar kedalam directory lib.

    ![](https://iili.io/J90l8zB.png)

#
3. Buka file pom.xml dan tambahkan code penambahan dependencies nya kedalam file pom.

    ![](https://iili.io/J90GO41.png)

