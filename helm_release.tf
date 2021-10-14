resource "helm_release" "concourse" {
  name       = "concourse"
  repository = "https://concourse-charts.storage.googleapis.com/"
  chart      = "concourse"
}

resource "helm_release" "contour" {
  name       = "contour"
  repository = "https://marketplace.azurecr.io/helm/v1/repo"
  chart      = "contour"
}