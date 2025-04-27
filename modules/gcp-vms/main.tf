resource "google_compute_instance" "vms" {
  for_each = var.vms

  name         = each.key
  machine_type = each.value.machine_type
  zone         = each.value.zone
  network_interface {
    network = each.value.network
    access_config {}
  }
  boot_disk {
    initialize_params {
      image = each.value.disk_image
      size  = each.value.disk_size
    }
  }
}
