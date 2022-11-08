#!/bin/bash
# Johnnatan Silva


echo "Criando diretorios...
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Criando grupo dos usuarios..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
ECHO "Criando usuários..."
useradd romeu -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd fulano -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd beltrano -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd daniel -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roger -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd johnnatan -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd alves -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd silva -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "Especificando permissoes dos diretorios...."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
echo "Fim...."