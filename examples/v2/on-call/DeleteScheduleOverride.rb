# Delete On-Call schedule override returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "schedule" in the system
SCHEDULE_DATA_ID = ENV["SCHEDULE_DATA_ID"]

# there is a valid "override" in the system
OVERRIDE_DATA_0_ID = ENV["OVERRIDE_DATA_0_ID"]
api_instance.delete_schedule_override(SCHEDULE_DATA_ID, OVERRIDE_DATA_0_ID)
