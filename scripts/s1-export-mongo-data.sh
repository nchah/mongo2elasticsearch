#!/bin/sh
# Usage:
# bash s1-export-mongo-data.sh [path_to_export_file]

# --db = the database
# -c = the collection in the database
# -f = the fields to export
# -q = the query to limit what is exported
# --limit = how many documents to export
# --out = output file

mongoexport --db <db> -c <collection> -f <fields> -q '{ }' --limit 10 --out $1

# Run with nohup for large data sets:
#$ nohup mongoexport --db <db> -c <collection> -f <fields> -q '{ }' --limit 10 --out $1 &


# Example:
# - q = get the documents where the "words" array is non-empty
# mongoexport --db <db> -c <collection> -f <fields> -q '{ words: { $gt: {} } }' --limit 10 --out $1

