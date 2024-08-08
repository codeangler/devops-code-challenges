 # Debug and Fix terraform Module

Use terraform and Google provider doucmentation and your experiences to fix the [fix-this-terraform-module](./fix-this-terraform-module/) terraform module contained in this repo. You can use Google search, documentation, and terraform commands to help you fix the module.

## Module Requirements

This module meet the following requirements:

- Have variables for the location (string) and google_org_id (string), values should be:
  - `location` = "us-central1"
  - `google_org_id` = "123456789"
- Create a Google Cloud project titled `a-project`, with the provided `google_org_id` value as the org_id for the resource
- Enable Google APIs: `storage.googleapis.com` and `pubsub.googleapis.com`
- Create a Google service account
- Assign the service account `roles/pubsub.publisher` and `roles/storage.objectAdmin` in the project
- Have explicit/implicit dependencies between related resources, such as ones that require an API to be enabled first before creation
- Have outputs for the project_id, google service account email, and Pub/Sub topic name
- The module should have appropriate version/providers configurations for terraform modules
- The `location` and  `google_org_id` variables shouldn't prompt for input, and instead use terraform mechanisms to set the value for the variable before running terraform commands
- When terraform runs on the default workspace, it should name the resources accordingly with the env. 

## Bonus Points

 - add a resource in that will ensure the Google Storage Bucket's name is globally unique
