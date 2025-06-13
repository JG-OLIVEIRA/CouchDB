#!/bin/bash
# Espera o CouchDB iniciar
sleep 5

echo "Criando usuários marcos, giovanni e vinicius..."

curl -X PUT http://admin:admin123@couchdb-liy2.onrender.com/_users/org.couchdb.user:joao \
  -H "Content-Type: application/json" \
  -d '{
    "name": "marcos",
    "password": "marcos123",
    "roles": [],
    "type": "user"
  }'

curl -X PUT http://admin:admin123@couchdb-liy2.onrender.com/_users/org.couchdb.user:joao \
  -H "Content-Type: application/json" \
  -d '{
    "name": "giovanni",
    "password": "giovanni123",
    "roles": [],
    "type": "user"
  }'

curl -X PUT http://admin:admin123@couchdb-liy2.onrender.com/_users/org.couchdb.user:joao \
  -H "Content-Type: application/json" \
  -d '{
    "name": "vinicius",
    "password": "vinicius123",
    "roles": [],
    "type": "user"
  }'

echo "Usuários criados!"