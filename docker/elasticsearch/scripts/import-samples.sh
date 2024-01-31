#!/bin/bash

cd /usr/share/elasticsearch/samples/shakespeare

curl -H "Content-Type: application/json" -u "${SCRIPT_USER}:${SCRIPT_USER_PASSWORD}" -XPUT "${ELASTICSEARCH_HOST_URL}/shakespeare" --data-binary @shakespeare_mapping.json

curl -H "Content-Type: application/json" -u "${SCRIPT_USER}:${SCRIPT_USER_PASSWORD}" -XPUT "${ELASTICSEARCH_HOST_URL}/shakespeare/_bulk" --data-binary @shakespeare_data.json

cd /usr/share/elasticsearch/samples/movies

curl -H "Content-Type: application/json" -u "${SCRIPT_USER}:${SCRIPT_USER_PASSWORD}" -XPUT "${ELASTICSEARCH_HOST_URL}/movies" --data-binary @movies_mapping.json

curl -H "Content-Type: application/json" -u "${SCRIPT_USER}:${SCRIPT_USER_PASSWORD}" -XPUT "${ELASTICSEARCH_HOST_URL}/movies/_bulk" --data-binary @movies_data.json

cd /usr/share/elasticsearch/samples/movies_series

curl -H "Content-Type: application/json" -u "${SCRIPT_USER}:${SCRIPT_USER_PASSWORD}" -XPUT "${ELASTICSEARCH_HOST_URL}/movies_series" --data-binary @movies_series_mapping.json

curl -H "Content-Type: application/json" -u "${SCRIPT_USER}:${SCRIPT_USER_PASSWORD}" -XPUT "${ELASTICSEARCH_HOST_URL}/movies_series/_bulk" --data-binary @movies_series_data.json
