#!/bin/bash

#### VARIAVEIS ####

usuario=$1

#### INICIO ####

useradd $1 -p $(openssl passwd '123') -d /var/www/$1


