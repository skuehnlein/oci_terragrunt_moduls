output "security_list_OCID" {
    description = "The OCID of the created Security List"
    value = module.security_list.security_list_OCID
}

output "subnet_OCID" {
    description = "The OCID of the created Subnet"
    value = module.subnet.subnet_OCID
}