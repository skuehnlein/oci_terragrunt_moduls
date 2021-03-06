# General information about the environment - used for setting display names and tags
 variable "organization" {
    description = "Name of the organization, for which the environment will be deployed"
    type        = string
}

variable "tenancy_OCID" {
    description = "OCID of the tenant"
    type        = string
}

variable users {
    description = "List with all users, which should be created"
    type = map(object({
        user_name = string,
        user_email = string
    }))
}

variable "groups" {
    description = "The definition of the groups which should be created"
    type = map(object({
        group_name = string,
        group_description = string
    }))
}

variable "user_group_membership" {
    description = "The mapping between the users and the groups"
    type = map(object( {
        user_name = string,
        group_name =  string
    }))
}
