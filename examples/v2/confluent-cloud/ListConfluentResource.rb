# List Confluent Account resources returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::ConfluentCloudAPI.new
p api_instance.list_confluent_resource("account_id")
