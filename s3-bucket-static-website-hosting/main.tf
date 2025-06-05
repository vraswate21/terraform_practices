provider "aws" {
    region = var.aws_region
  
}

resource "aws_s3_bucket" "static_site" {
    bucket = var.bucket_name

    website {
      index_document = "index.html"
      error_document = "error.html"
    }


    tags = {
      name = "staticsite"
    }

  
}

resource "aws_s3_bucket_policy" "allow_public_read" {
    bucket = aws_s3_bucket.static_site.id

    policy = jsonencode({
        version = "2012-10-17"
        statement = [
            {
                effect = "allow"
                principal = "*"
                action = ["s3:getobj"]
                resource = "${aws_s3_bucket.static_site.arn}/*"

            }
        ]
    })
  
}