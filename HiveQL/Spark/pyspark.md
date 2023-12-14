# Spark SQL Access to hive using pyspark
## Load dan Read Data CSV dari HDFS
1. Start session spark
   
    ```
    pyspark
    ```
    ![Alt text](image.png)

#
2. Load dan Read Data ke DataFrame
   
    ```
    offices = "hdfs://yavabuntu/tmp/jebi/offices/offices.csv"
    ```
    ```
    df = spark.read.csv(offices)
    ```   
#
3. Menampilkan Data

    ```
    df.show()
    ```
    ![Alt text](image-1.png)
#
## Spark read database and table on hive using pyspark

1. Inisialisasi SparkSession untuk Hive
   
    ```
    from pyspark.sql import SparkSession
    spark = SparkSession.builder.appName("ReadFromHive").enableHiveSupport().getOrCreate()
    ```
#
2. Menampilkan Database
    ```
    spark.sql("SHOW DATABASES").show()
    ```

    ![Alt text](image-2.png)
#
3. Menggunakan Database
   
    ```
    spark.sql("USE jebi")
    ```
    ![Alt text](image-3.png)
#
4. Menampilkan tabel

    ```
    spark.sql("SHOW TABLES").show()
    ```
    ![Alt text](image-4.png)

#
5. Membaca dan Menampilkan Data dari Tabel "employees"
   
    ```
    spark.sql("SELECT * FROM employees").show()
    ```
    ![Alt text](image-5.png)