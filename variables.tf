variable "database_users" {
  description = <<EOT
Map of database_users, attributes below
Required:
    - auth_database_name
    - project_id
    - username
Optional:
    - aws_iam_type
    - description
    - ldap_auth_type
    - oidc_auth_type
    - password
    - password_wo
    - password_wo_version
    - x509_type
    - labels (block):
        - key (optional)
        - value (optional)
    - roles (block):
        - collection_name (optional)
        - database_name (required)
        - role_name (required)
    - scopes (block):
        - name (optional)
        - type (optional)
EOT

  type = map(object({
    auth_database_name  = string
    project_id          = string
    username            = string
    aws_iam_type        = optional(string)
    description         = optional(string)
    ldap_auth_type      = optional(string)
    oidc_auth_type      = optional(string)
    password            = optional(string)
    password_wo         = optional(string)
    password_wo_version = optional(number)
    x509_type           = optional(string)
    labels = optional(list(object({
      key   = optional(string)
      value = optional(string)
    })))
    roles = optional(list(object({
      collection_name = optional(string)
      database_name   = string
      role_name       = string
    })))
    scopes = optional(list(object({
      name = optional(string)
      type = optional(string)
    })))
  }))
}

