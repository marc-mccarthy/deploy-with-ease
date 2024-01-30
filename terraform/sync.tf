resource "null_resource" "sync" {
  triggers = {
    bucket_id = aws_s3_bucket.bucket.id
  }

  provisioner "local-exec" {
    command = "aws s3 sync ../useragent/dist s3://${aws_s3_bucket.bucket.id} --delete"
  }
}
