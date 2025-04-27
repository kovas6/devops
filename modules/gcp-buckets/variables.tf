variable "buckets" {
  description = "Map of bucket configurations"
  type = map(object({
    location = string
  }))
}
