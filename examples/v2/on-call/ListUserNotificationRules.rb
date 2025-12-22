# List On-Call notification rules for a user returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]
opts = {
  include: "channel",
}
p api_instance.list_user_notification_rules(USER_DATA_ID, opts)
