## Create session
```
from pyspark.sql import SparkSession
from pyspark.sql.types import StructType, StructField, StringType, DoubleType
spark = SparkSession.builder.appName("CarList").enableHiveSupport().getOrCreate()
```

![Alt text](image-6.png)
#
## Konfirmasi database dan table Hive
```
spark.sql("SHOW DATABASES").show()
```
![Alt text](image-7.png)

```
spark.sql("USE jebi") 
```
![Alt text](image-9.png)

```
spark.sql("SHOW TABLES").show()
```
![Alt text](image-8.png)


#
## Create external table Hive
```
spark.sql("""
    CREATE EXTERNAL TABLE IF NOT EXISTS jebi.table_car (
        brand STRING,
        price DOUBLE
    )
    COMMENT 'External table for car data'
    LOCATION 'tmp/jebi/car/'
""")
``` 
![Alt text](image-10.png)
#
## Create data
```
car_data = [("Toyota", 25000.0),
            ("Honda", 22000.0),
            ("Ford", 28000.0),
            ("Chevrolet", 30000.0)]
```
![Alt text](image-11.png)

#
## Define the schema for the DataFrame
```
schema = StructType([
    StructField("brand", StringType(), True),
    StructField("price", DoubleType(), True)
])
```
![Alt text](image-12.png)
#
## Create the DataFrame
```
myCarList = spark.createDataFrame(car_data, schema=schema)
```
![Alt text](image-13.png)

#
## Show the DataFrame
```
myCarList.show()
```
![Alt text](image-14.png)
#
## Insert data ke tabel hive
```
myCarList.write.insertInto("jebi.table_car") 
```
#
## Read data yang telah diinput dari tabel hive
```
hive > select * from table_car
```
![Alt text](image-15.png)