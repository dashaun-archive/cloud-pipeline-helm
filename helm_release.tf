resource "helm_release" "concourse" {
  name       = "concourse"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "concourse"
}