resource "aws_s3_bucket" "mybucket" {
  bucket = var.butcketname

}
resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.mybucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.mybucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [
    aws_s3_bucket_ownership_controls.example,
    aws_s3_bucket_public_access_block.example,
  ]

  bucket = aws_s3_bucket.mybucket.id
  acl    = "public-read"
}

resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.mybucket.id
  key = "index.html"
  source = "index.html"
  acl = "public-read"
  content_type = "text/html"
  etag = filemd5("${path.module}/index.html")
}

resource "aws_s3_object" "error" {
  bucket = aws_s3_bucket.mybucket.id
  key = "error.html"
  source = "error.html"
  acl = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "style" {
  bucket = aws_s3_bucket.mybucket.id
  key = "style.css"
  source = "style.css"
  acl = "public-read"
  content_type = "text/css"
  etag = filemd5("${path.module}/style.css")
}

resource "aws_s3_object" "projects" {
  bucket = aws_s3_bucket.mybucket.id
  key = "projects.html"
  source = "projects.html"
  acl = "public-read"
  content_type = "text/html"
  etag = filemd5("${path.module}/projects.html")
}

resource "aws_s3_object" "skills" {
  bucket = aws_s3_bucket.mybucket.id
  key = "skills.html"
  source = "skills.html"
  acl = "public-read"
  content_type = "text/html"
  etag = filemd5("${path.module}/skills.html")
}

resource "aws_s3_object" "experience" {
  bucket = aws_s3_bucket.mybucket.id
  key = "experience.html"
  source = "experience.html"
  acl = "public-read"
  content_type = "text/html"
  etag = filemd5("${path.module}/experience.html")
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.mybucket.id
    
  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  depends_on = [ aws_s3_bucket_acl.example ]
}
