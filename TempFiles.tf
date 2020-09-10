#Note: For using the code please remove /* */

/*

locals {
  bucket_myprefix = "pejvakjavaheripour"
  bucket_mypolicy = "pejvakbucketpolicy"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "${local.bucket_myprefix}-bucket"
}

resource "aws_iam_user" "pejvak" {
  name = "pejvak"
}

data "template_file" "bucket_policy" {
  template = "${file("policy.json")}"

  vars = {
    bucket_arn = "${aws_s3_bucket.my_bucket.arn}"
  }
}

resource "aws_iam_user_policy" "my_bucket_policy" {
  name = "${local.bucket_mypolicy}"
  user = "${aws_iam_user.pejvak.name}"
  policy = "${data.template_file.bucket_policy.rendered}"

}

output "policy" {
  value = "${aws_iam_user_policy.my_bucket_policy.policy}"
}

*/