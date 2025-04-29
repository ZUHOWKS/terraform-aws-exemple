resource "aws_s3_object" "object-upload-ico" {

  for_each     = fileset("./dist/", "*.ico")
  bucket       = var.bucket_id
  key          = each.value
  source       = "./dist/${each.value}"
  etag         = filemd5("./dist/${each.value}")
  content_type = "image/x-icon"
}

resource "aws_s3_object" "object-upload-html" {

  for_each     = fileset("./dist/", "*.html")
  bucket       = var.bucket_id
  key          = each.value
  source       = "./dist/${each.value}"
  etag         = filemd5("./dist/${each.value}")
  content_type = "text/html"
}

resource "aws_s3_object" "object-upload-assets-css" {

  for_each     = fileset("./dist/assets/", "*.css")
  bucket       = var.bucket_id
  key          = "assets/${each.value}"
  source       = "./dist/assets/${each.value}"
  etag         = filemd5("./dist/assets/${each.value}")
  content_type = "text/css"
}

resource "aws_s3_object" "object-upload-assets-js" {

  for_each     = fileset("./dist/assets/", "*.js")
  bucket       = var.bucket_id
  key          = "assets/${each.value}"
  source       = "./dist/assets/${each.value}"
  etag         = filemd5("./dist/assets/${each.value}")
  content_type = "application/javascript"
}


