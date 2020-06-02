output "security_lists" {
    description = "The created security lists"
    value = module.security_list.security_lists
}