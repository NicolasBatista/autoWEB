#!/bin/bash

#### VARIAVEIS ####



#### INICIO ####

for dominio in $(cat $1)
do
	nome=$(echo $dominio | cut -d. -f1)
	./CriarDominio.sh $dominio
	./CriarSite.sh $dominio $nome
	./CriarFTP.sh $nome
done
