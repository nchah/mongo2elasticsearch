#!/usr/bin/env python


from datetime import datetime
from elasticsearch import Elasticsearch

es = Elasticsearch()

response = es.search(index="", doc_type="", body={"query": {}})

print("%d documents found" % response['hits']['total'])
for doc in response['hits']['hits']:
    print("%s) %s" % (doc['_id'], doc['_source']['content']))




