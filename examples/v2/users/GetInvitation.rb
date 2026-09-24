# Get a user invitation returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::UsersAPI.new

# the "user" has a "user_invitation"
USER_INVITATION_ID = ENV["USER_INVITATION_ID"]
p api_instance.get_invitation(USER_INVITATION_ID)
