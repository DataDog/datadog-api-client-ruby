# List all metrics with volumes and query activity returns "Success" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::MetricsAPI.new
api_instance.list_tag_configurations_with_pagination() { |item| puts item }
