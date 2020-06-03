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

# Modul-specific variables - Subnet

variable "availability_domain" {
    description = "The availability domain in which the AD-specific subnet will be created"
    type = string
    default = ""
}

variable "subnet_display_anme" {
    description = "The name of the subent which will be shown in the OCI console"
    type = string
}

variable "subnet_dns_label" {
    description = "The DNS label for the subnet, used in conjunction with the VNIC's hostname and VCN's DNS label"
    type = string
    default = ""
}

variable "is_private_subnet" {
    description = "Flag that indicates whether the subnet is a private or a public subnet"
    type = bool
    default = false
}

variable "route_table_OCID" {
    description = "The OCID of the route table which will be assigned to the subnet"
    type = string
}

variable "security_list_OCIDs" {
    description = "The list of OCIDs of the security lists which will be assigend to the subnet"
    type = list(string)
}

# Modul-specific variables - Security List
variable "security_list_display_name" {
    description = "The name for the Security List. This will be shown in the OCI console"
    type = string
}

variable "tcp_ingress_rules" {
    description = "List of all ingress rules of the security list - protocol: TCP"
    type = list(object({
        description = string,
        source =  string,
        source_type = string,
        destination_port = number,
        stateless = bool

    }))
}

variable "icmp_ingress_rules" {
    description = "List of all ingress rules of the security list - protocol: ICMP"
    type = list(object({
        description = string,
        source =  string,
        source_type = string,
        stateless = bool
    }))
    default = []
}

variable "udp_ingress_rules" {
    description = "List of all ingress rules of the security list - protocol: ICMP"
    type = list(object({
        description = string,
        source =  string,
        source_type = string,
        destination_port = number,
        stateless = bool

    }))
    default = []
}

variable "tcp_egress_rules" {
    description = "List of all egress rules of the security list - protocol: TCP"
    type = list(object({
        description = string,
        destination = string,
        destination_type = string,
        destination_port = number,
        stateless = bool

    }))
    default = []
}

variable "icmp_egress_rules" {
    description = "List of all egress rules of the security list - protocol: ICMP"
    type = list(object({
        description = string,
        destination = string,
        destination_type = string,
        stateless = bool

    }))
    default = []
}

variable "udp_egress_rules" {
    description = "List of all egress rules of the security list - protocol: UDP"
    type = list(object({
        description = string,
        destination = string,
        destination_type = string,
        destination_port = number,
        stateless = bool       

    }))
    default = []
}
