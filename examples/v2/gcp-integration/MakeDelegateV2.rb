# Create a Datadog GCP principal returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GCPIntegrationAPI.new
p api_instance.make_delegate_v2()
