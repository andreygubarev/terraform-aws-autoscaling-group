output "keypair_private_key" {
  value     = tls_private_key.this.private_key_openssh
  sensitive = true
}
