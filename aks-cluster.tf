resource "azurerm_kubernetes_cluster" "example" {
  name                = "pipeline_tristan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  dns_prefix          = "myakscluster"  # Modifiez selon vos besoins

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  addon_profile {
    monitoring {
      enabled = true
    }
  }
}
