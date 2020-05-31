output "comp_top_level" {
    value = module.comp_top_level.compartments
}

output "comp_2nd_level" {
    value = module.comp_2nd_level.compartments[*]
}