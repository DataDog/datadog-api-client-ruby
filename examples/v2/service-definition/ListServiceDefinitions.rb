# Get all service definitions returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceDefinitionAPI.new
p api_instance.list_service_definitions()
