terraform {
  backend "gcs" {
    bucket = "kovas6-bucket-1"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "turnkey-energy-457517-u4"
  region  = "us-central1"
}

module "gcp_buckets" {
  source  = "./modules/gcp-buckets"
  buckets = var.buckets
}

module "gcp_vms" {
  source  = "./modules/gcp-vms"
  vms     = var.vms
}