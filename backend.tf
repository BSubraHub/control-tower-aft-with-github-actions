terraform {
  backend "s3" {
    bucket         = "bh-infra-state1-bucket"
    region         = "ca-central-1"
    key            =  "infra/control/bh-infra-ct"
    dynamodb_table = "bh-infra-file-state1-dynamo1"
    encrypt        = true
  }
}


