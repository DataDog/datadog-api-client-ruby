# Delete a single service definition returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ServiceDefinitionAPI.new
api_instance.delete_service_definition("service-definition-test")
