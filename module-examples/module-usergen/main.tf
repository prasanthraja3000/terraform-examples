resource "local_file" "output_file" {
  filename = "../user_output.json"
  content = jsonencode(local.env_user_map)
  lifecycle {
    create_before_destroy = true
  }

  provisioner "local-exec" {
    command = "echo 'Creating a file with the user details'"
    when = create
  }

  provisioner "local-exec" {
    command = "echo 'File is getting deleted or replacing with the new one'"
    when = destroy
  }

  depends_on = [ random_pet.names ]
}

resource "random_pet" "names" {
  count = var.user_count
}