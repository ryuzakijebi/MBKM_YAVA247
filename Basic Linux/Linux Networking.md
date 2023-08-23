### Linux Networking
#
- Networking Commands

    | Perintah                  | Deskripsi                           |
    |---------------------------|--------------------------------|
    | `ifconfig`                | Menampilkan dan memanipulasi antarmuka rute dan jaringan.    |
    | `ip`                      | Pengganti dari perintah ifconfig.                           |
    | `traceroute`              | Utilitas pemecahan masalah jaringan.                        |
    | `tracepath`               | Mirip dengan traceroute, namun tidak memerlukan hak root.   |
    | `ping`                    | Memeriksa konektivitas antara dua node.                     |
    | `netstat`                 | Menampilkan informasi koneksi.                              |
    | `ss`                      | Pengganti dari perintah netstat.                            |
    | `dig`                     | Mengambil informasi terkait DNS.                            |
    | `nslookup`                | Mencari pertanyaan terkait DNS.                             |
    | `route`                   | Menampilkan dan memanipulasi tabel routing IP.              |
    | `host`                    | Melakukan pencarian DNS.                                    |
    | `arp`                     | Melihat atau menambahkan isi tabel ARP kernel.              |
    | `iwconfig`                | Digunakan untuk mengkonfigurasi antarmuka jaringan nirkabel.|
    | `hostname`                | Mengidentifikasi nama jaringan.                             |
    | `curl` atau `wget`        | Mengunduh berkas dari internet.                             |
    | `mtr`                     | Menggabungkan ping dan tracepath menjadi satu perintah.     |
    | `whois`                   | Akan memberi informasi mengenai WHOIS situs web.            |
    | `ifplugstatus`            | Menunjukkan apakah kabel terhubung atau tidak.              |
#
- ### Linux telnet Command
    Linux telnet adalah utilitas baris perintah yang digunakan untuk membuat koneksi jarak jauh dengan sistem lain melalui jaringan TCP/IP.
    
    Syntax
    ```
    telnet hostname/IP address
    ```

    ### Perintah dalam telnet

    | Perintah                           | Deskripsi                                                |
    |-----------------------------------|----------------------------------------------------------|
    | `auth disable [type]`              | Menonaktifkan jenis otentikasi yang ditentukan.          |
    | `auth enable [type]`               | Mengaktifkan jenis otentikasi yang ditentukan.           |
    | `auth status`                      | Menampilkan status otentikasi.                          |
    | `encrypt disable [type [input/output]]` | Menonaktifkan jenis enkripsi yang ditentukan.     |
    | `encrypt enable [type [input/output]]`  | Mengaktifkan jenis enkripsi yang ditentukan.      |
    | `encrypt status`                   | Menampilkan status enkripsi.                            |
    | `display [argument...]`            | Menampilkan nilai-nilai toogle dan set.                 |
    | `close`                            | Menutup sesi TELNET.                                    |
    | `logout`                           | Keluar dari sesi TELNET.                                |
    | `telnet [hostname/alamat_IP]`      | Membuat koneksi ke sistem remote menggunakan TELNET.   |
    | `help`                             | Menampilkan daftar perintah TELNET yang tersedia.      |
    | `mode [type]`                      | Mengganti mode TELNET antara mode karakter dan mode baris. |
    | `open [hostname/alamat_IP]`        | Membuka koneksi ke sistem remote menggunakan TELNET.   |
    | `quit`                             | Keluar dari TELNET.                                     |
    | `send [string]`                    | Mengirim string ke sistem remote.                      |


#
- ### SSH Linux
    SSH (Secure Shell) adalah protokol jaringan yang digunakan untuk mengamankan komunikasi antara perangkat dalam jaringan, seperti antara komputer klien dan server. 
    
    Syntax 
    ```
    ssh user_name@host(IP/Domain_name)  
    ```
    #
    ### Command dalam SSH
    | Perintah                           | Deskripsi                                                |
    |-----------------------------------|----------------------------------------------------------|
    | `ssh-keygen`                      | Membuat sepasang kunci untuk koneksi dan otentikasi kunci publik. |
    | `ssh-copy-id`                     | Mengonfigurasi kunci publik sebagai pengguna yang valid di server. |
    | `ssh-agent`                       | Membuat agen yang menyimpan kunci pribadi untuk otentikasi satu tanda tangan. |
    | `ssh-add`                         | Menambahkan kunci ke agen.                               |
    | `scp`                             | Klien transfer file dengan antarmuka baris perintah mirip RCP. |
    | `sftp`                            | Perintah transfer file dengan antarmuka baris perintah mirip FTP. |
    | `sshd`                            | Server OpenSSH untuk sistem Linux.                      |

