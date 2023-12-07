# Spark SQL Access to hive

### Jalankan spark shell
```
su - spark
spark-shell
```
![](image-5.png)

#
### Deklarasi Variabel 
Deklarasikan nama variabel untuk menyimpan hasil eksekusi perintah SQL pada tabel yang dipilih dalam spark.
```
val <nama_variabel> = spark.sql("SELECT * FROM <nama_tabel>")
```

```
val all_orders = spark.sql("SELECT * FROM orders")
```

![Alt text](image-6.png)


#
### Menampilkan DataFrame
```
<nama variable>.show()
```
```
all_orders.show()
```
![Alt text](image-7.png)


#
### Menampilkan Jumlah Baris Tertentu 
Menampilkan 10 baris dari DataFrame all_orders
```
all_orders.show(10)
```
![Alt text](image-8.png)