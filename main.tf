variable "host" {}
variable "token" {}

resource "null_resource" "installer" {

    provisioner "local-exec" {

        command = "KUBE_HOST=${ var.host } KUBE_TOKEN=${ var.token } kubectl apply -f https://github.com/kedacore/keda/releases/download/v2.0.0/keda-2.0.0.yaml"

    }

}
