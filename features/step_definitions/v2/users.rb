Given('the "user" has a "user_invitation"') do
  user = fixtures[:user]

  api_instance = DatadogAPIClient::V2::UsersApi.new api_client

  data = DatadogAPIClient::V2::UserInvitationData.new
  data.type = "user_invitations"
  data.relationships = DatadogAPIClient::V2::UserInvitationRelationships.new
  data.relationships.user = DatadogAPIClient::V2::RelationshipToUser.new
  data.relationships.user.data = DatadogAPIClient::V2::RelationshipToUserData.new
  data.relationships.user.data.id = user.data.id
  data.relationships.user.data.type = user.data.type

  body = DatadogAPIClient::V2::UserInvitationsRequest.new
  body.data = [data]

  fixtures[:user_invitation] = api_instance.send_invitations({ body: body }).data[0]
end
