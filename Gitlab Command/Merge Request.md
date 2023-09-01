# Merge Request
Merge request adalah permintaan yang diajukan oleh seorang developer untuk menggabungkan perubahan yang dilakukan di suatu branch dengan branch utama atau branch target.

Pada contoh ini branch uchiha akan di merge dengan branch main.
#
1. Buka gitlab, pilih dan dan click ***Create merge request*** lalu klik ***Select project to create merge request***

    ![](https://iili.io/HyZsOdl.png)
#
2. Pilih `branch sumber` dan `branch tujuan` yang akan di merge, dalam contoh ini branch akatsuki akan di merge ke branch uchiha. 

    ![](https://iili.io/HyZrbyX.png)
#
3. Isi informasi merge lalu klik ***Create merge request***

    ![](https://iili.io/HyZrpun.png)
#
4. Jika tidak ada conflict maka akan ada tombol ***Approve***, klik tombol ***Merge*** untuk memulai proses merge. Akan ada beberapa pilihan sebelum melakukan merge yaitu :

    - `Delete source branch` : Opsi ini menghapus branch sumber (branch uchiha) secara otomatis setelah merge berhasil.
    - `Squash commits` : Opsi ini menggabungkan beberapa commit menjadi satu commit sebelum diintegrasikan ke branch target. 
    - `Edit commit message` : Opsi ini memungkinkan untuk mengedit pesan commit sebelum diintegrasikan.

        ![](https://iili.io/HyZrtaI.png)
      
#
5. Proses merge berhasil, semua file dan perubahan yang ada pada branch akatsuki digabungkan ke branch uchiha.

    ![](https://iili.io/HyZrDvt.png)
    ![](https://iili.io/HyZryjs.png)
    ![](https://iili.io/HyZ4AFV.png)