#resource "google_storage_bucket" "buckets" {
#  for_each = toset(var.bucket_names)
#
#  name     = each.key
#  location = "US"
#  force_destroy = true
#  uniform_bucket_level_access = true
#}