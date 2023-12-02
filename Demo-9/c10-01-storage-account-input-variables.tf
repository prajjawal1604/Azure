# Input variables definations

variable "storage_account_name" {
  type        = string
  description = "The name of the storage account"
}

variable "storage_account_tier" {
  type        = string
  description = "The storage account tier"
}

variable "storage_account_replication_type" {
  type        = string
  description = "The storage account replication type"
}

variable "storage_account_kind" {
  type        = string
  description = "The storage account kind"
}

variable "static_website_index_document" {
  type        = string
  description = "The index document for the static website"
}

variable "static_website_error_404_document" {
  type        = string
  description = "The error 404 document for the static website"
}