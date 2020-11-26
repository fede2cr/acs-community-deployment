FROM postgres:11.7 

USER root

# Fix volume perms
RUN chown 999:999 /var/lib/postgresql/data /var/log/postgresql
RUN rm /var/lib/postgresql/data/.empty
