rm -f s3bucket.zip 

zip s3bucket.zip s3bucket.py config.json

aws lambda update-function-code --function-name s3bucket --zip-file fileb://s3bucket.zip