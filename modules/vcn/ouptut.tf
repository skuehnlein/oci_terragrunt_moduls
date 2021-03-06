output "vcn_OCID" {
    description = "OCID of the created VCN"
    value = module.vcn.vcn_OCID
}

output "nat_gateway_OCID" {
    description = "OCID of the created NAT Gateway"
    value = module.vcn.nat_gateway_OCID
} 

output "nat_gateway_IP" {
    description = "IP address of the NAT Gateway"
    value = module.vcn.nat_gateway_IP
}

output "internet_gateway_OCID" {
    description = "OCID of the created Internet Gateway"
    value = module.vcn.internet_gateway_OCID
} 

output "dynamic_routing_gateway_OCID" {
    description = "OCID of the created Dynamic Routing Gateway"
    value = module.vcn.dynamic_routing_gateway_OCID
} 


