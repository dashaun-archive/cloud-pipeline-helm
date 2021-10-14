locals {
  redisgeek_config = {
    kube_config_raw = azurerm_kubernetes_cluster.redisgeek.kube_config_raw
    kube_config     = azurerm_kubernetes_cluster.redisgeek.kube_config
  }
  rg           = azurerm_resource_group.redisgeek.name
  cluster_name = azurerm_kubernetes_cluster.redisgeek.name
}

output "resource_group" {
  value = module.aks-terraform-default.resource_group
}

output "cluster_name" {
  value = module.aks-terraform-default.cluster_name
}

output "redisgeek_config" {
  value     = module.aks-terraform-default.redisgeek_config
  sensitive = true
}