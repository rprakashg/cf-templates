# Overview
Cloudformation template that can be used to provision Kinesis firehose that delivers payload ingested into an AWS S3 bucket. Template will provision a firehose delivery stream, S3 bucket, KMS key for encrypting payload as well as an IAM role for firehose

## Template Parameters
Name                        | Purpose
------------                | ------------------------------------
StreamName                  | Name of Kinesis firehose delivery stream for events
S3BucketName                | AWS S3 bucket name for storing events
CompressionFormat           | Compression format to be used. Allowed Values "GZIP", "UNCOMPRESSED", "ZIP","Snappy". Default is "GZIP"
IAMRoleName                 | IAM Role to be associated with the Kinesis firehose delivery stream
KMSKeyAlias                 | Alias to be used for KMS Key
KMSAdminUser                | KMS Admin user principal, this user will be able to administer the KMS key created.
CloudWatchLogsRetention     | Number of days cloud watch logs should be retained
CloudWatchLogStreamName     | Cloud watch log stream to create

## Launch Stack

### Using AWS CLI
To create the stack using AWS CLI simply run the provision.sh from a terminal window. Default parameter values as well as stack name are stored in template.parameters.json. Please change the values in JSON accordingly to meet your needs.

```
./create-stack.sh
```

## Delete Stack
Simply run teardown.sh script to delete the stack along with resources

```
./delete-stack.sh
```


