#Note: For using the code please remove /* */

#first apply : terraform apply --var env_type=dev --var queue_name=myqueue
#second apply: env TF_VAR_env_type=test env TF_VAR_queue_name=updatedqueue terraform apply
#third apply : terraform apply (please apply with "Variables.auto.tfvars" file)

/*

variable "tag_map" {
  type = "map"
  default = {
    dev	  = "dev-queue",
    test  = "test-queue",
    prod  = "prod-queue"
  }
}

variable "env_type" {}

variable "queue_name" {}

resource "aws_sqs_queue" "queue" {
  name = "${var.queue_name}"

  tags {
    environment_type = "${lookup(var.tag_map, var.env_type)}"
  }
}

*/