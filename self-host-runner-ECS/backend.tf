terraform {
  backend "s3" {
    bucket         = "Aft-github-runner-state-bucket1"
    region         = "ca-central-1"
    key            =  "infra/aft/github-runner"
    dynamodb_table = "bharath-runner-file-state-dynamo1"
    encrypt        = true
    # access_key = "AKIAYIR3MAAI6CQG4HWY"
    # secret_key = "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"
  }
}


