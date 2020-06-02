module "security_list" {
    source = "git://github.com/skuehnlein/oci_terraform_moduls.git//sec_list"

    tenancy_OCID = var.tenancy_OCID
    vcn_OCID = var.vcn_OCID
    compartment_name = var.compartment_name

    security_list_display_name = var.security_list_display_name

    tcp_ingress_rules = var.tcp_ingress_rules
    icmp_ingress_rules = var.icmp_ingress_rules
    udp_ingress_rules = var.udp_ingress_rules

    egress_rules = var.egress_rules
}

#module "subnet" {
#    source = "git://github.com/skuehnlein/oci_terraform_moduls.git//subnet"

#}
