resource "kubernetes_ingress" "example_ingress" {
  metadata {
    name = "redisgeek-ingress"
    namespace = "default"
    annotations = {
      "kubernetes.io/ingress.class" = "addon-http-application-routing"
    }
  }

  spec {
//    backend {
//      service_name = "MyApp1"
//      service_port = 8080
//    }

    rule {
      http {
        path {
          backend {
            service_name = "concourse-web"
            service_port = 8080
          }

          path = "/"
        }
      }
    }

    tls {
      secret_name = "tls-secret"
    }
  }
}