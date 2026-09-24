# List all APM retention filters returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::APMRetentionFiltersAPI.new
p api_instance.list_apm_retention_filters()
