#
#--------------------------------------------------------------------------
# Image Setup
#--------------------------------------------------------------------------
#

FROM elasticsearch:8.11.3

#
#--------------------------------------------------------------------------
# Script to create sample data on elasticsearch
#--------------------------------------------------------------------------
#
# Create the scripts folder
# Change permissions inside container
#

USER root

RUN ["mkdir", "/usr/share/elasticsearch/scripts"]

COPY scripts/import-sample.sh /usr/share/elasticsearch/scripts/import-sample.sh

RUN ["chmod", "+x", "/usr/share/elasticsearch/scripts/import-sample.sh"]

USER elasticsearch
