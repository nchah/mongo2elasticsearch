#!/usr/bin/env python

import argparse
from datetime import datetime
from elasticsearch import Elasticsearch

es = Elasticsearch()


def get_queries(input_file):
    """ Get the list of queries from an external file"""
    return queries


def query_es():
    """ """
    response = es.search(index="", doc_type="", body={"query": {}})

    print("%d documents found" % response['hits']['total'])
    for doc in response['hits']['hits']:
        print("%s) %s" % (doc['_id'], doc['_source']['content']))  # Adjust the JSON fields

    # Set how the query responses should be stored



if __name__ == '__main__':
    #parser = argparse.ArgumentParser()
    #parser.add_argument('markerset_file', help='Path to the input data file')
    #args = parser.parse_args()
    #main(args.input_file)
    query_es()

