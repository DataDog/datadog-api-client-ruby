# Get a downtime returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DowntimesAPI.new

# there is a valid "downtime" in the system
DOWNTIME_ID = ENV["DOWNTIME_ID"]
p api_instance.get_downtime(DOWNTIME_ID.to_i)
