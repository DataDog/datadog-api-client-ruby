# Get a global variable returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new
p api_instance.get_global_variable("variable_id")
