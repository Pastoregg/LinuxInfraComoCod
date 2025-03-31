#!/bin/bash

echo "criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários"

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 123)
useradd maria -m -s /bin/bash -p $(openssl passwd -1 123)
useradd joao -m -s /bin/bash -p $(openssl passwd -1 123)
useradd debora -m -s /bin/bash -p $(openssl passwd -1 123)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 123)
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 123)
useradd josefina -m -s /bin/bash -p $(openssl passwd -1 123)
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 123)
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 123)

echo "adicionando usuários aos grupos"

usermod -aG GRP_ADM carlos
usermod -aG GRP_ADM maria
usermod -aG GRP_ADM joao

usermod -aG GRP_VEN debora
usermod -aG GRP_VEN sebastiana
usermod -aG GRP_VEN roberto

usermod -aG GRP_SEC josefina
usermod -aG GRP_SEC amanda
usermod -aG GRP_SEC rogerio

echo "Adicionando permissões das pastas"
