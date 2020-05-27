module "iam" {
    source = "git://github.com/skuehnlein/oci_terraform_moduls.git/module//vcn"

    compartment_id = var.tenancy_OCID
    users = var.users
}