# List delegate account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GCPIntegrationAPI.new
p api_instance.get_gcpsts_delegate()
