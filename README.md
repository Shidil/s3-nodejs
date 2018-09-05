Based on abesiyo/s3/

## Usage
```docker run -ti -e "AWS_ACCESS_KEY_ID=<Access key>" -e "AWS_SECRET_ACCESS_KEY=<Secret Key>" -v local directory:mount path shidil/s3-nodejs:latest s3 --region <region of aws> <command>```

## List of commands

*List buckets:*
`s3 ls`

*List keys in a bucket under a prefix:*
`s3 ls s3://bucket/prefix`

*Download all the contents (recursively) under the path to local:*
`s3 get s3://bucket/path

*Cat (stream to stdout) all the contents under the path:*
`s3 cat s3://bucket/path | grep needle`

*Synchronise localpath to an s3 bucket:*
`s3 sync localpath s3://bucket/path`

*Synchronise an s3 bucket to localpath:*
`s3 sync s3://bucket/path localpath`

*Synchronise an s3 bucket to another s3 bucket:*
`s3 sync s3://bucket1/path s3://bucket2/otherpath`

*Recursively remove all keys under a path:*
`s3 rm s3://bucket/path`

*Create a bucket:*
`s3 mb bucket`

*Delete a bucket:*
`s3 rb bucket`

For more info: https://github.com/barnybug/s3

## Usage example
```docker run -ti -e "AWS_ACCESS_KEY_ID=XXXXXXXXXXXXXXXXXXXX" -e "AWS_SECRET_ACCESS_KEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" -v $(pwd):/var/www/backup abesiyo/s3:1.4.4 s3 --region "eu-central-1" sync  s3://XXXXXX-XXXXXXXXX-backups/XXXXXX-dump-20160714114446.sql.gz /var/www/backup/.```