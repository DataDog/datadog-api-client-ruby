# Get all service objects returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OpsgenieIntegrationAPI.new
p api_instance.list_opsgenie_services()
