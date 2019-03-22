FROM legionus/altlinux-initroot:x86_64

USER root

RUN \
 apt-get -y update;\
 apt-get -y install mariadb-server mariadb-server-control;\
 apt-get -y clean;\
 mkdir /docker-entrypoint-initdb.d;
 
VOLUME ["/var/lib/mysql/db"]

COPY docker-entrypoint.sh /usr/local/bin/
COPY dumps/* /docker-entrypoint-initdb.d/

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

EXPOSE 3306

CMD [ "mysqld" ]
