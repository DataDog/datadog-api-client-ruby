# Send invitation emails returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::UsersAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

body = DatadogAPIClient::V2::UserInvitationsRequest.new({
  data: [
    DatadogAPIClient::V2::UserInvitationData.new({
      type: DatadogAPIClient::V2::UserInvitationsType::USER_INVITATIONS,
      relationships: DatadogAPIClient::V2::UserInvitationRelationships.new({
        user: DatadogAPIClient::V2::RelationshipToUser.new({
          data: DatadogAPIClient::V2::RelationshipToUserData.new({
            type: DatadogAPIClient::V2::UsersType::USERS,
            id: USER_DATA_ID,
          }),
        }),
      }),
    }),
  ],
})
p api_instance.send_invitations(body)
