module "iam" {
    source = "git://github.com/skuehnlein/oci_terraform_moduls.git//iam"

    tenancy_OCID = var.tenancy_OCID
    iam_users = var.users
    iam_groups = var.groups

    iam_users_group_membership = var.user_group_membership
}