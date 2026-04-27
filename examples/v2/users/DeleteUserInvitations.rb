# Delete a pending user's invitations returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsersAPI.new
p api_instance.delete_user_invitations("4dee724d-00cc-11ea-a77b-570c9d03c6c5")
