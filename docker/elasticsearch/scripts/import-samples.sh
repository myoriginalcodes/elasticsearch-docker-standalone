#!/bin/bash

cd /usr/share/elasticsearch/samples/shakespeare

curl -H "Content-Type: application/json" -u "elastic:${ELASTIC_PASSWORD}" -XPUT "127.0.0.1:${ELASTIC_TCP_PORT}/shakespeare" --data-binary @shakespeare_mapping.json

curl -H "Content-Type: application/json" -u "elastic:${ELASTIC_PASSWORD}" -XPUT "127.0.0.1:${ELASTIC_TCP_PORT}/shakespeare/_bulk" --data-binary @shakespeare_data.json

cd /usr/share/elasticsearch/samples/movies

curl -H "Content-Type: application/json" -u "elastic:${ELASTIC_PASSWORD}" -XPUT "127.0.0.1:${ELASTIC_TCP_PORT}/movies" --data-binary @movies_mapping.json

curl -H "Content-Type: application/json" -u "elastic:${ELASTIC_PASSWORD}" -XPUT "127.0.0.1:${ELASTIC_TCP_PORT}/movies/_bulk" --data-binary @movies_data.json
