# mongo2elasticsearch

Load MongoDB data into Elasticsearch.

## Directory

```
$ tree
.
├── README.md
├── bash
│   ├── s1-export-mongo-data.sh
│   ├── s2-preprocess-mongo-data--gsed.sh
│   ├── s2-preprocess-mongo-data--linux.sh
│   └── s3-index-elasticsearch.sh
├── python
│   └── es-query.py
└── tests
    ├── export-1-preprocessed.json
    └── export-1.json
```

## Dependencies

```
bash
    ├── s1-export-mongo.sh              <-- mongoexport
    ├── s2-preprocess-mongo-data.sh     <-- sed, gsed
    └── s3-index-elasticsearch.sh       <-- curl
├── python
    └── es-query.py                     <-- elasticsearch
```


## Workflow

Run scripts in sequential order to export MongoDB data and load it into Elasticsearch: `s1-export-mongo-data.sh`, `s2-preprocess-mongo-data.sh`, `s3-index-elasticsearch.sh` 
`s4-es-query.py` can be used to run queries on Elasticsearch.

## Documentation

- [Mongoexport](https://docs.mongodb.com/manual/reference/program/mongoexport/)
- [Elasticsearch Reference](https://www.elastic.co/guide/en/elasticsearch/reference/index.html)
- [Python elasticsearch client](https://elasticsearch-py.readthedocs.io)



