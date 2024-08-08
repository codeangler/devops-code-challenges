# Create a Google Compute Instance Terraform Module

In this challenge, you will be creating a Google Compute Instance using Terraform. This challenge should be completed without copy/paste, and instead be built out using Terraform Google Provider documentation for the resources defined in the module.

## Challenge

1. Create resource definitions, variables, and outputs
   1. Add mechanism to pass in values into the module for `zone`, `image`, `google_org_id`, and `machine_type`.
   2. The value for the `zone` variable should be `us-central1-a`.
   3. The value for the `machine_type` variable should be `n1-standard-1`.
   4. The value for the `image` variable should be `debian-cloud/debian-9`.
   5. The value for the `google_org_id` variable should be `123456789`.
   6. Create a Google Project called `a-project`.
   7. Enable Compute Engine API.
   8. Create a Google Compute Instance with the name `a-compute-instance`.
   9. Add mechanism to expose `project_id `, `instance name`, and `zone` from the module as outputs.

## Validation

After creating the module, use terraform cli commands to validate the changes.

1. Validate
2. Plan to see what resources will be created
