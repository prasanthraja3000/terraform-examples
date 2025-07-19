locals {
  usernames = [for p in randomrandom_pet.names: p.id ]

  user_email_map = zipmap(local.usernames, [
    for u in local.usernames : "${u}@example.com"
  ])

  env_user_map = merge([
    for env in var.var.environments : 
    { "${env}" = local.user_email_map}
  ]...)
}