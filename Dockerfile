FROM mysql:8.0

COPY ./dockercompose/db/scripts/entrypoint.sh /usr/local/scripts/entrypoint.sh

#COPY ./dockercompose/db/sql/*.sql /var/opt/
 
COPY ./dockercompose/db/sql/*.sql /docker-entrypoint-initdb.d/

RUN  chmod +x /usr/local/scripts/*.sh 
# && \ /usr/local/scripts/entrypoint.sh

#EXPOSE 8080 8443

#ENTRYPOINT ["/usr/local/scripts/entrypoint.sh"]

#CMD ["entrypoint.sh", "run"]

# WORKDIR /var/www

# USER $user