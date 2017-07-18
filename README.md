# mongo2elasticsearch

Load MongoDB data into Elasticsearch. Pre-process, load, and query it.

## Directory

```
$ tree
.
├── README.md
├── scripts
│   ├── s0-explore-data.sh
│   ├── s1-export-mongo-data.sh
│   ├── s2-preprocess-mongo-data--gsed.sh
│   ├── s2-preprocess-mongo-data--linux.sh
│   ├── s3-index-elasticsearch.sh
│   └── s4-es-query.py
└── tests
    ├── export-1-preprocessed.json
    └── export-1.json
```

## Dependencies

Dependencies and utilities that are used for each script.

```
scripts
    ├── s0-explore-data.sh              <-- ls, wc, tree
    ├── s1-export-mongo.sh              <-- mongoexport
    ├── s2-preprocess-mongo-data.sh     <-- sed, gsed
    ├── s3-index-elasticsearch.sh       <-- curl
    └── s4-es-query.py                  <-- elasticsearch (Python lib)
```


## Workflow

Run scripts in sequential order to export MongoDB data and load it into Elasticsearch: `s1-export-mongo-data.sh`, `s2-preprocess-mongo-data.sh`, `s3-index-elasticsearch.sh` 
`s4-es-query.py` can be used to run queries on Elasticsearch.


## Documentation

- [Mongoexport](https://docs.mongodb.com/manual/reference/program/mongoexport/)
- [Elasticsearch Reference](https://www.elastic.co/guide/en/elasticsearch/reference/index.html)
- [Python elasticsearch client](https://elasticsearch-py.readthedocs.io)


## Other Links

- [NLPchina/elasticsearch-sql](https://github.com/NLPchina/elasticsearch-sql) - Query Elasticsearch with SQL syntax
- [appbaseio/mirage](https://github.com/appbaseio/mirage) - GUI for Elasticsearch queries




