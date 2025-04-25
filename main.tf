module "gcp-buckets" {
  source        = "./modules/gcp-buckets"
  bucket_names  = var.bucket_names
}
