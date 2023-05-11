#!/bin/bash


echo "Criando diretorios"

mkdir /dev
mkdir /hml
mkdir /prod


echo "Criando grupos de usuários"

groupadd GRP_DEV
groupadd GRP_HML
groupadd GRP_PROD


echo "Criando usuários"

useradd jose.silva -m -s /bin/bash -p $(openssl passwd -crypt #sgr21321)
useradd maria.amelia -m -s /bin/bash -p $(openssl passwd -crypt #%gfsddgv1)
useradd deraldo.dornelis -m -s /bin/bash -p $(openssl passwd -crypt %34#21)

useradd ailton.silva -m -s /bin/bash -p $(openssl passwd -crypt #sgr21321)
useradd debora.amelia -m -s /bin/bash -p $(openssl passwd -crypt #%gfsddgv1)
useradd notato.dornelis -m -s /bin/bash -p $(openssl passwd -crypt %34#21)

useradd fabio.silva -m -s /bin/bash -p $(openssl passwd -crypt #sgr21321)
useradd maria.zaul -m -s /bin/bash -p $(openssl passwd -crypt #%gfsddgv1)
useradd stiven.dornelis -m -s /bin/bash -p $(openssl passwd -crypt %34#21)


echo "Especificando permissões dos diretórios"

chown root:GRP_DEV /dev
chown root:GRP_HML /hml
chown root:GRP_PROD /prod

chmod 777 /dev
chmod 777 /hml
chmod 777 /prod

echo "Fim"
