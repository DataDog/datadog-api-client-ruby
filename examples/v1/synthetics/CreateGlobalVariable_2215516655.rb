# Create a persistent email global variable returns a generated address

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsGlobalVariableRequest.new({
  name: "PERSISTENT_EMAIL_EXAMPLESYNTHETIC",
  description: "Persistent email variable",
  tags: [],
  is_email: true,
})
p api_instance.create_global_variable(body)
