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

variable "all_compartment_policies" {
    description = "The definition of all policies which should be created"
    type = map(object({
        name = string,
        compartment_name = string,
        description = string,
        statements = list(string)
    }))
}