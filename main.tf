resource "mongodbatlas_database_user" "database_users" {
  for_each = var.database_users

  auth_database_name  = each.value.auth_database_name
  project_id          = each.value.project_id
  username            = each.value.username
  aws_iam_type        = each.value.aws_iam_type
  description         = each.value.description
  ldap_auth_type      = each.value.ldap_auth_type
  oidc_auth_type      = each.value.oidc_auth_type
  password            = each.value.password
  password_wo         = each.value.password_wo
  password_wo_version = each.value.password_wo_version
  x509_type           = each.value.x509_type

  dynamic "labels" {
    for_each = each.value.labels != null ? each.value.labels : []
    content {
      key   = labels.value.key
      value = labels.value.value
    }
  }

  dynamic "roles" {
    for_each = each.value.roles != null ? each.value.roles : []
    content {
      collection_name = roles.value.collection_name
      database_name   = roles.value.database_name
      role_name       = roles.value.role_name
    }
  }

  dynamic "scopes" {
    for_each = each.value.scopes != null ? each.value.scopes : []
    content {
      name = scopes.value.name
      type = scopes.value.type
    }
  }
}

