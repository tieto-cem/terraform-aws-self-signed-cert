
resource "tls_self_signed_cert" "tls_certificate" {
  key_algorithm         = "${tls_private_key.private_key.algorithm}"
  private_key_pem       = "${tls_private_key.private_key.private_key_pem}"

  subject {
    common_name  = "${var.subject_common_name}"
    organization = "${var.subject_organization}"
  }

  validity_period_hours = "${var.validity_period_hours}"

  allowed_uses          = ["key_encipherment", "digital_signature", "server_auth"]
}

resource "aws_iam_server_certificate" "iam_certificate" {
  name             = "${var.name}"
  certificate_body = "${tls_self_signed_cert.tls_certificate.cert_pem}"
  private_key      = "${tls_private_key.private_key.private_key_pem}"
}
