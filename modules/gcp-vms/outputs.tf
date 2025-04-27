output "vm_ips" {
  description = "Public IP addresses of VMs"
  value = {
    for vm_key, vm_resource in google_compute_instance.vms :
    vm_key => vm_resource.network_interface[0].access_config[0].nat_ip
  }
}
