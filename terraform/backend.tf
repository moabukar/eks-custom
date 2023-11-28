terraform {
  backend "s3" {
    bucket = "mo-remote-state"
    region = "us-west-2"
    key    = "terraform/terraform.tfstate"
  }
}
