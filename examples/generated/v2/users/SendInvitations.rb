require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::UsersAPI.new
body = DatadogAPIClient::V2::UserInvitationsRequest.new({data: [DatadogAPIClient::V2::UserInvitationData.new({relationships: DatadogAPIClient::V2::UserInvitationRelationships.new({user: DatadogAPIClient::V2::RelationshipToUser.new({data: DatadogAPIClient::V2::RelationshipToUserData.new({id: '00000000-0000-0000-0000-000000000000', type: DatadogAPIClient::V2::UsersType::USERS})})}), type: DatadogAPIClient::V2::UserInvitationsType::USER_INVITATIONS})]}) # UserInvitationsRequest | 

begin
  # Send invitation emails
  result = api_instance.send_invitations(body)
  p result
rescue DatadogAPIClient::V2::APIError => e
  puts "Error when calling UsersAPI->send_invitations: #{e}"
end
