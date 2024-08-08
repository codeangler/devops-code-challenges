output "value" {
  value = {
    project         = google_project.project.project_id
    service_account = google_service_account.account.email
  }
}