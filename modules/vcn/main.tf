module "vcn" {
    source = "git://github.com/skuehnlein/oci_terraform_moduls.git/module//vcn"

    compartment_id = var.compartment_id
    vcn_cidr = var.vcn_cidr
    vcn_dns_label = var.stage
    vcn_display_name = "VCN for the tenant ${var.organization} - stage ${var.stage}"

    create_nat_gateway = var.create_nat_gateway
    nat_gateway_display_name = "NAT Gateway for the tenant ${var.organization} - stage ${var.stage}"

    create_internet_gateway = var.create_internet_gateway
    intenet_gateway_display_name = "Internet Gateway for the tenant ${var.organization} - stage ${var.stage}"


    create_service_gateway = var.create_service_gateway
    service_gateway_display_name = "Service Gateway for the tenant ${var.organization} - stage ${var.stage}"

    create_dynamic_routing_gateway = var.create_dynamic_routing_gateway
    drg_display_name = "Dynamic Routing Gateway for the tenant ${var.organization} - stage ${var.stage}"
}
