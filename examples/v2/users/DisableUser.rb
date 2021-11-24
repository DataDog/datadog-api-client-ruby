# Disable a user returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsersAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]
api_instance.disable_user(USER_DATA_ID)
