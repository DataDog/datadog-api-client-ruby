# List Fastly services returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::FastlyIntegrationAPI.new
p api_instance.list_fastly_services("account_id")
