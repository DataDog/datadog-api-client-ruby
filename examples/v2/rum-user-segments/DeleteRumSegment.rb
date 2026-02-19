# Delete a RUM segment returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_rum_segment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RUMUserSegmentsAPI.new
p api_instance.delete_rum_segment("a1b2c3d4-1234-5678-9abc-123456789abc")
