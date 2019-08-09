provider "aws"{
   region="us-east-1"
}

module "s3-static-website" {
  source  = "./modules/HttpsRoute53"

  domain_name = "devv.eurustechnologies.com"
  redirects   = ["www.devv.eurustechnologies.com"]
  secret      = "SOME_SECRET_MANAGED_OUTSIDE_OF_VERSION_CONTROL"
  cert_arn    = "arn:aws:acm:us-east-1:853219876644:certificate/72ef6af5-4248-4c7c-83e2-69188210a9c1"
  zone_id     = "Z1G47AP9B9WB7W"

  tags = {
    Foo = "Bar"
  }
}
