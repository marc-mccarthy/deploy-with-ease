output "website_url" {
  # Defines an output variable that constructs the URL for the S3 bucket website 
  # This allows getting the bucket website URL easily after apply rather than looking it up
  description = "URL of the S3 Bucket Website" 
  value = "http://${aws_s3_bucket.bucket.bucket}.s3-website-${var.aws_region}.amazonaws.com"
}

# # Output the CloudFront distribution domain name  
# output "cloudfront_distribution_url" {
#   value = "https://${aws_cloudfront_distribution.distribution.domain_name}"
# }
