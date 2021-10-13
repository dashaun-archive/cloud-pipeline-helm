resource "helm_release" "concourse" {
  name       = "concourse"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "concourse"
}

resource "helm_release" "contour" {
  name       = "contour"
  repository = "https://marketplace.azurecr.io/helm/v1/repo"
  chart      = "contour"
}