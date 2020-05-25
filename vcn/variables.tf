
# General information about the environment - used for setting display names and tags
 variable "organization" {
    description = "Name of the organization, for which the environment will be deployed"
    type        = string
}

 variable "stage" {
    description = "Name of the stage, for which the environment will be deployed"
    type        = string
}

variable "compartment_OCID" {
    description = "OCID of the compartment in which the VCN will be created"
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