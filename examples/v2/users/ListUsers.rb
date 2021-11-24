# List all users returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsersAPI.new

# there is a valid "user" in the system
USER_DATA_ATTRIBUTES_EMAIL = ENV["USER_DATA_ATTRIBUTES_EMAIL"]
opts = {
  filter: USER_DATA_ATTRIBUTES_EMAIL,
}
p api_instance.list_users(opts)
