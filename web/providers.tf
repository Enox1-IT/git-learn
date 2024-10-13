terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.4.0"
    }
  }
}

terraform {
  backend "azurerm" {
    subscription_id      = var.subscription_id
    resource_group_name  = "backend-enox1-rg"            # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "backendstorageenox17adra"    # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "backendenox1sc"              # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "webdemo02.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  features {

  }
}
