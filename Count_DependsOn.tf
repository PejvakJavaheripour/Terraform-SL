#Note: For using the code please remove /* */
/*

resource "aws_s3_bucket" "bucket" {
  bucket = "Pejvakjavaheripour-${count.index}"
  count = 3
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "Pejvakjavaheripour-next-bucket"

  depends_on = ["aws_s3_bucket.bucket"]
}

*/