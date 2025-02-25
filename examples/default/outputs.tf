output "created_at" {
  description = "The time when this key was created in GitLab"
  value       = module.gitlab_user_gpgkey.created_at
}

output "id" {
  description = "The ID of this resource"
  value       = module.gitlab_user_gpgkey.id
}

output "key_id" {
  description = "The ID of the GPG key"
  value       = module.gitlab_user_gpgkey.key_id
}
