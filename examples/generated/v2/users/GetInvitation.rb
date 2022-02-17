require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsersAPI.new
user_invitation_uuid = "00000000-0000-0000-3456-000000000000" # String | The UUID of the user invitation.

begin
  # Get a user invitation
  result = api_instance.get_invitation(user_invitation_uuid)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->get_invitation: #{e}"
end
