# Create a Terraform backend sync configuration returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TerraformStateFilesAPI.new

body = DatadogAPIClient::V2::TerraformBackendCreateRequest.new({
  data: DatadogAPIClient::V2::TerraformBackendCreateData.new({
    attributes: DatadogAPIClient::V2::TerraformBackendCreateAttributes.new({
      account_id: "123456789012",
      backend_type: DatadogAPIClient::V2::TerraformBackendKind::TERRAFORM,
      bucket_names: [
        "terraform-state-bucket",
      ],
      region: "us-east-1",
    }),
    type: DatadogAPIClient::V2::TerraformBackendType::TERRAFORM_BACKENDS,
  }),
})
p api_instance.create_terraform_backend_sync_config(body)
