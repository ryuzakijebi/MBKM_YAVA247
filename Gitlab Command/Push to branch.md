# Push to Branch
1. Siapkan File dan add ke staging area

    ```sh
    touch test_2.md
    ```
   
    ```sh
    git add <file>
    ```
     Gunakan tanda "titik" jika ingin menambahkan semua file yang mengalami perubahan ke staging area
    ```sh
    git add .
    ```
    ![Gambar 1](https://iili.io/HyZOwu4.png)
#
2. Lakukan commit dan berikan pesan commit

    ```sh
    git commit -m <pesan commit>
    ```
    ![Gambar 2](https://iili.io/HyZONwl.png)
#
3. Cek posisi branch

    ```sh
    git branch
    ```
    ![Gambar 3](https://iili.io/HyZOj9f.png)
#
4. Gunakan checkout jika ingin berpindah branch

    ```sh
    git checkout <nama branch>
    ```
#
5. Lakukan push ke branch yang dituju 

    ```sh
    git push origin <nama branch>
    ```
    ![Gambar 4](https://iili.io/HyZOOt2.png)
    ![Gambar 5](https://iili.io/HyZOknS.png)
    





