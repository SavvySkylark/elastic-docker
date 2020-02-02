FROM mysql:5.7
ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=password
ENV MYSQL_DATABASE=movielens

COPY ./ml-100k/. /tmp/.
COPY ./sql-scripts/ /docker-entrypoint-initdb.d/
COPY ./conf/config-file.cnf /etc/mysql/conf.d/config-file.cnf