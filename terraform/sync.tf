# Null resource to sync contents of local directory to S3 bucket 
resource "null_resource" "sync" {
  # Triggers sync when bucket ID changes
  triggers = {
    bucket_id = aws_s3_bucket.bucket.id
  }
  provisioner "local-exec" {
    # Syncs contents of local 'dist' folder to S3 bucket
    command = "aws s3 sync ../useragent/dist s3://${aws_s3_bucket.bucket.id} --delete"
  }
}
