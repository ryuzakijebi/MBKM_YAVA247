# Disk Monitoring

Program ini berfungsi untuk memonitor status penggunaan disk pada suatu sistem. Skrip ini mengumpulkan informasi tentang host, alamat IP, pengguna, dan tanggal saat ini. 

Menggunakan perintah `df -h`, skrip mengambil data ukuran total disk, ukuran yang digunakan, ukuran tersedia, dan persentase penggunaan disk. 

Program juga menilai persentase penggunaan disk terhadap treshold. Jika di bawah treshold, status "Space masih aman" ditampilkan. Namun, jika melebihi treshold, program memberikan peringatan "Warning: Space hampir penuh". 

```sh
hostname=$(hostname)
ip=$(hostname -I)
user=$(whoami)
date=$(date +"%Y-%m-%d")
threshold=10

total=$(df -h --output=size / | sed -n '2p')
used=$(df -h --output=used / | sed -n '2p')
available=$(df -h --output=avail / | sed -n '2p')
percentage=$(df -h --output=pcent / | sed -n '2p' | sed 's/%//')

echo "=============== Disk Monitor ==============="
echo "Hostname       : $hostname"
echo "IP Address     : $ip"
echo "User           : $user"
echo "Tanggal        : $date"
echo " "
echo "=============== Disk Status ==============="
echo "Kapasitas Total Disk      : "$total"B"
echo "Total Disk yang digunakan : "$used"B"
echo "Disk yang tersisa         : "$available"B"
echo "Presentase Penggunaan     :  "$percentage"%"
echo " "
echo "=============== Status ==============="

if [ "$percentage" -lt "$threshold" ]; then
    echo "Status         : Space masih aman"
else
    echo "Warning        : Space hampir penuh"
fi
```


![Set Hostname](https://iili.io/HyV4Kj1.jpg)


