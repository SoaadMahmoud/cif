resource "azurerm_virtual_machine" "BDD_Coffre" {
  name                  = "vmone"
  location              = "${azurerm_resource_group.rgone.location}"
  resource_group_name   = "${azurerm_resource_group.rgone.name}"
  network_interface_ids = ["${azurerm_network_interface.BDD_Coffre-nic1.id}"]
  vm_size               = "Standard_D2_v2"
  
  storage_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "7.2"
    version   = "latest"

  }
  storage_os_disk {
    name              = "BDD_Coffre-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "StandardSSD_LRS"
  }
  os_profile {
    computer_name  = "BDD_Coffre"
    admin_username = "c9admin"
    admin_password = "C9superC0mpl3x"
  }
  os_profile_linux_config {
    disable_password_authentication = false
    ssh_keys {
      path     = "/home/c9admin/.ssh/authorized_keys"
      key_data = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBlS0XJITBaLXiN3UTiKlMPjY9i/fOOpb3TEnIs+M4oI kim0@Kamal-MBP-7.local"
    }
  }

}

resource "azurerm_network_interface" "BDD_Coffre-nic1" {
  name                = "BDD_Coffre-nic1"
  location            = "${azurerm_resource_group.rgone.location}"
  resource_group_name = "${azurerm_resource_group.rgone.name}"

  ip_configuration {
    name                          = "BDD_Coffreipcfg1"
    subnet_id                     = "${azurerm_subnet.mgmt.id}"
    private_ip_address_allocation = "dynamic"
  }
}


resource "azurerm_managed_disk" "BDD_Coffre-disk1" {
  name                 = "BDD_Coffre-disk1"
  location             = "${azurerm_resource_group.rgone.location}"
  resource_group_name  = "${azurerm_resource_group.rgone.name}"
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 10
}

resource "azurerm_virtual_machine_data_disk_attachment" "BDD_Coffre-disk1" {
  managed_disk_id    = "${azurerm_managed_disk.BDD_Coffre-disk1.id}"
  virtual_machine_id = "${azurerm_virtual_machine.BDD_Coffre.id}"
  lun                = "1"
  caching            = "ReadWrite"
}


resource "azurerm_managed_disk" "BDD_Coffre-disk2" {
  name                 = "vmone-disk2"
  location             = "${azurerm_resource_group.rgone.location}"
  resource_group_name  = "${azurerm_resource_group.rgone.name}"
  storage_account_type = "StandardSSD_LRS"
  create_option        = "Empty"
  disk_size_gb         = 20
}

resource "azurerm_virtual_machine_data_disk_attachment" "BDD_Coffre-disk2" {
  managed_disk_id    = "${azurerm_managed_disk.BDD_Coffre-disk2.id}"
  virtual_machine_id = "${azurerm_virtual_machine.BDD_Coffre.id}"
  lun                = "2"
  caching            = "ReadWrite"
}


resource "azurerm_virtual_machine" "CoreBanking_Coffre" {
  name                  = "CoreBanking_Coffre"
  location              = "${azurerm_resource_group.rgone.location}"
  resource_group_name   = "${azurerm_resource_group.rgone.name}"
  network_interface_ids = ["${azurerm_network_interface.CoreBanking_Coffre-nic1.id}"]
  vm_size               = "Standard_D2_v2"
  
  storage_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "7.2"
    version   = "latest"

  }
  storage_os_disk {
    name              = "CoreBanking_Coffre-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "StandardSSD_LRS"
  }
  os_profile {
    computer_name  = "CoreBanking_Coffre"
    admin_username = "c9admin"
    admin_password = "C9superC0mpl3x"
  }
  os_profile_linux_config {
    disable_password_authentication = false
    ssh_keys {
      path     = "/home/c9admin/.ssh/authorized_keys"
      key_data = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBlS0XJITBaLXiN3UTiKlMPjY9i/fOOpb3TEnIs+M4oI kim0@Kamal-MBP-7.local"
    }
  }

}

