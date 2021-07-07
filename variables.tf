# Optional
variable "ca_organization" {
  description = "Certificate Authority Organization Name"
  default     = "HashiCorp (NonTrusted)"
}

variable "ca_common_name" {
  description = "Certificate Authority Common Name"
  default     = "HashiCorp (NonTrusted) Private Certificate Authority"
}

variable "ca_country_code" {
  description = "Certificate Authority County Code (2 characters)"
  default     = "US"
}

variable "certificate_duration" {
  description = "Length in hours for the certificate and authority to be valid. Defaults to 6 months."
  default     = 24 * 30 * 6
}

# Required
variable "domain" {
  description = "The domain you wish to use, this will be subdomained. `example.com`"
}

variable "hostname" {
  description = "The full hostname that will be used. `tfe.example.com`"
}
