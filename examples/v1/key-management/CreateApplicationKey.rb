# Create an application key returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new

body = DatadogAPIClient::V1::ApplicationKey.new({
  hash: "1234512345123459cda4eb9ced49a3d84fd0138c",
  name: "example user",
  owner: "example.com",
})
p api_instance.create_application_key(body)
