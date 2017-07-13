#!/bin/sh
# Usage:
# $ bash s2-preprocess-mongo-data.sh [file_to_preprocess]

# Add {"index": {}} prior to each JSON line, required for Elasticsearch to index in bulk
sed -e 's/^/{ "index" : {} }\n/' -i $1

# Replace "\n" --> "newline-char"
sed -e 's/"\\n"/"newline-char"/g' -i $1

# Replace {"$oid" --> {"oid"
sed -e 's/{"$oid"/{"oid"/g' -i $1

# Replace {"_id" --> {"mongo_id" - this id is from mongoexport
sed -e 's/{"_id"/{"mongo_id"/g' -i $1

# Replace "" field --> "null-val"
sed -e 's/{""/{"null-val"/g' -i $1

