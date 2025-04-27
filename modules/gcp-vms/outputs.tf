output "vm_ips" {
  value = google_compute_instance.vms[*].network_interface[0].access_config[0].nat_ip
}
