terraform {
  backend "s3" {
    bucket         = "control-tower-infra-bucket"
    region         = "ca-central-1"
    key            =  "infra/control/infra-ct2"
    dynamodb_table = "control-tower-dynamo-backend"
    encrypt        = true
    access_key = "AKIAYIR3MAAI6CQG4HWY"
    secret_key = "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"
  }
}


