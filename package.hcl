module {
  name        = "git-remote"
  provider    = "shell"
  version     = "1.0.0"
  description = "Manage a git remote"

  scripts {
    format = [
      "terraform fmt -recursive"
    ]

    lint = [
      "tflint --recursive",
      "shellcheck ./lifecycle/*.sh"
    ]
  }
}
