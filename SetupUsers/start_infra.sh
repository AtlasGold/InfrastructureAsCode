#!/bin/bash

echo "Creating Directories..."
mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating Groups..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating Users..."
useradd carlos -m -s /bin/bash -p $(openssl passwd  SuperSecurePass) -G GRP_ADM
useradd mary -m -s /bin/bash -p $(openssl passwd  SuperSecurePass) -G GRP_ADM
useradd john -m -s /bin/bash -p $(openssl passwd SuperSecurePass) -G GRP_ADM

useradd debie -m -s /bin/bash -p $(openssl passwd  SuperSecurePass) -G GRP_VEN
useradd sebastian -m -s /bin/bash -p $(openssl passwd  SuperSecurePass) -G GRP_VEN
useradd robert -m -s /bin/bash -p $(openssl passwd  SuperSecurePass) -G GRP_VEN

useradd josh -m -s /bin/bash -p $(openssl passwd  SuperSecurePass) -G GRP_SEC
useradd ana -m -s /bin/bash -p $(openssl passwd  SuperSecurePass) -G GRP_SEC
useradd roger -m -s /bin/bash -p $(openssl passwd  SuperSecurePass) -G GRP_SEC

echo "Giving The Permisions..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
