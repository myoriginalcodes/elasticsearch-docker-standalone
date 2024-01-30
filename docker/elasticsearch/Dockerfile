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
# Copy the scripts to the container
# Change permissions inside the container
#

USER root

RUN ["mkdir", "/usr/share/elasticsearch/scripts"]

COPY scripts/import-samples.sh /usr/share/elasticsearch/scripts/import-samples.sh

RUN ["chmod", "+x", "/usr/share/elasticsearch/scripts/import-samples.sh"]

USER elasticsearch
