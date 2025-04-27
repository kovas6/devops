resource "google_storage_bucket" "buckets" {
  for_each = var.buckets

  name     = each.key           # use key as bucket name
  location = each.value.location
  labels   = lookup(each.value, "labels", {})  # Safely handle labels

  # (add other bucket settings, e.g. uniform_bucket_level_access)
}

resource "google_compute_instance" "vms" {
  for_each = var.vms

  name         = each.key
  machine_type = each.value.machine_type
  zone         = each.value.zone

  boot_disk {
    initialize_params {
      image = each.value.image
    }
  }

  network_interface {
    network = each.value.network
    access_config {}
  }
}
