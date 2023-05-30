# Delete an STS enabled GCP Account returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GCPIntegrationAPI.new
api_instance.delete_gcpsts_account("account_id")
