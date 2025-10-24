# Delete GCP scan options returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AgentlessScanningAPI.new
api_instance.delete_gcp_scan_options("company-project-id")
