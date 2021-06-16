



output "aws_codecommit_repo_name" {
  value = aws_codecommit_repository.cc_repo.repository_id
}
output "aws_codecommit_repo_arn" {
  value = aws_codecommit_repository.cc_repo.arn
}
output "aws_codecommit_clone_url_http" {
  value = aws_codecommit_repository.cc_repo.clone_url_http
}
