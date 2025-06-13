FROM couchdb:latest

ENV COUCHDB_USER=admin
ENV COUCHDB_PASSWORD=admin123

RUN mkdir -p /data && chown -R couchdb:couchdb /data
ENV COUCHDB_DATA_DIR=/data

COPY local.ini /opt/couchdb/etc/local.d/local.ini
COPY create_users.sh /docker-entrypoint-initdb.d/create_users.sh

EXPOSE 5984