# Create a Google Compute Instance Terraform Module

In this challenge, you will be creating a Google Compute Instance using Terraform. This challenge should be completed without copy/paste, and instead be built out using Terraform Google Provider documentation for the resources defined in the module.

## Challenge

1. Create resource definitions, variables, and outputs
   1. Create a Google Project
   2. Enable Compute Engine API
   3. Create a Google Compute Instance.
   4. Add mechanism to pass in values into the module for `zone`, `image`, `google_org_id`, and `machine_type` on the instance's Terraform definition.
   5. Add mechanism to expose `project_id `, `instance name`, and `zone` from the module.
   6. The instance should be created in the `us-central1-a` zone.
   7. The machine type should be `n1-standard-1`.
   8. The image should be `debian` based.
2. Run Terraform commands to verify the module, and to see what resources will be created when applied.
