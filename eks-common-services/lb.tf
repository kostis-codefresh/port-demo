provider "kubernetes" {
  config_path = "~/.kube/config"
}

data "kubernetes_service" "nginx_service" {
  metadata {
    name      = "ingress-nginx-controller"
    namespace = helm_release.nginx_ingress.namespace
  }


}

output "load_balancer_address" {
  description = "Kubernetes Cluster Name"
  value       = data.kubernetes_service.nginx_service.status.0.load_balancer.0.ingress.0.hostname
}

# resource "aws_route53_record" "example" {
#   zone_id = "data.aws_route53_zone.k8.zone_id"
#   name    = "example"
#   type    = "CNAME"
#   ttl     = "300"
#   records = [data.kubernetes_service.example.status.0.load_balancer.0.ingress.0.hostname]
# }