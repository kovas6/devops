variable "buckets" {
  description = "Map of GCP bucket configurations; key = bucket name"
  type = map(object({
    location = string
    # (other bucket attributes can be added here if needed)
  }))
  default = {}
}
