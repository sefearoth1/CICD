provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "pipeline_tristan" {
  name     = "Bipeline_tristan"
  location = "Europe Nord"  # Modifiez la région selon vos besoins
}
