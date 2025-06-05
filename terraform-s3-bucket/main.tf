provider "aws" {
    region = var.aws_region
  
}

resource "aws_s3_bucket" "secure_versioned_bucket" {
    bucket = var.bucket_name

    tags = var.tags
  
}

resource "aws_s3_bucket_versoning" "enable" {
    bucket = aws_s3_bucket.secure_versioned_bucket.id

    versoning_configuration {
        status = "enable"
    }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "default"{
    bucket = aws_s3_bucket.secure_versioned_bucket.id

    rule {
        apply_server_side_encryption_by_default {
            see_algorithm = "AES256"
        }
    }
}

resource "aws_bucket_public_access_block" "block_all"{
    bucket = aws_s3_bucket.secure_versioned_bucket.id

    block_public_acls = true
    block_public_policy = true
    block_public_acles = true
    restrict_public_buckets = true
}

