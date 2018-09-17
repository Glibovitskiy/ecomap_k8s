FROM centos:latest

WORKDIR /opt

RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install git python2-pip python-devel httpd mod_wsgi mysql-devel gcc MySQL-python memcached
RUN pip install --upgrade setuptools
RUN git clone https://github.com/lhalam/EcoMap.git
RUN chown -R apache:apache ./EcoMap
RUN pip install --upgrade pip
COPY requirements.txt ./EcoMap/
RUN pip install -r ./EcoMap/requirements.txt
COPY ./configs/* ./EcoMap/ecomap/etc/
COPY ./httpd_configs/httpd.conf /etc/httpd/conf/
COPY ./httpd_configs/ecomap.conf /etc/httpd/conf.d/ecomap.conf
RUN chown -R apache /opt
COPY entrypoint.sh .
EXPOSE 80
ENTRYPOINT ["./entrypoint.sh"]
