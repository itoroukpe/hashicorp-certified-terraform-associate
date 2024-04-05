# Resource Block: Create Random Pet Name 
resource "random_pet" "petname" {
  length    = 5
  separator = "-"
}

# Resource Block: Create AWS S3 Bucket
resource "aws_s3_bucket" "sample" {
  bucket = random_pet.petname.id
  // acl    = "public-read" # deprecated
  // region = "us-east-1"  # deprecated - Comment this if we are going to use AWS Provider v3.x version
}
