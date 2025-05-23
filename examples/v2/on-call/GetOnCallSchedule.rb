# Get On-Call schedule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "schedule" in the system
SCHEDULE_DATA_ID = ENV["SCHEDULE_DATA_ID"]
p api_instance.get_on_call_schedule(SCHEDULE_DATA_ID)
