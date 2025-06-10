# Create an override returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "schedule" in the system
SCHEDULE_DATA_ID = ENV["SCHEDULE_DATA_ID"]

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

body = DatadogAPIClient::V2::OverrideRequest.new({
  data: [
    DatadogAPIClient::V2::OverrideCreateData.new({
      attributes: DatadogAPIClient::V2::OverrideCreateDataAttributes.new({
        start: Time.now,
        _end: (Time.now + 1 * 3600),
      }),
      relationships: DatadogAPIClient::V2::OverrideCreateDataRelationships.new({
        user: DatadogAPIClient::V2::OnCallUserRelationship.new({
          data: DatadogAPIClient::V2::OnCallUserRelationshipData.new({
            id: USER_DATA_ID,
            type: DatadogAPIClient::V2::OnCallUserRelationshipType::USERS,
          }),
        }),
      }),
      type: DatadogAPIClient::V2::OverrideCreateDataType::OVERRIDES,
    }),
  ],
})
p api_instance.create_on_call_schedule_override(SCHEDULE_DATA_ID, body)
