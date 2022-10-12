# Get a single service definition returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceDefinitionAPI.new
p api_instance.get_service_definition("service-Example-Get_a_single_service_definition_returns_OK_response")
