output "compute_instance_OCID" {
    description = "The OCID of the created compute instance"
    value = module.compute.compute_instance_OCID
}

output "boot_volume_OCID" {
    description = "The OCID of the boot volume which is assigned to the compute intance"
    value = oci_core_instance.compute.boot_volume_OCID
}