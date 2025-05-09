# Delete on-call schedule returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "schedule" in the system
SCHEDULE_DATA_ID = ENV["SCHEDULE_DATA_ID"]
api_instance.delete_on_call_schedule(SCHEDULE_DATA_ID)
