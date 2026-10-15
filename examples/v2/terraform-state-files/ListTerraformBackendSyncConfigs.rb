# List Terraform backend sync configurations returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TerraformStateFilesAPI.new
opts = {
  account_id: "123456789012",
}
p api_instance.list_terraform_backend_sync_configs(opts)
