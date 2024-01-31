# elasticsearch by sharetheco.de

This repository was created to study the elasticsearch stack

How to create the sample data

Note: If you run the command below more than once, the index creation will fail
as elasticsearch do not allows duplicated indexes. The data it self will be duplicated.
So to avoid "dirty" data, make sure to run this command only once.

docker exec elasticsearch-sharetheco-de bash /usr/share/elasticsearch/scripts/import-samples.sh

This command creates two indexes:
    - shakespeare
    - movies
