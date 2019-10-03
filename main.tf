/*
provider "azurerm" {
  # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
  version = "=1.34.0"

  subscription_id             = "${var.azure_subscription_id}"
  client_id                   = "${var.azure_client_id}"
  client_certificate_path     = "${var.azure_certificate_path}"
  client_certificate_password = "${var.azure_certificate_password}"
  tenant_id                   = "${var.azure_tenant_id}"
}

*/


resource "azurerm_resource_group" "test" {
  name     = "testResourceGroup1usingTerraform"
  location = "West US"

  tags = {
    environment = "Production"
  }
}


/*
resource "azurerm_resource_group" "preprod" {
  name     = "EBI_SCO_RCG_DATA_CONSUMPTION"
  location = "South Central US"
}

resource "azurerm_sql_server" "test" {
  name                         = "mysqlserver"
  resource_group_name          = "${azurerm_resource_group.test.name}"
  location                     = "West US"
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

resource "azurerm_sql_database" "test" {
  name                = "mysqldatabase"
  resource_group_name = "${azurerm_resource_group.test.name}"
  location            = "West US"
  server_name         = "${azurerm_sql_server.test.name}"

  tags = {
    environment = "production"
  }
}
*/