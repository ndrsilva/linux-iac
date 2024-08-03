#!/bin/bash

echo "Iniciando script IaC"

echo "Criando diretórios..."
mkdir /publico
mkdir /admin
mkdir /ven
mkfir /sec
echo "Diretórios criados com sucesso..."



echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos de usuários criados com sucesso..."



echo "Criando usuários..."
useradd ana.silva -m -c "ana silva" -s /bin/bash -G GRP_ADM && echo "ana.silva:123" | sudo chpasswd
useradd amanda.silva -m -c "amanda silva" -s /bin/bash -G GRP_ADM && echo "amanda.silva:123" | sudo chpasswd
useradd andre.silva -m -c "andre silva" -s /bin/bash -G GRP_ADM && echo "andre.silva:123" | sudo chpasswd

useradd viviane.silva -m -c "viviane silva" -s /bin/bash -G GRP_VEN && echo "viviane.silva:123" | sudo chpasswd
useradd vinicius.silva -m -c "vinicius silva" -s /bin/bash -G GRP_VEN && echo "vinicius.silva:123" | sudo chpasswd
useradd vagner.silva -m -c "vagner silva" -s /bin/bash -G GRP_VEN && echo "vagner.silva:123" | sudo chpasswd

useradd silvio.silva -m -c "silvio silva" -s /bin/bash -G GRP_SEC && echo "silvio.silva:123" | sudo chpasswd
useradd sirleide.silva -m -c "sirleide silva" -s /bin/bash -G GRP_SEC && echo "sirleide.silva:123" | sudo chpasswd
useradd soelia.silva -m -c "soelia silva" -s /bin/bash -G GRP_SEC && echo "soelia.silva:123" | sudo chpasswd
echo "Usuários criados com sucesso..."



echo "Especificando permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /admin
chmod 770 /ven
chmod 770 /sec
echo "Permissões atribuidas com sucesso..."

echo "Script finalizado..."
