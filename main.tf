provider "google" {
  project = var.project_id
  region  = var.region
}

module "gcp-buckets" {
  source     = "./modules/gcp-buckets"
  bucket_names = ["my-logs-bucket", "my-static-bucket"]
}
