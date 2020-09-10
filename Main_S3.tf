#Note: For using the code please remove /* */

/*

module "versioned_bucket" {
  source = "./Module_S3"
  bucket_name = "pejvak-bucket-versioned"
  versioning = true
}

module "normal_bucket" {
  source = "./Module_S3"
  bucket_name = "pejvak-bucket-normal"
  versioning = false
}


output "versioned_bucket_arn" {
  value = "${module.versioned_bucket.s3_bucket_arn}"
}

output "normal_bucket_arn" {
  value = "${module.normal_bucket.s3_bucket_arn}"
}

*/