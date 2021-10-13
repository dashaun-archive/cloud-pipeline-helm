data "azurerm_kubernetes_cluster" "credentials" {
  name                = module.aks-terraform-default.cluster_name
  resource_group_name = module.aks-terraform-default.resource_group
}