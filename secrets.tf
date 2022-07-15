resource "aws_secretsmanager_secret" "ms_secret" {
  name = "ms_secret"
}

resource "aws_secretsmanager_secret_version" "version" {
  secret_id     = aws_secretsmanager_secret.ms_secret.id
  secret_string = tls_private_key.ms_key.id
}

output "instance_id" {
  value = aws_instance.ms_application.id
}

output "secretsmanager_secret" {
  value = aws_secretsmanager_secret.ms_secret.id
}

output "secretsmanager_secret_version" {
  value = aws_secretsmanager_secret_version.version.id
}
