# Get a single service object returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OpsgenieIntegrationAPI.new
p api_instance.get_opsgenie_service("integration_service_id")
