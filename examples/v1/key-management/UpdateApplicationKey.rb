# Edit an application key returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::KeyManagementAPI.new

body = DatadogAPIClient::V1::ApplicationKey.new({
  name: "example user",
})
p api_instance.update_application_key("key", body)
