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
resource "azurerm_resource_group" "rgthree" {
  name     = "CIF-CONV-RT"
  location = "West Europe"
}

resource "azurerm_resource_group" "rgfour" {
  name     = "CIF-CONV-RF"
  location = "West Europe"
}
resource "azurerm_resource_group" "rgfive" {
  name     = "CIF-CONV-HOMOLOG"
  location = "West Europe"
}
resource "azurerm_resource_group" "rgsix" {
  name     = "CIF-ISLAM-COFFRE"
  location = "West Europe"
}
resource "azurerm_resource_group" "rgseven" {
  name     = "CIF-ISLAM-TU"
  location = "West Europe"
}
resource "azurerm_resource_group" "rgeight {
  name     = "CIF-ISLAM-HOMOLOG"
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
resource "azurerm_virtual_network" "rgthree" {
  name                = "${var.prefix}-network"
  address_space       = ["172.16.0.0/16"]
  location            = "${azurerm_resource_group.rgthree.location}"
  resource_group_name = "${azurerm_resource_group.rgthree.name}"
  
}
resource "azurerm_subnet" "mgmt" {
  name                 = "internal"
  resource_group_name  = "${azurerm_resource_group.rgthree.name}"
  virtual_network_name = "${azurerm_virtual_network.rgthree.name}"
  address_prefix       = "172.16.30.0/24"
}
resource "azurerm_virtual_network" "rgfour" {
  name                = "${var.prefix}-network"
  address_space       = ["172.16.0.0/16"]
  location            = "${azurerm_resource_group.rgfour.location}"
  resource_group_name = "${azurerm_resource_group.rgfour.name}"
  
}
resource "azurerm_subnet" "mgmt" {
  name                 = "internal"
  resource_group_name  = "${azurerm_resource_group.rgfour.name}"
  virtual_network_name = "${azurerm_virtual_network.rgfour.name}"
  address_prefix       = "172.16.40.0/24"
}
resource "azurerm_virtual_network" "rgfive" {
  name                = "${var.prefix}-network"
  address_space       = ["172.16.0.0/16"]
  location            = "${azurerm_resource_group.rgfive.location}"
  resource_group_name = "${azurerm_resource_group.rgfive.name}"
  
}
resource "azurerm_subnet" "mgmt" {
  name                 = "internal"
  resource_group_name  = "${azurerm_resource_group.rgfive.name}"
  virtual_network_name = "${azurerm_virtual_network.rgfive.name}"
  address_prefix       = "172.16.50.0/24"
}
resource "azurerm_virtual_network" "rgsix" {
  name                = "${var.prefix}-network"
  address_space       = ["172.16.0.0/16"]
  location            = "${azurerm_resource_group.rgsix.location}"
  resource_group_name = "${azurerm_resource_group.rgsix.name}"
  
}
resource "azurerm_subnet" "mgmt" {
  name                 = "internal"
  resource_group_name  = "${azurerm_resource_group.rgsix.name}"
  virtual_network_name = "${azurerm_virtual_network.rgsix.name}"
  address_prefix       = "172.16.60.0/24"
}resource "azurerm_virtual_network" "rgseven" {
  name                = "${var.prefix}-network"
  address_space       = ["172.16.0.0/16"]
  location            = "${azurerm_resource_group.rgseven.location}"
  resource_group_name = "${azurerm_resource_group.rgseven.name}"
  
}
resource "azurerm_subnet" "mgmt" {
  name                 = "internal"
  resource_group_name  = "${azurerm_resource_group.rgseven.name}"
  virtual_network_name = "${azurerm_virtual_network.rgseven.name}"
  address_prefix       = "172.16.70.0/24"
}
resource "azurerm_virtual_network" "rgeight" {
  name                = "${var.prefix}-network"
  address_space       = ["172.16.0.0/16"]
  location            = "${azurerm_resource_group.rgeight.location}"
  resource_group_name = "${azurerm_resource_group.rgeight.name}"
  
}
resource "azurerm_subnet" "mgmt" {
  name                 = "internal"
  resource_group_name  = "${azurerm_resource_group.rgeight.name}"
  virtual_network_name = "${azurerm_virtual_network.rgeight.name}"
  address_prefix       = "172.16.80.0/24"
}

