# List all RUM segments returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_rum_segments".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RUMUserSegmentsAPI.new
p api_instance.list_rum_segments()
