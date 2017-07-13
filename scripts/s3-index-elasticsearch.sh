#!/bin/sh
# Usage:
# bash s3-setup-elasticsearch.sh [mongo_file_to_load]


# Create the index:
curl -XPUT 'localhost:9200/<index_name>?pretty' -H 'Content-Type: application/json' -d'
{
    "settings" : {
       "index.mapping.total_fields.limit": 5000,
        "index" : {
            "number_of_shards" : 3,
            "number_of_replicas" : 2
        }
    }
}'

# Load the mongo data into elasticsearch
curl -s -H "Content-Type: application/x-ndjson" -XPUT 'http://localhost:9200/<index_name>/<type>/_bulk?pretty' --data-binary  @$1


# To increase field size limit
# curl -X PUT 'localhost:9200/malex-app2/_settings' -d '{"index.mapping.total_fields.limit": 2000}'

# To view stats
# curl 'localhost:9200/_cat/indices?v'

# To delete an index
# curl -XDELETE 'localhost:9200/malex-app2?pretty'

