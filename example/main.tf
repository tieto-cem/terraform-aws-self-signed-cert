
provider "aws" {
  region = "eu-west-1"
}

module "self_signed_cert" {
  source = ".."
  name = "myapp-cert"
}