#Note: For using the code please remove /* */
/*

provider "aws" {
  region = "ap-southeast-2"
}

provider "aws" {
  region = "us-east-2"
  alias  = "mysecprovider"
}

resource aws_s3_bucket "my_first_bucket" {
  bucket = "myfirstbucket-sydney"
}

resource aws_s3_bucket "my_second_bucket" {
  bucket   = "mysecondbucket-ohio"
  provider = "aws.mysecprovider"
}

*/