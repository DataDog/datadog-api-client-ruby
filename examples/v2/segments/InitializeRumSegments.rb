# Initialize rum segments returns "Default segments created successfully" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.initialize_rum_segments".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SegmentsAPI.new
p api_instance.initialize_rum_segments()
