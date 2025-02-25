output "created_at" {
  description = "The time when this key was created in GitLab"
  value       = gitlab_user_gpgkey.this.created_at
}

output "id" {
  description = "The ID of this resource"
  value       = gitlab_user_gpgkey.this.id
}

output "key_id" {
  description = "The ID of the GPG key"
  value       = gitlab_user_gpgkey.this.key_id
}
