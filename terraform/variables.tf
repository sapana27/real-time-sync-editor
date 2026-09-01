# ---- Things you MUST check/change before running terraform apply ----

variable "aws_profile" {
  description = "The AWS CLI profile Terraform should use (from `aws configure --profile <name>`)"
  default     = "default" # confirmed: aws configure went into the default profile
}

variable "aws_region" {
  description = "AWS region — must match wherever you set up things before"
  default     = "us-east-1" # CHANGE if your region was different
}

variable "ecr_repository_name" {
  description = "Exact name of your EXISTING ECR repo. Check with: aws ecr describe-repositories"
  default     = "docker-learn/server" # confirmed via aws ecr describe-repositories
}

variable "github_org_repo" {
  description = "Your GitHub org/repo, for the OIDC trust policy, e.g. sapana27/real-time-sync-editor"
  default     = "sapana27/real-time-sync-editor" # CHANGE if this isn't exact
}

# ---- Safe to leave as-is ----

variable "project_name" {
  description = "Prefix used to name every resource"
  default     = "sync-editor"
}

variable "container_port" {
  description = "Port the backend listens on (confirmed from server.js: 3000)"
  default     = 3000
}