#
- ### Linux Mail Command
    Perintah mail pada Linux adalah utilitas baris perintah yang memungkinkan pengguna untuk mengirim email langsung dari CLI.
    | Perintah                                      | Deskripsi                                                                                          |
    |-----------------------------------------------|----------------------------------------------------------------------------------------------------|
    | `mail -s "Subject" <recipient address>`        | Mengirimkan email dari baris perintah dengan menentukan subjek dan alamat penerima.             |
    | `mail -s "subject" <recipient_address> <<< 'Message'` | Mengirimkan email dengan subjek dan pesan dalam satu baris.                               |
    | `echo "Message body" \| mail -s "Subject" aFrom:Dwivedi\<Himanshudubey481@gmail.com\> hr@javatpoint.com` | Mengirimkan email dengan informasi dari baris perintah dan alamat penerima. |
    | `mail -s "Hello World" user@yourmaildomain.com < /home/mail/mailcontent.txt` | Mengirimkan email dengan mengambil isi pesan dari file.                |
    | `mail -s "Hello World" <recipient address> -b userto< bcc address>` | Mengirimkan email dengan menambahkan alamat BCC.                                 |
    | `mail -s "Hello World" <recipient address> -c userto< cc address>`  | Mengirimkan email dengan menambahkan alamat CC.                                  |
    | `mail -s "Hello World" <recipient address> -b userto< bcc address> -c userto<cc address>` | Mengirimkan email dengan menambahkan alamat BCC dan CC.            |
    | `mail -s "Hello World" <recipient address1>,<recipient address2>` | Mengirimkan email ke beberapa alamat penerima.                      |
    | `echo "Message body" \| mail -s "Subject" -aFrom:Sender_name\<Sender mail address\> recipient address` | Mengirimkan email dengan informasi tambahan 'FROM'.          |
    | `echo "Message body" \| mail -s "Subject" -a /path/to/file <sender address>` | Mengirimkan email dengan lampiran file.                          |
    | `mail`                                        | Membaca email yang masuk ke kotak masuk.                                                      |
    | `man mail`                                    | Menampilkan panduan manual untuk perintah `mail`.                                            |

#
- ### Linux Curl Command
    Perintah curl digunakan untuk mengambil atau mengirim data ke atau dari server melalui berbagai protokol yang mendukung URL, seperti HTTP, HTTPS, FTP, FTPS, SCP, SFTP, LDAP, dan lainnya. I
    
    Syntax
    ```
    curl [options] [URL...] 
    ``` 
    | Perintah                          | Deskripsi                                                           |
    |----------------------------------|---------------------------------------------------------------------|
    | `curl [URL]`                     | Mengambil konten dari URL yang diberikan.                            |
    | `curl -O [URL]`                  | Mengunduh file dari URL dan menyimpannya lokal dengan nama yang sama.|
    | `curl -o [output-file] [URL]`    | Mengunduh file dari URL dan menyimpannya lokal dengan nama kustom.  |
    | `curl -L [URL]`                  | Mengikuti pengalihan jika URL mengarahkan ke URL lain.              |
    | `curl -I [URL]`                  | Mengambil hanya header respons HTTP dari URL.                        |
    | `curl -X [HTTP-METHOD] [URL]`    | Mengirim permintaan HTTP dengan metode yang ditentukan.             |
    | `curl -d [data] [URL]`           | Mengirim data dalam bentuk POST ke server.                          |
    | `curl -H "Header-Name: Header-Value" [URL]` | Menambahkan header kustom dalam permintaan HTTP.        |
