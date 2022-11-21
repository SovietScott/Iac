#!/bin/sh
#Script de Criação de Estrutura de Usuários, Diretórios e Permissões

echo "Criando todos os grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação de grupos finalizada"

echo "Criando os diretórios"

mkdir /publico
mkdir /adm 
mkdir /ven 
mkdir /sec

echo "Criação de diretórios finalizada"

echo "Criando usuários"

useradd carlos -c "Carlos dos Santos" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_ADM
useradd maria -c "Maria da Conceição" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_ADM
useradd joao -c "João Neves" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_ADM

useradd debora -c "Débora Fontina" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_VEN
useradd sebastian -c "Sebastian Silva" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_VEN
useradd roberto -c "Roberto Oliveira" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_VEN

useradd josefina -c "Josefina Amaral" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_SEC
useradd amanda -c "Amanda Claro" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_SEC
useradd rogerio -c "Rogério Ferreira" -m -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP_SEC

echo "Criação de usuários finalizada"

echo "Definindo permissões para os diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Processo completo, execução completa"
