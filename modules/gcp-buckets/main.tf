resource "google_storage_bucket" "buckets" {
  for_each = var.buckets

  name     = each.key           # use key as bucket name
  location = each.value.location
  labels   = lookup(each.value, "labels", {})  # Safely handle labels

  # (add other bucket settings, e.g. uniform_bucket_level_access)
}
