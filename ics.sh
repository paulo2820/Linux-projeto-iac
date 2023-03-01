#!/bin/bash

echo "Criando Diretorios"

sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

echo "Criando grupos de usuários...."

sudo groupadd  GRP_ADM
sudo groupadd  GRP_VEN
sudo groupadd  GRP_SEC 

echo "Criando usuários...."

sudo useradd adm1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
sudo useradd venda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
sudo useradd secretaria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC


echo "Especificando permissões dos diretórios."


sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec

sudo chmod 770 /adm
sudo chmod 770 /ven
sudo chmod 770 /sec
sudo chmod 777 /publico

echo "Concluido"














echo "Criando usuários...."

