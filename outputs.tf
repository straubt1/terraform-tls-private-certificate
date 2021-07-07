output "ca" {
  value = {
    pem = tls_self_signed_cert.ca.cert_pem
    key = tls_private_key.ca.private_key_pem
  }
}

output "cert" {
  value = {
    pem        = tls_locally_signed_cert.cert.cert_pem
    key        = tls_private_key.cert.private_key_pem
    full_chain = "${tls_locally_signed_cert.cert.cert_pem}\n${tls_self_signed_cert.ca.cert_pem}"
  }
}
