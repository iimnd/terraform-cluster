terraform {
  backend "s3" {
    bucket = "tf-state-exercise"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}