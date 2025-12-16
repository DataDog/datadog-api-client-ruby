# List On-Call notification channels for a user returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]
p api_instance.list_user_notification_channels(USER_DATA_ID)
