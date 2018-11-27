variable "prefix" {
  default = "c9test"
}

resource "azurerm_resource_group" "rgone" {
  name     = "CIF-CONV-COFFRE"
  location = "West Europe"
}
resource "azurerm_resource_group" "rgtwo" {
  name     = "CIF-CONV-TU"
  location = "West Europe"
}
resource "azurerm_virtual_network" "rgone" {
  name                = "${var.prefix}-network"
  address_space       = ["172.16.0.0/16"]
  location            = "${azurerm_resource_group.rgone.location}"
  resource_group_name = "${azurerm_resource_group.rgone.name}"
}
resource "azurerm_subnet" "mgmt" {
  name                 = "internal"
  resource_group_name  = "${azurerm_resource_group.rgone.name}"
  virtual_network_name = "${azurerm_virtual_network.rgone.name}"
  address_prefix       = "172.16.10.0/24"
}

resource "azurerm_virtual_network" "rgtwo" {
  name                = "${var.prefix}-network"
  address_space       = ["172.16.0.0/16"]
  location            = "${azurerm_resource_group.rgtwo.location}"
  resource_group_name = "${azurerm_resource_group.rgtwo.name}"
  
}
resource "azurerm_subnet" "mgmt" {
  name                 = "internal"
  resource_group_name  = "${azurerm_resource_group.rgtwo.name}"
  virtual_network_name = "${azurerm_virtual_network.rgtwo.name}"
  address_prefix       = "172.16.20.0/24"
}

