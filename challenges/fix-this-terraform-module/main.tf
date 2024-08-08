# CODE CHALLENGE: Use Terraform and Google provider doucmentation and your experiences to fix the following terraform module.
# You can use Google search, documentation, and terraform commands to help you fix the module.
#
# This module should meet the following requirements:
#
# - Create a Google Cloud project titled `a-project`
# - Enable Google APIs: `storage.googleapis.com` and `pubsub.googleapis.com`
# - Create a Google service account
# - Assign the service account the role of Pub/Sub Publisher in the project
# - Have proper dependencies between resources, such as ones that require an API to be enabled first before creation
# - The resources should have outputs associated with them
# - The module should have appropriate version/providers requirements for terraform modules
# - The location variable shouldn't prompt for input, and instead use terraform mechanisms to set the value for the variable before running terraform commands
# - When terraform runs on the default workspace, it should name the resources accordingly with the env. 
#

locals {
  env = terraform.workspace == "prod" ? "p" : "np"
}

# enable google APIs
resource "google_project_service" "apis" {
  project = google_project.service.project_id
  service = each.value
  for_each = toset([
    "storage.googleapis.com",
  ])
}

# create a google service account
resource "google_service_account" "account" {
  account_id   = "a-google-account-${local.env}"
  display_name = "Google Service Account For Code Challenge"
  project      = google_project.project.project_id
}

# assign IAM roles to the service account
resource "google_project_iam_member" "roles" {
  project = google_project.project.project_id
  role    = "roles/pubsub.publisher"
  member  = "serviceAccount:${google_service_account.account.email}"
}

# create a storage bucket
resource "google_storage_bucket" "bucket" {
  name     = "a-google-bucket-${local.env}"
  location = var.location
  project  = google_project.project.project_id
}