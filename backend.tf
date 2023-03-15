### Backend ###
# S3
###############

terraform {
  backend "s3" {
    bucket = "khatrig-githubaction"
    key = "lambda-without-layer.tfstate"
    region = "us-east-1"
  }
}
