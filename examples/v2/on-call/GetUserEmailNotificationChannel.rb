# Get an On-Call email for a user returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

# there is a valid "oncall_email" in the system
ONCALL_EMAIL_DATA_ID = ENV["ONCALL_EMAIL_DATA_ID"]
p api_instance.get_user_email_notification_channel(USER_DATA_ID, ONCALL_EMAIL_DATA_ID)
