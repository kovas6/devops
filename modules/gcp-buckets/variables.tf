variable "buckets" {
  description = "Map of GCP bucket configurations; key = bucket name"
  type = map(object({
    location = string
    labels   = map(string)  # Add labels as a map of strings
    # (other bucket attributes can be added here if needed)
  }))
  default = {}
}

variable "vms" {
  description = "Map of VM configurations; key = VM name"
  type = map(object({
    machine_type   = string
    zone           = string
    image          = string
    image_project  = string
    network        = string
  }))
  default = {}
}
