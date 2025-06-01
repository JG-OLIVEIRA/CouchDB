FROM couchdb:latest

ENV COUCHDB_USER=admin
ENV COUCHDB_PASSWORD=admin123

# Cria o diretório /data, dá permissão para o usuário couchdb
RUN mkdir -p /data && chown -R couchdb:couchdb /data

# Define variável para apontar o diretório de dados para /data
ENV COUCHDB_DATA_DIR=/data

# Copia configuração customizada do CouchDB para usar /data como database_dir e view_index_dir
COPY local.ini /opt/couchdb/etc/local.d/local.ini

EXPOSE 5984
