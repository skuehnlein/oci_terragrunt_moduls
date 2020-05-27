output "users" {
    description = "Created users in the OCI tenancy"
    value = module.iam.iam_users
}

output "groups" {
    description  = "Created groups in the OCI tenancy"
    value = module.iam.iam_groups
}