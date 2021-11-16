# Update a downtime returns "OK" response

require 'datadog_api_client'
api_instance = DatadogAPIClient::V1::DowntimesAPI.new

# there is a valid "downtime" in the system
DOWNTIME_ID = ENV["DOWNTIME_ID"]

body = DatadogAPIClient::V1::Downtime.new({ message: 'Example-Update_a_downtime_returns_OK_response-updated' })
p api_instance.update_downtime(DOWNTIME_ID.to_i, body)
