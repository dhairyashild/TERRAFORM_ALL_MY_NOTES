data "aws_s3_bucket" "app_bucket" {
  bucket = "my-app-bucket"
}

resource "aws_s3_bucket_policy" "app" {
  bucket = data.aws_s3_bucket.app_bucket.id
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::${data.aws_s3_bucket.app_bucket.id}/*"
    }
  ]
}
POLICY
}
