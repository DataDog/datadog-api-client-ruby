# Delete a Terraform backend sync configuration returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TerraformStateFilesAPI.new
api_instance.delete_terraform_backend_sync_config("9007199254740993")