resource "azurerm_network_interface" "CoreBanking_Coffre-nic1" {
  name                = "CoreBanking_Coffre-nic1"
  location            = "${azurerm_resource_group.rgone.location}"
  resource_group_name = "${azurerm_resource_group.rgone.name}"

  ip_configuration {
    name                          = "CoreBanking_Coffreipcfg1"
    subnet_id                     = "${azurerm_subnet.mgmt.id}"
    private_ip_address_allocation = "dynamic"
  }
}


resource "azurerm_managed_disk" "CoreBanking_Coffre-disk1" {
  name                 = "CoreBanking_Coffre-disk1"
  location             = "${azurerm_resource_group.rgone.location}"
  resource_group_name  = "${azurerm_resource_group.rgone.name}"
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 30
}

resource "azurerm_virtual_machine_data_disk_attachment" "CoreBanking_Coffre-disk1" {
  managed_disk_id    = "${azurerm_managed_disk.CoreBanking_Coffre-disk1.id}"
  virtual_machine_id = "${azurerm_virtual_machine.CoreBanking_Coffre.id}"
  lun                = "1"
  caching            = "ReadWrite"
}
resource "azurerm_virtual_machine" "X3S_Coffre" {
  name                  = "X3S_Coffre"
  location              = "${azurerm_resource_group.rgone.location}"
  resource_group_name   = "${azurerm_resource_group.rgone.name}"
  network_interface_ids = ["${azurerm_network_interface.X3S_Coffre-nic1.id}"]
  vm_size               = "Standard_D2_v2"
  
  storage_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "7.2"
    version   = "latest"

  }
  storage_os_disk {
    name              = "X3S_Coffre-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "StandardSSD_LRS"
  }
  os_profile {
    computer_name  = "X3S_Coffre"
    admin_username = "c9admin"
    admin_password = "C9superC0mpl3x"
  }
  os_profile_linux_config {
    disable_password_authentication = false
    ssh_keys {
      path     = "/home/c9admin/.ssh/authorized_keys"
      key_data = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBlS0XJITBaLXiN3UTiKlMPjY9i/fOOpb3TEnIs+M4oI kim0@Kamal-MBP-7.local"
    }
  }

}

resource "azurerm_network_interface" "X3S_Coffre-nic1" {
  name                = "X3S_Coffre-nic1"
  location            = "${azurerm_resource_group.rgone.location}"
  resource_group_name = "${azurerm_resource_group.rgone.name}"

  ip_configuration {
    name                          = "X3S_Coffreipcfg1"
    subnet_id                     = "${azurerm_subnet.mgmt.id}"
    private_ip_address_allocation = "dynamic"
  }
}


resource "azurerm_managed_disk" "X3S_Coffre-disk1" {
  name                 = "X3S_Coffre-disk1"
  location             = "${azurerm_resource_group.rgone.location}"
  resource_group_name  = "${azurerm_resource_group.rgone.name}"
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 10
}

resource "azurerm_virtual_machine_data_disk_attachment" "X3S_Coffre-disk1" {
  managed_disk_id    = "${azurerm_managed_disk.X3S_Coffre-disk1.id}"
  virtual_machine_id = "${azurerm_virtual_machine.X3S_Coffre.id}"
  lun                = "1"
  caching            = "ReadWrite"
}


resource "azurerm_managed_disk" "X3S_Coffre-disk2" {
  name                 = "X3S_Coffre-disk2"
  location             = "${azurerm_resource_group.rgone.location}"
  resource_group_name  = "${azurerm_resource_group.rgone.name}"
  storage_account_type = "StandardSSD_LRS"
  create_option        = "Empty"
  disk_size_gb         = 20
}

resource "azurerm_virtual_machine_data_disk_attachment" "X3S_Coffre-disk2" {
  managed_disk_id    = "${azurerm_managed_disk.X3S_Coffre-disk2.id}"
  virtual_machine_id = "${azurerm_virtual_machine.X3S_Coffre.id}"
  lun                = "2"
  caching            = "ReadWrite"
}

