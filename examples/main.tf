module "tls" {
  source   = "../"
  domain   = "company.com"
  hostname = "tfe.company.com"
}

output "test" {
  value     = module.tls
  sensitive = true
}

resource "local_file" "ca" {
  filename = "./keys/ca.cert"
  content  = module.tls.ca.pem
}

resource "local_file" "ca-key" {
  filename = "./keys/ca.key"
  content  = module.tls.ca.key
}

resource "local_file" "cert" {
  filename = "./keys/certificate.cert"
  content  = module.tls.cert.pem
}

resource "local_file" "cert-key" {
  filename = "./keys/certificate.key"
  content  = module.tls.cert.key
}

resource "local_file" "cert-fullchain" {
  filename = "./keys/cert-fullchain.cert"
  content  = module.tls.cert.full_chain
}
