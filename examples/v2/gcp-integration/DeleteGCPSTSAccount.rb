# Delete an STS enabled GCP Account returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GCPIntegrationAPI.new

# there is a valid "gcp_sts_account" in the system
GCP_STS_ACCOUNT_DATA_ID = ENV["GCP_STS_ACCOUNT_DATA_ID"]
api_instance.delete_gcpsts_account(GCP_STS_ACCOUNT_DATA_ID)
