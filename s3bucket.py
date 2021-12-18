import logging
import boto3
import json
from botocore.exceptions import ClientError

with open('config.json', 'r') as f:
    config = json.load(f)

BUCKET_NAME = config['BUCKET_NAME']
REGION = config['REGION']


def handler(event, context):
    s3 = boto3.resource('s3', region_name=REGION)
    s3.create_bucket(Bucket=BUCKET_NAME)
    content = "File uploaded by version 1"
    response = s3.Object(BUCKET_NAME, 'version1.txt').put(Body=content)
    print("uploading file completed")
