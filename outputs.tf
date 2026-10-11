output "database_users_id" {
  description = "Map of id values across all database_users, keyed the same as var.database_users except keys with no id are omitted"
  value       = { for k, v in mongodbatlas_database_user.database_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_users_auth_database_name" {
  description = "Map of auth_database_name values across all database_users, keyed the same as var.database_users except keys with no auth_database_name are omitted"
  value       = { for k, v in mongodbatlas_database_user.database_users : k => v.auth_database_name if v.auth_database_name != null && length(v.auth_database_name) > 0 }
}
output "database_users_aws_iam_type" {
  description = "Map of aws_iam_type values across all database_users, keyed the same as var.database_users except keys with no aws_iam_type are omitted"
  value       = { for k, v in mongodbatlas_database_user.database_users : k => v.aws_iam_type if v.aws_iam_type != null && length(v.aws_iam_type) > 0 }
}
output "database_users_description" {
  description = "Map of description values across all database_users, keyed the same as var.database_users except keys with no description are omitted"
  value       = { for k, v in mongodbatlas_database_user.database_users : k => v.description if v.description != null && length(v.description) > 0 }
}
output "database_users_labels" {
  description = "Map of labels values across all database_users, keyed the same as var.database_users except keys with no labels are omitted"
  value       = { for k, v in mongodbatlas_database_user.database_users : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "database_users_ldap_auth_type" {
  description = "Map of ldap_auth_type values across all database_users, keyed the same as var.database_users except keys with no ldap_auth_type are omitted"
  value       = { for k, v in mongodbatlas_database_user.database_users : k => v.ldap_auth_type if v.ldap_auth_type != null && length(v.ldap_auth_type) > 0 }
}
output "database_users_oidc_auth_type" {
  description = "Map of oidc_auth_type values across all database_users, keyed the same as var.database_users except keys with no oidc_auth_type are omitted"
  value       = { for k, v in mongodbatlas_database_user.database_users : k => v.oidc_auth_type if v.oidc_auth_type != null && length(v.oidc_auth_type) > 0 }
}
output "database_users_password" {
  description = "Map of password values across all database_users, keyed the same as var.database_users except keys with no password are omitted"
  value       = { for k, v in mongodbatlas_database_user.database_users : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "database_users_password_wo_version" {
  description = "Map of password_wo_version values across all database_users, keyed the same as var.database_users except keys with no password_wo_version are omitted"
  value       = { for k, v in mongodbatlas_database_user.database_users : k => v.password_wo_version if v.password_wo_version != null }
}
output "database_users_project_id" {
  description = "Map of project_id values across all database_users, keyed the same as var.database_users except keys with no project_id are omitted"
  value       = { for k, v in mongodbatlas_database_user.database_users : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "database_users_roles" {
  description = "Map of roles values across all database_users, keyed the same as var.database_users except keys with no roles are omitted"
  value       = { for k, v in mongodbatlas_database_user.database_users : k => v.roles if v.roles != null && length(v.roles) > 0 }
}
output "database_users_scopes" {
  description = "Map of scopes values across all database_users, keyed the same as var.database_users except keys with no scopes are omitted"
  value       = { for k, v in mongodbatlas_database_user.database_users : k => v.scopes if v.scopes != null && length(v.scopes) > 0 }
}
output "database_users_username" {
  description = "Map of username values across all database_users, keyed the same as var.database_users except keys with no username are omitted"
  value       = { for k, v in mongodbatlas_database_user.database_users : k => v.username if v.username != null && length(v.username) > 0 }
}
output "database_users_x509_type" {
  description = "Map of x509_type values across all database_users, keyed the same as var.database_users except keys with no x509_type are omitted"
  value       = { for k, v in mongodbatlas_database_user.database_users : k => v.x509_type if v.x509_type != null && length(v.x509_type) > 0 }
}

