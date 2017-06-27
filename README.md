# mongo2elasticsearch

Load MongoDB data into Elasticsearch.

## Directory

```
$ tree
.
├── README.md
└── bash
    ├── s1-export-mongo.sh
    ├── s2-preprocess-mongo-data.sh
    └── s3-index-elasticsearch.sh
```

## Dependencies

```
bash
    ├── s1-export-mongo.sh              <-- mongoexport
    ├── s2-preprocess-mongo-data.sh     <-- sed, gsed
    └── s3-index-elasticsearch.sh       <-- curl
```


## Workflow

Run scripts in sequential order: `s1-export-mongo-data.sh`, `s2-preprocess-mongo-data.sh`, `s3-index-elasticsearch.sh` 



