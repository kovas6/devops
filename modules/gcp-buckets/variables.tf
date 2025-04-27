variable "buckets" {
  description = "Map of bucket configurations"
  type = map(object({
    name     = string
    location = string
  }))
}
