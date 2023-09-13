# Get a custom destination returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_logs_custom_destination".to_sym] = true
end
api_instance = DatadogAPIClient::V2::LogsCustomDestinationsAPI.new

# there is a valid "logs_custom_destination" in the system
LOGS_CUSTOM_DESTINATION_DATA_ID = ENV["LOGS_CUSTOM_DESTINATION_DATA_ID"]
p api_instance.get_logs_custom_destination(LOGS_CUSTOM_DESTINATION_DATA_ID)
