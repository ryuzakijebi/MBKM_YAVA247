### Create Project
1. Masuk ke Account Gitlab, pada menu dashboard klik ***New Project***
2. Input nama Project dan deskripsi project

    ![](https://iili.io/HyZ7eAG.png)
#
### Push Repository ke Project
3. Cek dan copy URL remote gitlab 

    ![](https://iili.io/HyZ7wSn.png)
#
4. Lakukan Clone repository ke system local menggunakan ***git clone***

    ```sh
    git clone https://gitlab.com/ryuzaki.jebi/ryuzakijebi.git
    ```
     ![](https://iili.io/HyZ7O9s.png)
#
5. Masuk kedalam directory hasil clone repository, lalu buat sebuah file untuk ujicoba add file ke repository

    ```sh
    cd ryuzakijebi/

    touch test.md
    ```
#
6. Gunakan command ***git add*** untuk menambahkan perubahan yang telah di buat ke dalam ***staging area***

    ```sh
    git add test.md
    ```
#
7. Simpan perubahan yang telah di tambahkan ke ***staging area*** dan pesan commit nya.

    ```sh
    git commit -m "test add file"
    ```
    ![](https://iili.io/HyZ7jcX.png)
#
8. Push perubahan yang telah di commit ke branch repository gitlab

    ```sh
    git push -u origin main
    ```
    ![](https://iili.io/HyZ7kNf.png)





