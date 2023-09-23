resource "kubectl_manifest" "nodejs_app" {
  yaml_body = file("${path.module}/deployment.yaml")
}
