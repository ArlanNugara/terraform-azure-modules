// Key Vault Certificate

resource "azurerm_key_vault_certificate" "cert" {
  name         = var.kv_cert_name
  key_vault_id = var.kv_id
  tags         = var.kv_cert_tags

  certificate_policy {
    issuer_parameters {
      name = var.kv_cert_issuer_name
    }

    key_properties {
      exportable = true
      key_size   = 2048
      key_type   = "RSA"
      reuse_key  = true
    }

    lifetime_action {
      action {
        action_type = "AutoRenew"
      }

      trigger {
        days_before_expiry = 30
      }
    }

    secret_properties {
      content_type = "application/x-pem-file"
    }

    x509_certificate_properties {
      extended_key_usage = ["1.3.6.1.5.5.7.3.1"]

      key_usage = [
        "cRLSign",
        "dataEncipherment",
        "digitalSignature",
        "keyAgreement",
        "keyCertSign",
        "keyEncipherment",
      ]

      subject            = var.kv_cert_subject
      validity_in_months = var.kv_cert_vailidity_month
    }
  }
}