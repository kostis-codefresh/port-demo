output "project_id" {
  value = codefresh_project.example-project.id
}

output "pipeline_build_id" {
  value = codefresh_pipeline.deploy-pipeline.id
}

output "pipeline_promote_id" {
  value = codefresh_pipeline.promote-pipeline.id
}

output "repo_name" {
  value = github_repository.my-new-demo-repo.full_name
}