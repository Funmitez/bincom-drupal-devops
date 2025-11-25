output "database_endpoint" {
  value = aws_db_instance.drupal.endpoint
}

output "web_server_1_ip" {
  value = aws_instance.drupal_1.public_ip
}

output "web_server_2_ip" {
  value = aws_instance.drupal_2.public_ip
}