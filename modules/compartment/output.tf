output "top_level_compartments" {
    value = module.top_level_compartments.compartments
}

output "second_level_compartments" {
    value = module.top_level_compartments.compartments[*]
}