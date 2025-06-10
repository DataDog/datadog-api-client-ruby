# Get a list of all overrides for a schedule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "schedule" in the system
SCHEDULE_DATA_ID = ENV["SCHEDULE_DATA_ID"]
p api_instance.list_on_call_schedule_overrides(SCHEDULE_DATA_ID, (Time.now + -1 * 3600), (Time.now + 1 * 3600))