resource "azurerm_virtual_machine" "X3_Coffre" {
  name                  = "X3_Coffre"
  location              = "${azurerm_resource_group.rgone.location}"
  resource_group_name   = "${azurerm_resource_group.rgone.name}"
  network_interface_ids = ["${azurerm_network_interface.X3_Coffre-nic1.id}"]
  vm_size               = "Standard_D2_v2"
  
  storage_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "7.2"
    version   = "latest"

  }
  storage_os_disk {
    name              = "X3_Coffre-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "StandardSSD_LRS"
  }
  os_profile {
    computer_name  = "X3_Coffre"
    admin_username = "c9admin"
    admin_password = "C9superC0mpl3x"
  }
  os_profile_linux_config {
    disable_password_authentication = false
    ssh_keys {
      path     = "/home/c9admin/.ssh/authorized_keys"
      key_data = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBlS0XJITBaLXiN3UTiKlMPjY9i/fOOpb3TEnIs+M4oI kim0@Kamal-MBP-7.local"
    }
  }

}

resource "azurerm_network_interface" "X3_Coffre-nic1" {
  name                = "X3_Coffre-nic1"
  location            = "${azurerm_resource_group.rgone.location}"
  resource_group_name = "${azurerm_resource_group.rgone.name}"

  ip_configuration {
    name                          = "X3_Coffreipcfg1"
    subnet_id                     = "${azurerm_subnet.mgmt.id}"
    private_ip_address_allocation = "dynamic"
  }
}


resource "azurerm_managed_disk" "X3_Coffre-disk1" {
  name                 = "X3_Coffre-disk1"
  location             = "${azurerm_resource_group.rgone.location}"
  resource_group_name  = "${azurerm_resource_group.rgone.name}"
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 10
}

resource "azurerm_virtual_machine_data_disk_attachment" "X3_Coffre-disk1" {
  managed_disk_id    = "${azurerm_managed_disk.X3_Coffre-disk1.id}"
  virtual_machine_id = "${azurerm_virtual_machine.X3_Coffre.id}"
  lun                = "1"
  caching            = "ReadWrite"
}


resource "azurerm_managed_disk" "X3_Coffre-disk2" {
  name                 = "X3_Coffre-disk2"
  location             = "${azurerm_resource_group.rgone.location}"
  resource_group_name  = "${azurerm_resource_group.rgone.name}"
  storage_account_type = "StandardSSD_LRS"
  create_option        = "Empty"
  disk_size_gb         = 20
}

resource "azurerm_virtual_machine_data_disk_attachment" "X3_Coffre-disk2" {
  managed_disk_id    = "${azurerm_managed_disk.X3_Coffre-disk2.id}"
  virtual_machine_id = "${azurerm_virtual_machine.X3_Coffre.id}"
  lun                = "2"
  caching            = "ReadWrite"
}
resource "azurerm_virtual_machine" "BPM_Coffre" {
  name                  = "BPM_Coffre"
  location              = "${azurerm_resource_group.rgone.location}"
  resource_group_name   = "${azurerm_resource_group.rgone.name}"
  network_interface_ids = ["${azurerm_network_interface.BPM_Coffre-nic1.id}"]
  vm_size               = "Standard_D2_v2"
  
  storage_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "7.2"
    version   = "latest"

  }
  storage_os_disk {
    name              = "BPM_Coffre-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "StandardSSD_LRS"
  }
  os_profile {
    computer_name  = "BPM_Coffre"
    admin_username = "c9admin"
    admin_password = "C9superC0mpl3x"
  }
  os_profile_linux_config {
    disable_password_authentication = false
    ssh_keys {
      path     = "/home/c9admin/.ssh/authorized_keys"
      key_data = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBlS0XJITBaLXiN3UTiKlMPjY9i/fOOpb3TEnIs+M4oI kim0@Kamal-MBP-7.local"
    }
  }

}

