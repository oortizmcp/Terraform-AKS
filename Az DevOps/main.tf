terraform {
  backend "azurerm" {
    resource_group_name = "oo-akslab"
    storage_account_name = "oovtfstate"
    container_name = "tfstate"
    key = "terraform.state"
  }
}

provider azurerm {
  version = "2.0.0"
  features {}
}

resource "azurerm_kubernetes_cluster" "oo-AKS" {
  name                = var.Name
  location            = var.location
  resource_group_name = var.resourceGroup
  dns_prefix          = "oovprefix"

  default_node_pool {
    name = "default"
    node_count = 1
    vm_size = "Standard_D2_v2"
  }
  service_principal {
    client_id     = var.clientID
    client_secret = var.clientSecret
  }

  tags = {
    Environment = "Development"
  }
}