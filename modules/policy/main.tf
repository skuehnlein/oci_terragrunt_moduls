module "comp_policy" {
    source = "git://github.com/skuehnlein/oci_terraform_moduls.git//policy"
    
    tenancy_OCID = var.tenancy_OCID
    compartment_policies = var.all_compartment_policies
}