resource "azurerm_network_interface" "BPM_Coffre-nic1" {
  name                = "BPM_Coffre-nic1"
  location            = "${azurerm_resource_group.rgone.location}"
  resource_group_name = "${azurerm_resource_group.rgone.name}"

  ip_configuration {
    name                          = "BPM_Coffreipcfg1"
    subnet_id                     = "${azurerm_subnet.mgmt.id}"
    private_ip_address_allocation = "dynamic"
  }
}


resource "azurerm_managed_disk" "BPM_Coffre-disk1" {
  name                 = "BPM_Coffre-disk1"
  location             = "${azurerm_resource_group.rgone.location}"
  resource_group_name  = "${azurerm_resource_group.rgone.name}"
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 10
}

resource "azurerm_virtual_machine_data_disk_attachment" "BPM_Coffre-disk1" {
  managed_disk_id    = "${azurerm_managed_disk.BPM_Coffre-disk1.id}"
  virtual_machine_id = "${azurerm_virtual_machine.BPM_Coffre.id}"
  lun                = "1"
  caching            = "ReadWrite"
}


resource "azurerm_managed_disk" "BPM_Coffre-disk2" {
  name                 = "BPM_Coffre-disk2"
  location             = "${azurerm_resource_group.rgone.location}"
  resource_group_name  = "${azurerm_resource_group.rgone.name}"
  storage_account_type = "StandardSSD_LRS"
  create_option        = "Empty"
  disk_size_gb         = 20
}

resource "azurerm_virtual_machine_data_disk_attachment" "BPM_Coffre-disk2" {
  managed_disk_id    = "${azurerm_managed_disk.BPM_Coffre-disk2.id}"
  virtual_machine_id = "${azurerm_virtual_machine.BPM_Coffre.id}"
  lun                = "2"
  caching            = "ReadWrite"
}
resource "azurerm_virtual_machine" "SDE_Coffre" {
  name                  = "SDE_Coffre"
  location              = "${azurerm_resource_group.rgone.location}"
  resource_group_name   = "${azurerm_resource_group.rgone.name}"
  network_interface_ids = ["${azurerm_network_interface.SDE_Coffre-nic1.id}"]
  vm_size               = "Standard_D2_v2"
  
  storage_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "7.2"
    version   = "latest"

  }
  storage_os_disk {
    name              = "SDE_Coffre-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "StandardSSD_LRS"
  }
  os_profile {
    computer_name  = "SDE_Coffre"
    admin_username = "c9admin"
    admin_password = "C9superC0mpl3x"
  }
  os_profile_linux_config {
    disable_password_authentication = false
    ssh_keys {
      path     = "/home/c9admin/.ssh/authorized_keys"
      key_data = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBlS0XJITBaLXiN3UTiKlMPjY9i/fOOpb3TEnIs+M4oI kim0@Kamal-MBP-7.local"
    }
  }

}

resource "azurerm_network_interface" "SDE_Coffre-nic1" {
  name                = "BPM_Coffre-nic1"
  location            = "${azurerm_resource_group.rgone.location}"
  resource_group_name = "${azurerm_resource_group.rgone.name}"

  ip_configuration {
    name                          = "SDE_Coffreipcfg1"
    subnet_id                     = "${azurerm_subnet.mgmt.id}"
    private_ip_address_allocation = "dynamic"
  }
}


resource "azurerm_managed_disk" "SDE_Coffre-disk1" {
  name                 = "SDE_Coffre-disk1"
  location             = "${azurerm_resource_group.rgone.location}"
  resource_group_name  = "${azurerm_resource_group.rgone.name}"
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 10
}

resource "azurerm_virtual_machine_data_disk_attachment" "SDE_Coffre-disk1" {
  managed_disk_id    = "${azurerm_managed_disk.SDE_Coffre-disk1.id}"
  virtual_machine_id = "${azurerm_virtual_machine.SDE_Coffre.id}"
  lun                = "1"
  caching            = "ReadWrite"
}


