variable "buckets" {
  description = "Map of bucket configurations"
  type = map(object({
    name     = string
    location = string
  }))
}

resource "google_storage_bucket" "buckets" {
  for_each = var.buckets

  name     = each.value.name
  location = each.value.location
}