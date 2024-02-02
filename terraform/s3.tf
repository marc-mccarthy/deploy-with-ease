# S3 bucket resource definition
resource "aws_s3_bucket" "bucket" {
  # Creates an S3 bucket
  bucket = "useragent-info-parser-bucket"
  # Specifies the bucket can be destroyed even if not empty
  force_destroy = true
  # Tags the S3 bucket with a name and environment
  tags = {
    Name        = "useragent-info-parser-bucket"
    Environment = "dev"
  }
}

# S3 bucket policy resource
resource "aws_s3_bucket_policy" "bucket_policy" {
  # Links this policy to the S3 bucket 
  bucket = aws_s3_bucket.bucket.id
  # Allows public read access to all objects in bucket
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action    = "s3:GetObject"
        Effect    = "Allow"
        Resource = "${aws_s3_bucket.bucket.arn}/*"
        Principal = "*"
      }
    ]  
  })
}

# Enables S3 Object Ownership to manage object ownership and permissions 
resource "aws_s3_bucket_ownership_controls" "bucket_ownership_controls" {
  bucket = aws_s3_bucket.bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

# Configures static website hosting for the S3 bucket
resource "aws_s3_bucket_website_configuration" "bucket_website_configuration" {
  bucket = aws_s3_bucket.bucket.id  
  index_document {
    suffix = "index.html"
  }
  error_document {
    key = "error.html"
  }
}

# Overrides the block public access settings on the bucket
resource "aws_s3_bucket_public_access_block" "bucket_public_access_block" {
  bucket = aws_s3_bucket.bucket.id
  # Allows public access to this bucket
  block_public_acls = false
  block_public_policy = false
  ignore_public_acls = false
  restrict_public_buckets = false  
}
