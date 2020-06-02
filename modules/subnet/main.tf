module "security_list" {
    source = "git://github.com/skuehnlein/oci_terraform_moduls.git//sec_list"

    tenancy_OCID = var.tenancy_OCID
    vnc_OCID = var.vnc_OCID
    compartment_name = var.compartment_name

    security_list_display_name = var.security_list_display_name

    ingress_rules = var.ingress_rules
    engress_rules = var.engress_rules
}

#module "subnet" {
#    source = "git://github.com/skuehnlein/oci_terraform_moduls.git//subnet"

#}
