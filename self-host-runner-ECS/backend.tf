terraform {
  backend "s3" {
    bucket         = "bh-github-runner-state-bucket"
    region         = "ca-central-1"
    key            =  "infra/control/bharath-github-runner"
    dynamodb_table = "bharath-runner-file-state-dynamo"
    encrypt        = true
    access_key = "AKIAYIR3MAAI6CQG4HWY"
    secret_key = "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"
  }
}


