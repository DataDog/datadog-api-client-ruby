# Get a downtime returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_downtime".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DowntimesAPI.new

# there is a valid "downtime_v2" in the system
DOWNTIME_V2_DATA_ID = ENV["DOWNTIME_V2_DATA_ID"]
p api_instance.get_downtime(DOWNTIME_V2_DATA_ID)
