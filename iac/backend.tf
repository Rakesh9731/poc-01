terraform {
backend "s3" {
bucket = "tf-state-yourorg-prod"
key = "infra-bot/global/terraform.tfstate"
region = "ap-south-1"
dynamodb_table = "tf-state-locks-yourorg"
encrypt = true
}
}
