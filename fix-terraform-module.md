 # Debug and Fix Terraform Module

Use Terraform and Google provider doucmentation and your experiences to fix the `fix-this-terraform-module` contained in this repo. You can use Google search, documentation, and terraform commands to help you fix the module.

## Module Requirements

 - Create a Google Cloud project
 - Create a Google Cloud service account
 - Enable APIs using a google_project_service resource, will need to enable storage.googleapis.com and pubsub.googleapis.com
 - Assign the service account the role of Pub/Sub Publisher on the project
 - Resource consuming Google APIs should wait for APIs to be enabled before creating resources
 - The resources should have outputs associated with them
 - The module should have appropriate version/providers requirements
 - The location variable shouldnt prompt for input, and instead use terraform mechanisms to set the value for the variable before running terraform commands
 - When terraform runs on the default workspace, it should name the resources accordingly with the env. 

## Bonus Points

 - add a resource in that will ensure the Google Storage Bucket's name is globally unique
