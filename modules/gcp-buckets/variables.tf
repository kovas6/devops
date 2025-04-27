variable "bucket_names" {
  type = list(string)
  description = "List of GCP bucket names to create."
}

variable "bucket_location" {
  type        = string
  description = "The location where the buckets will be created."
  default     = "US"
}