resource "azurerm_managed_disk" "SDE_Coffre-disk2" {
  name                 = "HTTP_Coffre-disk2"
  location             = "${azurerm_resource_group.rgone.location}"
  resource_group_name  = "${azurerm_resource_group.rgone.name}"
  storage_account_type = "StandardSSD_LRS"
  create_option        = "Empty"
  disk_size_gb         = 20
}

resource "azurerm_virtual_machine_data_disk_attachment" "SDE_Coffre-disk2" {
  managed_disk_id    = "${azurerm_managed_disk.HTTP_Coffre-disk2.id}"
  virtual_machine_id = "${azurerm_virtual_machine.HTTP_Coffre.id}"
  lun                = "2"
  caching            = "ReadWrite"
}
resource "azurerm_virtual_machine" "HTTP_Coffre" {
  name                  = "HTTP_Coffre"
  location              = "${azurerm_resource_group.rgone.location}"
  resource_group_name   = "${azurerm_resource_group.rgone.name}"
  network_interface_ids = ["${azurerm_network_interface.HTTP_Coffre-nic1.id}"]
  vm_size               = "Standard_D2_v2"
  
  storage_image_reference {
    publisher = "RedHat"
    offer     = "RHEL"
    sku       = "7.2"
    version   = "latest"

  }
  storage_os_disk {
    name              = "HTTP_Coffre-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "StandardSSD_LRS"
  }
  os_profile {
    computer_name  = "HTTP_Coffre"
    admin_username = "c9admin"
    admin_password = "C9superC0mpl3x"
  }
  os_profile_linux_config {
    disable_password_authentication = false
    ssh_keys {
      path     = "/home/c9admin/.ssh/authorized_keys"
      key_data = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBlS0XJITBaLXiN3UTiKlMPjY9i/fOOpb3TEnIs+M4oI kim0@Kamal-MBP-7.local"
    }
  }

}

resource "azurerm_network_interface" "HTTP_Coffre-nic1" {
  name                = "HTTP_Coffre-nic1"
  location            = "${azurerm_resource_group.rgone.location}"
  resource_group_name = "${azurerm_resource_group.rgone.name}"

  ip_configuration {
    name                          = "HTTP_Coffreipcfg1"
    subnet_id                     = "${azurerm_subnet.mgmt.id}"
    private_ip_address_allocation = "dynamic"
  }
}


resource "azurerm_managed_disk" "HTTP_Coffre-disk1" {
  name                 = "HTTP_Coffre-disk1"
  location             = "${azurerm_resource_group.rgone.location}"
  resource_group_name  = "${azurerm_resource_group.rgone.name}"
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 10
}

resource "azurerm_virtual_machine_data_disk_attachment" "HTTP_Coffre-disk1" {
  managed_disk_id    = "${azurerm_managed_disk.HTTP_Coffre-disk1.id}"
  virtual_machine_id = "${azurerm_virtual_machine.HTTP_Coffre.id}"
  lun                = "1"
  caching            = "ReadWrite"
}


resource "azurerm_managed_disk" "HTTP_Coffre-disk2" {
  name                 = "HTTP_Coffre-disk2"
  location             = "${azurerm_resource_group.rgone.location}"
  resource_group_name  = "${azurerm_resource_group.rgone.name}"
  storage_account_type = "StandardSSD_LRS"
  create_option        = "Empty"
  disk_size_gb         = 20
}

resource "azurerm_virtual_machine_data_disk_attachment" "HTTP_Coffre-disk2" {
  managed_disk_id    = "${azurerm_managed_disk.HTTP_Coffre-disk2.id}"
  virtual_machine_id = "${azurerm_virtual_machine.HTTP_Coffre.id}"
  lun                = "2"
  caching            = "ReadWrite"
}



