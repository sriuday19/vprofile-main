FROM mysql:8.0.33
LABEL "Author"="uday"
LABEL "project"="vprofile"

ENV MYSQL_RROT_PASSWORD="vprodbpass"
ENV MYSQL_DATABASE="accounts"

ADD Dockerfiles/db/db_backup.sql /docker-entrypoint-initdb.d

