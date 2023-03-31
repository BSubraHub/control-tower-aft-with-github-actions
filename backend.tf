terraform {
  backend "s3" {
    bucket         = "control-tower-infra-bucket"
    region         = "ca-central-1"
    key            =  "infra/control/infra-ct1"
    dynamodb_table = "control-tower-dynamo-backend"
    encrypt        = true
  }
}


