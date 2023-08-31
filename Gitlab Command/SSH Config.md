### Generate SSH key
```sh
ssh-keygen -C ryuzaki.jebi@gmail.com
```
#
### Tambahkan key ke agent
```sh
ssh-add ~/.ssh/id_rsa
```
#
### Salin SSH Key ke gitlab
```sh
cat ~/.ssh/id_rsa.pub
```
![](https://iili.io/Hy61RuR.png)
#
### Uji Koneksi SSH
```sh
ssh -T git@gitlab.com
```
![](https://iili.io/Hy61kFe.png)

