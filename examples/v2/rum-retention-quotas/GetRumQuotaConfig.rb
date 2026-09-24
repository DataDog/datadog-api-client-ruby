# Get a RUM retention quota configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RUMRetentionQuotasAPI.new
p api_instance.get_rum_quota_config(RumRetentionQuotaScopeType::APPLICATION, "cd73a516-a481-4af5-8352-9b577465c77b")
