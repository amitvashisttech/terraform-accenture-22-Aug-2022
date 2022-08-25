terraform {
  backend "s3" {
    bucket  = "aws-cicd-codepipeline-terraform"
    encrypt = true
    key     = "terraform-dev.tfstate"
    region  = "us-east-1"
  }
}
