terraform {
  backend "s3" {
    bucket         = "bh-infra-state-bucket"
    region         = "ca-central-1"
    key            =  "infra/control/bh-infra-ct"
    dynamodb_table = "bh-infra-file-state-dynamo"
    encrypt        = true
  }
}


