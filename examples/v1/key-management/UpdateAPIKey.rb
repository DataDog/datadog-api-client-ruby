# Edit an API key returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new

body = DatadogAPIClient::V1::ApiKey.new({
  name: "example user",
})
p api_instance.update_api_key("key", body)
