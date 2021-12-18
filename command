aws lambda create-function --function-name s3bucket --runtime python3.7 --zip-file fileb://s3bucket.zip --handler s3bucket.handler --role <Lambda Role>

aws lambda update-function-configuration  --function-name s3bucket --timeout 15

aws lambda invoke --function-name s3bucket --invocation-type RequestResponse outputfile.txt

aws lambda publish-version --function-name s3bucket

aws lambda update-function-code --function-name s3bucket --zip-file fileb://s3bucket.zip

aws lambda create-alias --function-name s3bucket --description "Lambda to S3 bucket" --function-version 1 --name DEV

aws lambda delete-alias --function-name s3bucket --name DEV

aws lambda delete-function --function-name s3bucket
