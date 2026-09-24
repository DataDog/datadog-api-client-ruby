# Get all organization handles returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::GoogleChatIntegrationAPI.new
p api_instance.list_organization_handles("e54cb570-c674-529c-769d-84b312288ed7")
