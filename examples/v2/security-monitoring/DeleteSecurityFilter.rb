# Delete a security filter returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
api_instance.delete_security_filter("security_filter_id")
