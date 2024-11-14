output "path" {
  description = "The path to the git repository"
  value       = shell_script.git_remote.output.path
}

output "name" {
  description = "The name of the git remote"
  value       = shell_script.git_remote.output.name
}

output "url" {
  description = "The URL for the git remote"
  value       = shell_script.git_remote.output.url
}
