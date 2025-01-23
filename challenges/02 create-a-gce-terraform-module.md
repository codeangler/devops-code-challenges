# Create a Google Compute Instance Terraform Module

In this challenge, you will be creating a Google Compute Instance using Terraform. This challenge should be completed without copy/paste, and instead be built out using Terraform Google Provider documentation for the resources defined in the module.

## Challenge

1. Add `outputs.tf`, `variables.tf`, `main.tf`, and `versions.tf` files to the module. Populate the files with relevant items from the requirement below.
2. Add variables to pass values into the module for `zone`, `image`, `google_org_id`, and `machine_type`.
   1. The value for the `zone` variable should be `us-central1-a`.
   2. The value for the `machine_type` variable should be `n1-standard-1`.
   3. The value for the `image` variable should be `debian-cloud/debian-9`.
   4. The value for the `google_org_id` variable should be `123456789`.
3. Create a Google Project called `a-project` with the provided `google_org_id` value as the `org_id` for the Google project resource.
4. Enable Compute Engine API.
5. Create a Google Compute Instance with the name `a-compute-instance`.
6. Ensure resources have implicit/explicit dependencies between related resources.
7. Add mechanism to expose `project_id `, `instance name`, and `zone` from the module as outputs.

## Validation

After creating the module, use terraform cli commands to validate the changes.

1. Validate
2. Plan to see what resources will be created
