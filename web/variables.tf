variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "westeurope"

}

variable "rg_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-web"

}

variable "sa_name" {
  description = "The name of the storage account"
  type        = string
  default     = "sa-web"

}

variable "source_content" {
  description = "The content of the index.html file"
  type        = string
  default     = "<h1>web page created by Terraform</h1>"

}

variable "index_document" {
  description = "The name of the index document"
  type        = string
  default     = "index.html"

}

variable "subscription_id" {
  type = string
}
