# Create Branch
1. Masuk ke directory local gitlab dan Buat branch baru dengan nama akatsuki

    ```sh
    git checkout -b akatsuki
    ```
    ![](https://iili.io/HyZcmil.png)

    | **Parameter**  | **Deskripsi**                                                         |
    |---------------|-----------------------------------------------------------------------|
    | `-q`          | Mode quiet, menghilangkan pesan feedback.                          |
    | `-f`          | Memaksa perpindahan bahkan jika ada perbedaan di indeks atau working tree. |
    | `-m`          | Melakukan merge tiga arah saat beralih cabang.                       |
    | `-p`          | Memilih perubahan (hunks) secara interaktif untuk diterapkan.        |
    | `-b <branch>` | Membuat dan beralih ke cabang baru.                                   |
#
2. Cek posisi branch saat ini

    ```sh
    git branch
    ``` 
    ![](https://iili.io/HyZcbV4.png)
#
3. Lakukan push branch baru agar branch ini tersedia di UI server gitlab

    ```sh
    git push origin akatsuki
    ```
    ![](https://iili.io/HyZlBiQ.png)