# Create an API key returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new

body = DatadogAPIClient::V1::ApiKey.new({
  created: "2019-08-02 15:31:07",
  created_by: "john@example.com",
  key: "1234512345123456abcabc912349abcd",
  name: "example user",
})
p api_instance.create_api_key(body)
