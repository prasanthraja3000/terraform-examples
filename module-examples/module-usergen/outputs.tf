output "user_map" {
  value = local.env_user_map
  description = "Map of environments to user-email"
}


output "output_file" {
  value = local_file.output_file.filename
  description = "Path to the generated local JSON file"
}