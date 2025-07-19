output "user_data_by_environment" {
  value = module.usergenerate.user_map
  description = "Output from the module with full actual content"
}


output "user_file_path" {
  value = module.usergenerate.output_file
  description = "Output from the module with file path"
}