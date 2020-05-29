module "compartment"{
    source = "git://github.com/skuehnlein/oci_terraform_moduls.git//compartment"

    tenancy_OCID = var.tenancy_OCID
    compartments = var.compartments
    #compartment_policies = var.compartment_policies
}