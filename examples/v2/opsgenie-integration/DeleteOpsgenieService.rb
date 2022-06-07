# Delete a single service object returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OpsgenieIntegrationAPI.new
api_instance.delete_opsgenie_service("integration_service_id")
