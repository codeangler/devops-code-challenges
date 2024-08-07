# CODE CHALLENGE: Use Terraform and Google provider doucmentation and your experiences to fix the following terraform module.
# You can use Google search, documentation, and terraform commands to help you fix the module.
#
# This module should:
# - Create a Google Cloud project
# - Create a Google Cloud service account
# - Enable APIs using a google_project_service resource, will need to enable storage.googleapis.com and pubsub.googleapis.com
# - Assign the service account the role of Pub/Sub Publisher on the project
# - Resource consuming Google APIs should wait for APIs to be enabled before creating resources
# - The resources should have outputs associated with them
# - The module should have appropriate version/providers requirements
# - The location variable shouldnt prompt for input, and instead use terraform mechanisms to set the value for the variable before running terraform commands
# - When terraform runs on the default workspace, it should name the resources accordingly with the env. 
# - Bonus points if you can add a resource in that will ensure the google storage bucket name is globally unique

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