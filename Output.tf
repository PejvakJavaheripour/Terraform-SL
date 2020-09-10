
#Note: For using the code please remove /* */
/*

locals {
  bucket_myprefix = "pejvakjavaheripour"
  bucket_mypolicy = "pejvakbucketpolicy"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "${local.bucket_myprefix}-bucket"
}

resource "aws_iam_policy" "my_bucket_policy" {
  name = "${local.bucket_mypolicy}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "${aws_s3_bucket.my_bucket.arn}"
      ]
    }
  ]
}
POLICY
}

output "My_Bucket_ARN" {
  value = "${aws_s3_bucket.my_bucket.arn}"
}

*/