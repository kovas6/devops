variable "buckets" {
  description = "Map of bucket names to their configurations"
  type = map(object({
    location = string
    labels   = map(string)
  }))
}

variable "vms" {
  description = "Map of VM names to their configurations"
  type = map(object({
    machine_type = string
    image        = string
    image_project = string
    zone         = string
    network      = string
    disk_size    = number
  }))
}
