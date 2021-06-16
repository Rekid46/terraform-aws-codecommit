



output "aws_codecommit_repo_name" {
  value = aws_codecommit_repository.cc_repo.repository_id
}
output "aws_codecommit_repo_arn" {
  value = aws_codecommit_repository.cc_repo.arn
}
