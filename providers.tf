provider "azurerm" {
  # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
  version = "=1.34.0"

  subscription_id             = "${var.azure_subscription_id}"
  client_id                   = "${var.azure_client_id}"
  client_certificate_path     = "${var.azure_certificate_path}"
  client_certificate_password = "${var.azure_certificate_password}"
  tenant_id                   = "${var.azure_tenant_id}"
}