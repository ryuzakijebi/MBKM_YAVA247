#  A. Add Project and commit to branch

1. Buat dan inisialisasi directory baru

    ```
    git init
    ```
    ![](https://iili.io/HyZVueI.png)
#
2. Add git remote pada directory baru

    ```sh
    git remote add origin https://gitlab.com/ryuzaki.jebi/ryuzakijebi.git
    ```
#
3. Buat file dan cek status perubahan
    ```sh
    touch <file>
    
    git status
    ```

    ![](https://iili.io/HyZVT5N.png)
#
4. Tambahkan file ke staging area

    ```sh
    git add <file>
    ```
    ![](https://iili.io/HyZVIJp.png)
#
5. Lakukan Commit

    ```sh
    git commit -m "pesan commit"
    ```
    ![](https://iili.io/HyZVcqG.png)
#
6. Buat Branch baru (opsional)

    ```sh
    git checkout -b <nama branch baru>
    ```
    ![](https://iili.io/HyZVAbt.png)
#
7. Push ke branch

    ```sh
    git push origin <nama branch>
    ```
    ![](https://iili.io/HyZV5zX.png)

    ![](https://iili.io/HyZV7Xn.png)
    ![](https://iili.io/HyZVYss.png)

#
#  B. Edit Project and commit to branch
1. Lakukan perubahan pada file testL.md lalu cek git status

    ```sh
    nano testL.md

    git status
    ```
    ![](https://iili.io/HyZX60J.png)
#
2. terdapat perubahan pada file testL.md

    ![](https://iili.io/HyZXsJR.png)
#
3. Tambahkan file yang telah di edit kedalam staging area. Gunakan "titik" untuk menambahkan semua file yang mengalami perubahan pada staging area.

    ![](https://iili.io/HyZXPUv.png)
#
4. Commit perubahan file

    ```sh
    git commit -m "pesan commit"
    ```
    ![](https://iili.io/HyZX4fa.png)
#
5. Push ke branch

    ```sh
    git push origin <nama branch>
    ```
    ![](https://iili.io/HyZXLRp.png)
    ![](https://iili.io/HyZXQON.png)



