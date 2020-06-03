module "security_list" {
    source = "git://github.com/skuehnlein/oci_terraform_moduls.git//sec_list"

    tenancy_OCID = var.tenancy_OCID
    vcn_OCID = var.vcn_OCID
    compartment_name = var.compartment_name

    security_list_display_name = var.security_list_display_name

    tcp_ingress_rules = var.tcp_ingress_rules
    icmp_ingress_rules = var.icmp_ingress_rules
    udp_ingress_rules = var.udp_ingress_rules

    tcp_egress_rules = var.tcp_egress_rules
    icmp_egress_rules = var.icmp_egress_rules
    udp_egress_rules = var.udp_egress_rules
}

module "subnet" {
    source = "git://github.com/skuehnlein/oci_terraform_moduls.git//subnet"

    tenancy_OCID = var.tenancy_OCID
    vcn_OCID = var.vcn_OCID
    compartment_name = var.compartment_name

    subnet_display_name = var.subnet_display_name
    subnet_dns_label = var.subnet_dns_label
    is_private_subnet = var.is_private_subnet
    route_table_OCID = var.route_table_OCID
    security_list_OCIDs = module.security_list.security_list_OCID
}
