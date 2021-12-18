rm -f s3bucket.zip 

zip s3bucket.zip s3bucket.py config.json

aws lambda create-function --function-name s3bucket --runtime python3.7 --zip-file fileb://s3bucket.zip --handler s3bucket.handler --role <Lambda Role>

aws lambda update-function-configuration  --function-name s3bucket --timeout 15