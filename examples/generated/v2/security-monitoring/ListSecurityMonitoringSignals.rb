require "datadog_api_client"

DatadogAPIClient::V2.configure do |config|
  config.unstable_operations[:list_security_monitoring_signals] = true
end

api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
opts = {
  filter_query: "security:attack status:high", # String | The search query for security signals.
  filter_from: Time.parse("2019-01-02T09:42:36.320Z"), # Time | The minimum timestamp for requested security signals.
  filter_to: Time.parse("2019-01-03T09:42:36.320Z"), # Time | The maximum timestamp for requested security signals.
  sort: DatadogAPIClient::V2::SecurityMonitoringSignalsSort::TIMESTAMP_ASCENDING, # SecurityMonitoringSignalsSort | The order of the security signals in results.
  page_cursor: "eyJzdGFydEF0IjoiQVFBQUFYS2tMS3pPbm40NGV3QUFBQUJCV0V0clRFdDZVbG8zY3pCRmNsbHJiVmxDWlEifQ==", # String | A list of results using the cursor provided in the previous query.
  page_limit: 25, # Integer | The maximum number of security signals in the response.
}

begin
  # Get a quick list of security signals
  result = api_instance.list_security_monitoring_signals(opts)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling SecurityMonitoringAPI->list_security_monitoring_signals: #{e}"
end
