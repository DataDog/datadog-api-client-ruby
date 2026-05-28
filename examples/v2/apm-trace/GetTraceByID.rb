# Get a trace by ID returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_trace_by_id".to_sym] = true
end
api_instance = DatadogAPIClient::V2::APMTraceAPI.new
p api_instance.get_trace_by_id("trace_id")
