resource "helm_release" "target_vcluster_prod" {
  name             = "target-vcluster-prod"
  namespace        = "target-vcluster-prod"
  create_namespace = true
  repository       = "https://charts.loft.sh"
  chart            = "vcluster"
  version          = "0.15.1"

  values = [
    file("${path.module}/manifests/deployment_clusters/vcluster-prod-values.yml")
  ]
}

resource "helm_release" "target_vcluster_staging" {
  name             = "target-vcluster-staging"
  namespace        = "target-vcluster-staging"
  create_namespace = true
  repository       = "https://charts.loft.sh"
  chart            = "vcluster-k0s"
  version          = "0.15.1"

  values = [
    file("${path.module}/manifests/deployment_clusters/vcluster-staging-values.yml")
  ]
}


resource "helm_release" "target_vcluster_qa" {
  name             = "target-vcluster-qa"
  namespace        = "target-vcluster-qa"
  create_namespace = true
  repository       = "https://charts.loft.sh"
  chart            = "vcluster-k8s"
  version          = "0.15.1"

  values = [
    file("${path.module}/manifests/deployment_clusters/vcluster-qa-values.yml")
  ]
}


