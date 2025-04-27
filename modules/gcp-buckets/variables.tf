variable "buckets" {
  description = "Map of bucket configurations"
  type = map(object({
    location = string
  }))
}

resource "google_storage_bucket" "buckets" {
  for_each = var.buckets

  name     = each.key
  location = each.value.location
}
