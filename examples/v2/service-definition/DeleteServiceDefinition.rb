# Delete a single service definition returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ServiceDefinitionAPI.new
api_instance.delete_service_definition("service-definition-test")
