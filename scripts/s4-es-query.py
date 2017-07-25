#!/usr/bin/env python

import argparse
from datetime import datetime
from elasticsearch import Elasticsearch

es = Elasticsearch()


def get_queries(input_file):
    """ Get the list of queries from an external file"""
    #with open(input_file, "r") as f:
    #    f.read()
    return queries


def query_es(query_dict):
    """ """
    # queries = get_queries()  # Specify input
    response = es.search(index="", doc_type="", body={"query": {query_dict}})
    return response


def store_output(resp):
    """ Store the ES response in the desired format """
    # Comment out as needed
    print("%d documents found" % response['hits']['total'])
    for doc in response['hits']['hits']:
        print("%s) %s" % (doc['_id'], doc['_source']['content']))  # Adjust the JSON fields
    # Use csv library to write output


def main():
    """ """
    queries = get_queries()
    for query in queries:
        response = query_es(query)
        store_output(response)


if __name__ == '__main__':
    #parser = argparse.ArgumentParser()
    #parser.add_argument('markerset_file', help='Path to the input data file')
    #args = parser.parse_args()
    #main(args.input_file)
    main()

