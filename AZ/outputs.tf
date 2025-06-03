output "vm_name" {
  description = "Name of the virtual machine"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "vm_private_ip" {
  description = "Private IP address of the VM"
  value       = azurerm_network_interface.nic.ip_configuration[0].private_ip_address
}

output "resource_group_name" {
  description = "Resource Group where resources are deployed"
  value       = azurerm_resource_group.rg.name
}
