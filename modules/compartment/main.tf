module "top_level_comp" {
    source = "git://github.com/skuehnlein/oci_terraform_moduls.git//compartment"

    tenancy_OCID = var.tenancy_OCID
    compartments = var.top_level_compartments
    is_top_level_compartemt = true
}

module "2nd_level_comp" {
    source = "git://github.com/skuehnlein/oci_terraform_moduls.git//compartment"
    
    tenancy_OCID = var.tenancy_OCID
    compartments = var.second_level_compartments
    is_top_level_compartemt = false
}