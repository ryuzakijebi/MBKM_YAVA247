## Testing Spark

## Membaca Data CSV Menggunakan spark-shell

1. Menentukan Variabel Path CSV
   
    ```
    val data = "hdfs://yavabuntu/tmp/jebi/offices/offices.csv"
    ```
    ![Alt text](image-21.png)
#
2. Atur delimiter untuk menampilkan data CSV:

    ```
    val data_offices = spark.read.option("delimiter", ",").option("header", "true").csv(data)
    ```
    ![Alt text](image-22.png)
    
#
3. Tampilkan data sebanyak 10 baris:

    ```
    data_offices.show(10)
    ```
    ![Alt text](image-23.png)


#
## Membaca Database dan Tabel pada Hive Menggunakan PySpark

1. Menentukan Spark Session
   
    ```
    from pyspark.sql import SparkSession
    ```
    ```
    spark = SparkSession.builder.appName("ReadHive").enableHiveSupport().getOrCreate()
    ```
    ![Alt text](image-16.png)
#
2. Menampilkan list database
    ```
    spark.sql("SHOW DATABASES").show()
    ```

    ![Alt text](image-17.png)
#
3. Memilih database
    ```
    spark.sql("USE jebi")
    ```
    ![Alt text](image-18.png)
#
4. Menampilkan daftar table

    ```
    spark.sql("SHOW TABLES").show()
    ```
    ![Alt text](image-19.png)
#
5. Menampilkan data dari sebuah tabel tertentu
    ```
    spark.sql("SELECT * FROM offices").show()
    ```
    ![Alt text](image-20.png)
