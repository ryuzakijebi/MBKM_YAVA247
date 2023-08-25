### Nesting Loops
Nesting loops adalah jenis pengulangan di dalam pengulangan lainnya. Hal ini memungkinkan kita untuk melakukan nesting pada berbagai jenis pengulangan seperti while, for, dan until.
#
### Nesting While Loops
Nesting while loops melibatkan menempatkan satu pengulangan while di dalam pengulangan while lainnya.


```sh
while [condition1]
do
   # Perintah-perintah dalam blok pertama
   while [condition2]
   do
      # Perintah-perintah dalam blok kedua
   done
done
```
Contoh
```sh
#!/bin/bash

outer=1

while [ $outer -le 3 ]
do
    inner=1
    while [ $inner -le 3 ]
    do
        echo "Iterasi loop luar: $outer, Iterasi loop dalam: $inner"
        ((inner++))
    done
    ((outer++))
done
```
Pada contoh ini, terdapat dua pengulangan while yang bersarang. Loop luar akan beriterasi dari 1 hingga 3. Di dalam setiap iterasi loop luar, loop dalam juga akan beriterasi dari 1 hingga 3. Outputnya akan menampilkan kombinasi iterasi dari kedua loop.
![test1](https://iili.io/HyFf9Ve.png)


#
### Nesting For Loops
```sh
for (( initialization; condition; iteration ))
do
   # Blok pernyataan dalam loop for pertama
   for (( initialization; condition; iteration ))
   do
      # Blok pernyataan dalam loop for kedua
   done
done
```
Contoh
```sh
#!/bin/bash

for (( i = 1; i <= 3; i++ ))
do
    for (( j = 1; j <= 3; j++ ))
    do
        echo "Iterasi loop luar: $i, Iterasi loop dalam: $j"
    done
done
```
Pada contoh ini, dua loop for bersarang. Loop luar akan beriterasi dari 1 hingga 3. Di dalam setiap iterasi loop luar, loop dalam juga akan beriterasi dari 1 hingga 3. Outputnya akan menampilkan kombinasi iterasi dari kedua loop.


![test2](https://iili.io/HyFfHiu.png)
#
### Nesting until Loops
```sh
until [ condition ]
do
   # Blok pernyataan dalam loop until pertama
   until [ condition ]
   do
      # Blok pernyataan dalam loop until kedua
   done
done
```


Contoh
```sh
#!/bin/bash

outer=1

until [ $outer -gt 3 ]
do
    inner=1
    until [ $inner -gt 3 ]
    do
        echo "Iterasi loop luar: $outer, Iterasi loop dalam: $inner"
        ((inner++))
    done
    ((outer++))
done
```
Pada contoh ini, terdapat dua pengulangan until yang bersarang. Loop luar akan beriterasi selama nilai variabel outer kurang dari atau sama dengan 3. Di dalam setiap iterasi loop luar, loop dalam juga akan beriterasi selama nilai variabel inner kurang dari atau sama dengan 3. Outputnya akan menampilkan kombinasi iterasi dari kedua loop.

![test3](https://iili.io/HyFKyx9.png)