#!/usr/bin/env bash
set -euo pipefail
REGION="ap-south-1"
BUCKET="tf-state-yourorg-prod"
TABLE="tf-state-locks-yourorg"


aws s3 mb s3://$BUCKET --region $REGION || true
aws s3api put-bucket-versioning --bucket $BUCKET --versioning-configuration Status=Enabled
aws dynamodb create-table \
--table-name $TABLE \
--attribute-definitions AttributeName=LockID,AttributeType=S \
--key-schema AttributeName=LockID,KeyType=HASH \
--billing-mode PAY_PER_REQUEST \
--region $REGION || true
