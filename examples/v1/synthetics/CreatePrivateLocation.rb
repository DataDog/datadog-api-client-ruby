# Create a private location returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsPrivateLocation.new({
  description: "Description of private location",
  name: "New private location",
  tags: [
    "team:front",
  ],
})
p api_instance.create_private_location(body)
