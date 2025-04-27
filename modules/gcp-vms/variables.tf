variable "vms" {
  description = "Map of VM configurations; key = VM name"
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
