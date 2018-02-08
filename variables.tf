
variable "name" {}

variable "rsa_bits" {
  default = 4096
}

variable "subject_common_name" {
  default = "example.com"
}

variable "subject_organization" {
  default = "ACME Examples, Inc"
}

variable "validity_period_hours" {
  default = 17520
}

resource "tls_private_key" "private_key" {
  algorithm = "RSA"
  rsa_bits  = "${var.rsa_bits}"
}
