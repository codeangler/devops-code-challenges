# Create a Google Compute Instance Terraform Module

In this challenge, you will be creating a Google Compute Instance using Terraform. This challenge should be completed without copy/paste, and instead be built out using Terraform Google Provider documentation for the resources defined in the module.

## Challenge

1. Create resource definitions, variables, and outputs
   1. Create a Google Project
   2. Enable Compute Engine API
   3. Create a Google Compute Instance.
   4. Add inputs for `zone`, `image`, and `machine_type`
   5. Add outputs for `project_id `, `instance name`, and `zone`.
   6. The instance should be created in the `us-central1-a` zone.
   7. The machine type should be `n1-standard-1`.
   8. The image should be debian based.
2. Run Terraform commands to verify the module, and to see what resources will be created.
