#!/bin/bash

#### VARIAVEIS ####

site=$1
arquivo=$2

#### INICIO ####

#cd /etc/apache2/sites-available

echo "<VirtualHost *:80>
ServerName www.$1
DocumentRoot /var/www/$2
</VirtualHost>" > /etc/apache2/sites-available/$2.conf

a2ensite $2.conf

mkdir /var/www/$2
echo "<meta charset=\"utf-8\"/>
	<html>
		<head>
		<title> Site em construcao do dominio $1 </title>
		</head>
		<body>
			<center>
				<h1> <front color=\"#0000FF\">
				SITE EM CONSTRUCAO DO DOMINIO $1
				</h1>
			</center>
		</body>
	</html>" >> /var/www/$2/index.html

systemctl restart apache2

