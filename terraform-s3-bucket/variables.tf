variable "aws_region" {
    description = "aws region"
    type = string
    default = "us-east-1"
  
}

variable "bucket_name"{
    description = "globally unique s3 bucket name"
    type = string

}

variable "tags" {
    description = "tags to apply to the bucket"
    type = map(string)
    default = {
      "environment" = "dev"
      managedby = "terraform"
    }
  
}