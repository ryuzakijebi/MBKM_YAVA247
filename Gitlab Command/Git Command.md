### git add
Digunakan untuk memindahkan perubahan dari direktori kerja ke staging area, sehingga perubahan tersebut siap untuk dicommit.
- `git add file1.txt` : Menambahkan file1.txt ke staging area
- `git add .` : Menambahkan semua perubahan pada directory ini ke staging area
#
### git branch
Digunakan untuk mengelola dan melihat daftar cabang (branch) dalam repositori.
- `git branch` : Menampilkan list branch
- `git branch <nama branch baru>` : Membuat branch baru

#
### git checkout
Digunakan untuk beralih ke cabang yang ada atau memeriksa commit dan revisi lama.
- `git checkout <nama branch>` : beralih ke branch lain dalam list branch yang sudah ada
- `git checkout <commit-hash>` : Melihat revisi tertentu dengan menggunakan hash komit.
#
### git clone
Digunakan untuk mengkloning (membuat salinan) repositori Git dari URL yang ditentukan ke direktori lokal.
- `git clone <repository-url>` : Kloning dari repositori remote ke direktori lokal
#
### git commit
Mengambil snapshot yang sudah di-staging dan mengcommitkannya ke history project.
- `git commit -m "Pesan komit"` : Melakukan commit disertai dengan pesan commit yang menjelaskan perubahan yang dilakukan dalam commit tersebut.
#
### git commit --amend
Amend (memperbaiki) commit terakhir dengan pesan commit atau perubahan lainnya.
- `git commit --amend -m "Pesan komit yang diperbaiki"` : Perintah ini digunakan untuk memperbaiki commit terakhir dengan mengganti pesan commit atau menambahkan perubahan lainnya.
#
### git config
Mengatur opsi konfigurasi Git seperti nama dan alamat email pengguna yang akan digunakan dalam proses commit.
- `git config --global user.name "Nama Anda"`
- `git config --global user.email "email@example.com"`

#
### git fetch
Mengunduh branch dari repositori lain tanpa menggabungkannya ke repositori lokal.

- `git fetch origin` : Mengunduh perubahan dari remote 'origin'. Perintah ini digunakan untuk mengunduh perubahan dari repositori remote tanpa menggabungkannya ke branch lokal.
#
### git init
Digunakan untuk Menginisialisasi repositori Git baru dari local ke dalam project git.
- `git init`  
#
### git log
Menampilkan riwayat commit yang sudah dilakukan dalam repositori.
- `git log` : Perintah ini digunakan untuk melihat daftar commit yang sudah dilakukan dalam repositori. Akan menampilkan informasi tentang setiap commit, termasuk hash commit, user, waktu commit, dan pesan commit.
#
### git merge
Mengintegrasikan perubahan dari cabang yang berbeda ke dalam cabang saat ini.
- `git merge other-branch` : Menggabungkan perubahan dari 'other-branch' ke branch saat ini
#
### git pull
Mengunduh perubahan dari repositori remote dan menggabungkannya ke branch saat ini.
- `git pull origin master` : Mengunduh dan menggabungkan perubahan dari branch 'master' di remote 'origin'
#
### git push
Mengirim perubahan lokal ke repositori remote.
- `git push origin master` : Mengirim perubahan dari cabang 'master' ke remote 'origin'
