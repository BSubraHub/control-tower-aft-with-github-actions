terraform {
  backend "s3" {
    bucket         = "control-tower-infra-bucket1"
    region         = "ca-central-1"
    key            =  "infra/control/infra-control-tower"
    dynamodb_table = "control-tower-manage-dynamo-backend1"
    encrypt        = true
    # access_key = "AKIAYIR3MAAI6CQG4HWY"
    # secret_key = "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"
  }
}


