# After `terraform apply`, copy these into your GitHub repo's Secrets
# to replace the ones pointing at the destroyed resources.

output "ecs_cluster_name" {
  value = aws_ecs_cluster.app.name
}

output "ecs_service_name" {
  value = aws_ecs_service.app.name
}

output "ecs_task_definition_family" {
  value = aws_ecs_task_definition.app.family
}

output "container_name" {
  value = "${var.project_name}-container"
}

output "ecr_repository_url" {
  value = data.aws_ecr_repository.app.repository_url
}

output "github_actions_role_arn" {
  value = aws_iam_role.github_actions.arn
}
