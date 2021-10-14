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