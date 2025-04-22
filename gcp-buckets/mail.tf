provider "google" {
  project = "turnkey-energy-457517-u4"
  region  = "us-central1"
}

resource "google_storage_bucket" "bucket_one" {
  name          = "turnkey-energy-bucket-one"
  location      = "US"
  force_destroy = true
}

resource "google_storage_bucket" "bucket_two" {
  name          = "turnkey-energy-bucket-two"
  location      = "US"
  force_destroy = true
}
