variable "buckets" {
  description = "Map of GCP bucket configurations; key = bucket name"
  type = map(object({
    location = string
    labels   = map(string)  # Add labels as a map of strings
    # (other bucket attributes can be added here if needed)
  }))
  default = {}
}
