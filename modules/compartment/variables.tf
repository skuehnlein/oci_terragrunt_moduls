variable "tenancy_OCID" {
    description = "The OCID of the tenancy"
    type = string
}

variable "top_level_compartments" {
    description = "The definition of the top-level compartments which should be cretated"
    type = list(object( {
        root_compartment = string,
        compartment_name = string,
        compartment_description = string
    }))
}

variable "second_level_compartments" {
    description = "The definition of the second-level compartments which should be cretated"
    type = list(object( {
        root_compartment = string,
        compartment_name = string,
        compartment_description = string
    }))
}