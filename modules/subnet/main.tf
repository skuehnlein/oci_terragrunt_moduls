module "security_list" {
    source = "git://github.com/skuehnlein/oci_terraform_moduls.git//security_list"
    compartment_name = var.compartment_name
    vcn_cidr = var.vcn_cidr

    display_name = var.display_name

    ingress_rules = var.ingress_rules
    engress_rules = var.engress_rules
}

#module "subnet" {
#    source = "git://github.com/skuehnlein/oci_terraform_moduls.git//subnet"

#}
