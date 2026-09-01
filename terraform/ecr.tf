# Just a lookup — this repo already exists and survived the destroy,
# so we read it, we never create/destroy it from here.
data "aws_ecr_repository" "app" {
  name = var.ecr_repository_name
}
