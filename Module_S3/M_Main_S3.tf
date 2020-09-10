#Note: For using the code please remove /* */

/*

resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket_name}"
  versioning {
    enabled = "${var.versioning}"
  }
}

*/