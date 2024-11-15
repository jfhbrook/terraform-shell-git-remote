resource "shell_script" "git_remote" {
  lifecycle_commands {
    create = file("${path.module}/lifecycle/create.sh")
    read   = file("${path.module}/lifecycle/read.sh")
    update = file("${path.module}/lifecycle/update.sh")
    delete = file("${path.module}/lifecycle/delete.sh")
  }

  environment = {
    name = var.name
    url  = var.url
  }

  interpreter       = ["/usr/bin/env", "bash", "-c"]
  working_directory = var.path
}
