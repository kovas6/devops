variable "buckets" {
  description = "Map of bucket names to their configurations"
  type = map(object({
    location = string
    labels   = map(string)
  }))
}

variable "vms" {
  description = "Map of VM configurations"
  type = map(object({
    machine_type  = string
    zone          = string
    image         = string
    image_project = string
    network       = string
    disk_image    = string
    disk_size     = number
  }))
}