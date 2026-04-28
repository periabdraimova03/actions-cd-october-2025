provider "google" {
  project     = "my-project-id"
  region      = "us-central1"
}

provider "helm" {
  kubernetes = {
    config_path = "~/.kube/config"
  }
}
resource "helm_release" "flask" {
  name       = "flask-app"
  chart      = "./flask-app"
  version    = "0.1.0"
  force_update = true

}