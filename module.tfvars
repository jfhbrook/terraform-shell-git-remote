module = {
  description = "Manage a git remote"
  git = {
    main_branch = "main"
  }
  name      = "git-remote"
  namespace = "jfhbrook"
  provider  = "shell"
  scripts = {
    format = ["terraform fmt -recursive"]
    lint   = ["tflint --recursive", "shellcheck ./lifecycle/*.sh"]
  }
  version = "1.0.0"
}
