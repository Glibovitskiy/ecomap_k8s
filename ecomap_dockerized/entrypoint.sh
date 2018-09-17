#!/bin/bash

if [[ -z $ECOMAP_DB_HOST || -z $ECOMAP_DB_PASSWORD ]]; then
	>&2 echo "Environment variables ECOMAP_DB_HOST and ECOMAP_DB_PASSWORD are required"
	exit 1
else
	echo -e "rw.host=$ECOMAP_DB_HOST\n\
rw.password=$ECOMAP_DB_PASSWORD\n\
ro.host=$ECOMAP_DB_HOST\n\
ro.password=$ECOMAP_DB_PASSWORD" >> /opt/EcoMap/ecomap/etc/db.conf
fi

httpd -D FOREGROUND -e info
