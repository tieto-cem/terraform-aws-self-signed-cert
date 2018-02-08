
Terraform AWS Self-Signed IAM Server Certificate 
================================================

Terraform module for creating self-signed AWS IAM server certificate. 

Usage
-----

```hcl

provider "aws" {
  region = "eu-west-1"
}

module "self_signed_cert" {
  source = "github.com/tieto-cem/terraform-aws-self-signed-cert?ref=v0.1.0"
  name = "myapp-cert"
}

```   

Example
-------

* [Simple example](https://github.com/tieto-cem/terraform-aws-self-signed-certificate/tree/master/example)