buckets = {
  "lv-bucket-1-498494949616153113" = {
    location = "us"
    labels = {}
  },
  "lv-bucket-2-498494949616153113" = {
    location = "eu"
    labels = {
      env = "prod"
    }
  }
}

vms = {
  "testvm1" = {
    machine_type  = "e2-micro"
    zone          = "us-central1-a"
    image         = "ubuntu-2004-focal-v20210927"
    image_project = "ubuntu-os-cloud"
    network       = "default"
    disk_image    = "ubuntu-2004-focal-v20210927" # same as image
    disk_size     = 10                            # in GB, minimal disk size
  }
}
