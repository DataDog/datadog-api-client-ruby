# Get all downtimes returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_downtimes".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DowntimesAPI.new
p api_instance.list_downtimes()
