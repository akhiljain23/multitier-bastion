# Single value, pending support for multiple output values in schematics_workspace_putputs data source
output "bastion_host_ip_address" {
  value = module.bastion.bastion_ip_addresses[0]
}


# bastion security group. Add this as the remote SG to all instances that require SSH access from the bastion
output "security_group_id" {
  value = module.bastion.security_group_id
}

# Allocated bastion subnets. 
output "bastion_subnet_ids" {
  value = [module.bastion.bastion_subnet_ids]
}