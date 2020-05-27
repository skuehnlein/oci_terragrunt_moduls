module "iam" {
    source = "git://github.com/skuehnlein/oci_terraform_moduls.git//iam"

    compartment_id = var.tenancy_OCID
    users = var.users
}