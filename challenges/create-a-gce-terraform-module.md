# Create a Google Compute Instance Terraform Module

In this challenge, you will be creating a Google Compute Instance using Terraform. This challenge should be completed without copy/paste, and instead be built out using Terraform Google Provider documentation for the resources defined in the module.

## Challenge

1. Add `outputs.tf`, `variables.tf`, `main.tf`, and `versions.tf` files to the module. Populate the files with relevant items from the requirement below.
2. Add mechanism to pass in values into the module for `zone`, `image`, `google_org_id`, and `machine_type`.
3. The value for the `zone` variable should be `us-central1-a`.
4. The value for the `machine_type` variable should be `n1-standard-1`.
5. The value for the `image` variable should be `debian-cloud/debian-9`.
6. The value for the `google_org_id` variable should be `123456789`.
7. Create a Google Project called `a-project`.
8. Enable Compute Engine API.
9. Create a Google Compute Instance with the name `a-compute-instance`.
10. Add mechanism to expose `project_id `, `instance name`, and `zone` from the module as outputs.

## Validation

After creating the module, use terraform cli commands to validate the changes.

1. Validate
2. Plan to see what resources will be created
