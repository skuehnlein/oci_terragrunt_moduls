
# General information about the environment - used for setting display names and tags
 variable "organization" {
    description = "Name of the organization, for which the environment will be deployed"
    type        = string
}

 variable "stage" {
    description = "Name of the stage to which the environment will be deployed"
    type        = string
}

variable "tenancy_OCID" {
    description = "The OCID of the tenancy"
    type = string
}

variable "Compartment_name" {
    description = "Name of the Compartment to which the VCN will be assigend"
    type        = string
}

# vcn parameters
variable "vcn_cidr" {
    description = "CIDR block of the VCN"
    type        = string
}

variable "create_nat_gateway" {
    description = "Flag, whether to create a nat gateway in the VCN"
    type        = bool
    default     = false
}

variable "create_internet_gateway" {
    description = "Flag, whether to create a internet gateway in the VCN"
    type        = bool
    default     = false
}

variable "create_service_gateway" {
    description = "Flag, whether to create a service gateway in the VCN"
    type        = bool
    default     = false
}

variable "create_dynamic_routing_gateway" {
    description = "Flag, whether to create a service gateway in the VCN"
    type        = bool
    default     = false
}