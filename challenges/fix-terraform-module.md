 # Debug and Fix terraform Module

Use terraform and Google provider doucmentation and your experiences to fix the [fix-this-terraform-module](./fix-this-terraform-module/) terraform module contained in this repo. You can use Google search, documentation, and terraform commands to help you fix the module.

## Module Requirements

This module meet the following requirements:

- Create a Google Cloud project titled `a-project`
- Enable Google APIs: `storage.googleapis.com` and `pubsub.googleapis.com`
- Create a Google service account
- Assign the service account the role of Pub/Sub Publisher in the project
- Have proper dependencies between resources, such as ones that require an API to be enabled first before creation
- The resources should have outputs associated with them
- The module should have appropriate version/providers requirements for terraform modules
- The location variable shouldn't prompt for input, and instead use terraform mechanisms to set the value for the variable before running terraform commands
- When terraform runs on the default workspace, it should name the resources accordingly with the env. 

## Bonus Points

 - add a resource in that will ensure the Google Storage Bucket's name is globally unique
