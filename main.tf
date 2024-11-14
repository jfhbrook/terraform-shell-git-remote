resource "shell_script" "git_remote" {
  lifecycle_commands {
    create = file("${path.module}/scripts/create.sh")
    read   = file("${path.module}/scripts/read.sh")
    update = file("${path.module}/scripts/update.sh")
    delete = file("${path.module}/scripts/delete.sh")
  }

  environment = {
    name = var.name
    url  = var.url
  }

  interpreter       = ["/usr/bin/env", "bash", "-c"]
  working_directory = var.path
}
