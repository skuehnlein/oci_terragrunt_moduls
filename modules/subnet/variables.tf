# General information about the environment - used for setting display names and tags
variable "tenancy_OCID" {
    description = "The OCID of the tenancy"
    type = string
}

variable "vcn_OCID" {
    description = "The OCID of the VCN in which the resource will be created"
    type = string
}

variable "compartment_name" {
    description = "Name of the compartment in which the resource will be created"
    type = string
}

# Modul-specific variables
variable "security_list_display_name" {
    description = "The name for the Security List. This will be shown in the OCI console"
    type = string
}

variable "tcp_ingress_rules" {
    description = "List of all ingress rules of the security list - protocol: TCP"
    type = list(object({
        description = string,
        source =  string,
        destination_port = number

    }))
}

variable "icmp_ingress_rules" {
    description = "List of all ingress rules of the security list - protocol: ICMP"
    type = list(object({
        description = string,
        source =  string
    }))
    default = []
}

variable "udp_ingress_rules" {
    description = "List of all ingress rules of the security list - protocol: ICMP"
    type = list(object({
        description = string,
        source =  string,
        destination_port = number

    }))
    default = []
}

variable "tcp_egress_rules" {
    description = "List of all egress rules of the security list - protocol: TCP"
    type = list(object({
        description = string,
        destination = string,
        destination_port = number

    }))
    default = []
}

variable "icmp_egress_rules" {
    description = "List of all egress rules of the security list - protocol: ICMP"
    type = list(object({
        description = string,
        destination = string

    }))
    default = []
}

variable "udp_egress_rules" {
    description = "List of all egress rules of the security list - protocol: UDP"
    type = list(object({
        description = string,
        destination = string,
        destination_port = number

    }))
    default = []
}
