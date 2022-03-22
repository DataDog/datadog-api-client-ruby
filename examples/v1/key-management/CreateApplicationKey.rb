# Create an application key returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new

body = DatadogAPIClient::V1::ApplicationKey.new({
  name: "example user",
})
p api_instance.create_application_key(body)
