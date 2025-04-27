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