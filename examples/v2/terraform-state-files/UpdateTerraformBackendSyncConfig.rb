# Update a Terraform backend sync configuration returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TerraformStateFilesAPI.new

body = DatadogAPIClient::V2::TerraformBackendUpdateRequest.new({
  data: DatadogAPIClient::V2::TerraformBackendUpdateData.new({
    attributes: DatadogAPIClient::V2::TerraformBackendUpdateAttributes.new({
      bucket_names: [
        "terraform-state-bucket",
      ],
    }),
    id: "9007199254740993",
    type: DatadogAPIClient::V2::TerraformBackendType::TERRAFORM_BACKENDS,
  }),
})
p api_instance.update_terraform_backend_sync_config("9007199254740993", body)
