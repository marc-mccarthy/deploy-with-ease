# # Defines a CloudFront web distribution to cache and distribute site content 
# resource "aws_cloudfront_distribution" "distribution" {
#   # Origin configuration linking to S3 website bucket 
#   origin {
#     domain_name = aws_s3_bucket.bucket.bucket_regional_domain_name 
#     origin_id   = aws_s3_bucket.bucket.id  
#   }
#   # Enables the CloudFront distribution
#   enabled = true
#   # Sets index page as default root object
#   default_root_object = "index.html"
#   # Default cache behavior to cache files with GET/HEAD methods
#   default_cache_behavior {
#     allowed_methods  = ["GET", "HEAD"]
#     cached_methods   = ["GET", "HEAD"]
#     target_origin_id = aws_s3_bucket.bucket.id
#     forwarded_values {
#       # Don't forward/cache query strings
#       query_string = false
#       cookies {
#         forward = "none" # Don't forward cookies
#       }
#     }
#     # Redirect HTTP to HTTPS 
#     viewer_protocol_policy = "redirect-to-https"
#   }
#   # Allow unrestricted access to this distribution  
#   restrictions {
#     geo_restriction {
#       restriction_type = "none" 
#     }
#   }
#   # Use default CloudFront certificate 
#   viewer_certificate {
#     cloudfront_default_certificate = true  
#   }
# }
