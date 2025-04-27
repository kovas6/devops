terraform {
  backend "gcs" {
    bucket = "kovas6-bucket-1"
    prefix = "terraform/state"
    project = "turnkey-energy-457517-u4"  # Specify your project ID
  }
}

#resource "google_storage_bucket" "buckets" {
#  for_each = toset(var.bucket_names)
#
#  name     = each.key
#  location = "US"
#  force_destroy = true
#  uniform_bucket_level_access = true
#}