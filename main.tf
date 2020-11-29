variable "host" {}
variable "token" {}

resource "null_resource" "installer" {

    provisioner "local-exec" {

        command = "kubectl apply --server=${ var.host } --token=${ var.token } -f https://github.com/kedacore/keda/releases/download/v2.0.0/keda-2.0.0.yaml"

    }

}
