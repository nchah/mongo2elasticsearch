#!/bin/sh
# Usage:
# bash s1-export-mongo-data.sh [path_to_export_file]

# --db = the database
# -c = the collection in the database
# -q = the query to limit what is exported
# --limit = how many documents to export
# --out = output file
mongoexport --db <db> -c <collection> -q '{ words: { $gt: {} } }' --limit 10 --out $1

