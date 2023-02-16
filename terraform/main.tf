terraform {
  backend "azurerm" {
    resource_group_name  = "ABSDemo"
    storage_account_name = "absdemostorageacc"
    container_name       = "tfstatefile"
    key                  = "dev.terraform.tfstate"
  }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
