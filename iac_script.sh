#!/bin/bash

echo "Diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Regras dos diretórios"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Permissões"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Usuários"

useradd carlos -m -c "Usuário do Grupo ADM" -s /bin/bash -p $(openssl passwd senha1234) -G GRP_ADM
useradd maria -m -c "Usuário do Grupo ADM" -s /bin/bash -p $(openssl passwd senha1234) -G GRP_ADM
useradd joao -m -c "Usuário do Grupo ADM" -s /bin/bash -p $(openssl passwd senha1234) -G GRP_ADM

useradd debora -m -c "Usuário do Grupo VEN" -s /bin/bash -p $(openssl passwd senha1234) -G GRP_VEN
useradd sebastiana -m -c "Usuário do Grupo VEN" -s /bin/bash -p $(openssl passwd senha1234) -G GRP_VEN
useradd roberto -m -c "Usuário do Grupo VEN" -s /bin/bash -p $(openssl passwd senha1234) -G GRP_VEN

useradd josefina -m -c "Usuário do Grupo SEC" -s /bin/bash -p $(openssl passwd senha1234) -G GRP_SEC
useradd amanda -m -c "Usuário do Grupo SEC" -s /bin/bash -p $(openssl passwd senha1234) -G GRP_SEC
useradd rogerio -m -c "Usuário do Grupo SEC" -s /bin/bash -p $(openssl passwd senha1234) -G GRP_SEC

echo "...\^_^/..."
