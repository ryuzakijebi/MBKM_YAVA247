Maven Build Profile adalah nilai konfigurasi yang dapat digunakan untuk mengatur atau mengganti nilai-nilai default dari build Maven. Dengan menggunakan build profile, kita dapat menyesuaikan build untuk environment yang berbeda.

| Type         | Lokasi penerapan                                 |
| ------------ | -------------------------------------------------- |
| Per Project  | Project POM file, pom.xml           |
| Per User     | File xml Maven settings (%USER_HOME%/.m2/settings.xml) |
| Global       | File xml Maven global settings (%M2_HOME%/conf/settings.xml) |

#
Aktivasi Profil Build Maven dapat dilakukan melalui berbagai cara:

- ### Aktivasi Eksplisit menggunakan Input Konsol Perintah
    Profil build dapat diaktifkan secara eksplisit dengan menggunakan perintah konsol saat menjalankan Maven. Ini berarti profil tertentu dapat diaktifkan dengan menambahkan argumen -P diikuti dengan nama profil saat menjalankan perintah Maven. Misalnya, mvn clean install -PprofilAnda.

#
- ### Melalui Pengaturan Maven
    Profil juga dapat diaktifkan melalui berkas pengaturan Maven. Profil mana yang akan diaktifkan secara default dapat ditentukan dalam berkas settings.xml yang ada di direktori %USER_HOME%/.m2/. Ini berguna jika ingin profil tertentu selalu aktif untuk semua proyek Maven yang dijalankan oleh pengguna tersebut.

#
- ### Berdasarkan Variabel Lingkungan (Variabel Pengguna/Sistem)
    Maven juga mendukung aktivasi profil berdasarkan variabel lingkungan. Kondisi aktivasi profil dapat ditentukan dalam berkas POM dengan menggunakan elemen `<activation>` yang mengacu pada variabel lingkungan (seperti env atau variabel yang Anda tentukan sendiri).

#
- ### Pengaturan Sistem Operasi (misalnya, Keluarga Windows)
    Profil dapat diaktifkan berdasarkan pengaturan sistem operasi. Profil yang akan diaktifkan dapat ditentukan jika proyek dijalankan di sistem operasi tertentu. Ini berguna jika terdapat perbedaan konfigurasi antara lingkungan pengembangan yang berbeda, seperti lingkungan Windows dan Unix.

#
- ### File yang Ada/Missing (Tersedia/Missing) 
    Aktivasi profil juga dapat dilakukan berdasarkan keberadaan atau ketiadaan berkas tertentu. Ini berarti profil dapat diaktifkan jika berkas konfigurasi tertentu ada atau tidak ada dalam proyek. Hal ini berguna, misalnya, jika ingin mengaktifkan profil khusus ketika berkas konfigurasi tertentu ada dalam proyek.