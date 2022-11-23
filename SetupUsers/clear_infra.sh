#!/bin/bash

echo 'Cleaning Directories...'
rm -rf /public /adm /ven /sec

echo 'Cleaning Groups...'
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo 'Cleaning Users...'
deluser carlos
deluser mary
deluser john
deluser debie
deluser robert
deluser sebastian
deluser josh
deluser ana
deluser roger
