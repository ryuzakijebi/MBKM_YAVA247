Build Lifecycle adalah urutan fase yang telah ditentukan yang mendefinisikan urutan di mana tujuan-tujuan akan dieksekusi. Setiap fase mewakili tahap dalam lifecycle. 
| Fase             | Fungsi                                               |
|---------------------|------------------------------------------------------|
| prepare-resources   | Tahap ini bertanggung jawab untuk menyalin resources yang diperlukan. |
| validate            | Memvalidasi informasi proyek, memeriksa apakah proyek benar dan semua informasi yang diperlukan telah tersedia. |
| compile             | Melakukan compile source code proyek.               |
| test                | Menjalankan pengujian pada kode yang telah di compile, sesuai dengan kerangka kerja pengujian yang digunakan. |
| package             | Tahap ini menciptakan paket JAR/WAR yang sesuai dengan yang dijelaskan dalam berkas POM.xml. |
| install             | Menginstal paket yang telah dibuat ke dalam repositori Maven lokal atau remote sehingga bisa digunakan sebagai dependensi di project-project lain. |
| deploy              | Tahap ini digunakan untuk menyalin paket akhir ke repositori Maven remote, sehingga dapat dibagikan dengan pengembang lain dan project-project lain. |

#
#
#  Tiga standard lifecycles
### 1. Clean Lifecycle 
| Tahap         | Deskripsi                                                                                                           |
|---------------|---------------------------------------------------------------------------------------------------------------------|
| pre-clean     | Tahap ini adalah pra-pembersihan yang dapat digunakan untuk menjalankan tindakan apa pun sebelum proses pembersihan dimulai. |
| clean         | Pada tahap ini, Maven membersihkan hasil dari build sebelumnya, seperti menghapus direktori target dan konten lainnya. |
| post-clean    | Tahap ini adalah pembersihan pasca-eksekusi yang dapat digunakan untuk menjalankan tindakan setelah proses pembersihan selesai. |
#
### 2. Default (atau Build) 
| Tahap              | Deskripsi                                                                                                                          |
|-------------------|------------------------------------------------------------------------------------------------------------------------------------|
| validate          | Memvalidasi apakah proyek sudah benar dan semua informasi yang diperlukan tersedia sebelum proses build dimulai.             |
| initialize        | Menginisialisasi status build, misalnya, mengatur properti-properti yang diperlukan.                                        |
| generate-sources  | Menghasilkan kode sumber yang akan dimasukkan dalam tahap kompilasi.                                                        |
| process-sources   | Memproses kode sumber, seperti melakukan filter terhadap nilai-nilai tertentu.                                             |
| generate-resources| Menghasilkan sumber daya yang akan dimasukkan dalam paket akhir.                                                               |
| process-resources | Menyalin dan memproses sumber daya ke direktori tujuan, siap untuk tahap packaging.                                           |
| compile           | Melakukan kompilasi kode sumber proyek.                                                                                        |
| process-classes   | Memproses file-file yang dihasilkan dari kompilasi, misalnya, melakukan perbaikan dan optimalisasi bytecode pada kelas Java.  |
| generate-test-sources | Menghasilkan kode sumber uji yang akan dimasukkan dalam tahap kompilasi uji.                                                |
| process-test-sources  | Memproses kode sumber uji, seperti melakukan filter terhadap nilai-nilai tertentu.                                          |
| test-compile      | Melakukan kompilasi kode sumber uji ke direktori uji.                                                                          |
| process-test-classes | Memproses file-file yang dihasilkan dari kompilasi kode uji.                                                                    |
| test              | Menjalankan pengujian menggunakan kerangka pengujian unit yang sesuai (seperti JUnit).                                      |
| prepare-package   | Melakukan operasi yang diperlukan untuk mempersiapkan paket sebelum tahap packaging sebenarnya.                               |
| package           | Mengambil kode yang telah dikompilasi dan membungkusnya dalam format yang dapat didistribusikan, seperti JAR, WAR, atau EAR.   |
| pre-integration-test | Melakukan tindakan yang diperlukan sebelum pengujian integrasi dijalankan, misalnya, menyiapkan lingkungan yang diperlukan.    |
| integration-test  | Memproses dan mendeploy paket jika diperlukan ke lingkungan di mana pengujian integrasi dapat dijalankan.                   |
| post-integration-test | Melakukan tindakan yang diperlukan setelah pengujian integrasi selesai, seperti membersihkan lingkungan.                  |
| verify            | Menjalankan pemeriksaan untuk memastikan bahwa paket valid dan memenuhi kriteria kualitas.                                    |
| install           | Menginstal paket ke repositori Maven lokal, sehingga dapat digunakan sebagai dependensi di proyek-proyek lokal lainnya.   |
| deploy            | Menyalin paket akhir ke repositori Maven remote agar dapat dibagikan dengan pengembang lain dan proyek-proyek lainnya.     |
#
### 3. Site Lifecycle 
| Tahap          | Deskripsi                                                                                                             |
|----------------|-----------------------------------------------------------------------------------------------------------------------|
| pre-site       | Tahap ini adalah pra-persiapan untuk pembuatan dokumentasi baru, laporan, dan proses pengembangan situs lainnya.     |
| site           | Tahap ini digunakan untuk membuat dokumentasi baru dan laporan serta mengembangkan situs proyek.                    |
| post-site      | Tahap ini adalah pasca-proses situs yang dapat digunakan untuk menjalankan tindakan setelah proses pembuatan situs selesai. |
| site-deploy    | Tahap ini digunakan untuk mendeploy situs ke lingkungan atau server yang sesuai.                                    |
