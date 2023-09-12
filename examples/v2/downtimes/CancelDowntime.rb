# Cancel a downtime returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::DowntimesAPI.new

# there is a valid "downtime_v2" in the system
DOWNTIME_V2_DATA_ID = ENV["DOWNTIME_V2_DATA_ID"]
api_instance.cancel_downtime(DOWNTIME_V2_DATA_ID)
