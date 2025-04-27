resource "google_storage_bucket" "buckets" {
  for_each = var.buckets

  name     = each.key
  location = each.value.location
}
