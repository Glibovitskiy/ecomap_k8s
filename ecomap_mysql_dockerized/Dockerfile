FROM mysql:5.7
ENV MYSQL_ROOT_PASSWORD=root
WORKDIR /opt
ENV MYSQL_DATABASE=ecomap_db
COPY . /opt/
COPY . /docker-entrypoint-initdb.d
CMD ["mysqld"]
