# Create On-Call schedule overrides returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::OnCallAPI.new

# there is a valid "schedule" in the system
SCHEDULE_DATA_ID = ENV["SCHEDULE_DATA_ID"]

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

body = DatadogAPIClient::V2::CreateOverridesRequest.new({
  data: [
    DatadogAPIClient::V2::CreateOverrideRequestData.new({
      attributes: DatadogAPIClient::V2::CreateOverrideRequestAttributes.new({
        _end: (Time.now + 1 * 86400),
        start: Time.now,
      }),
      relationships: DatadogAPIClient::V2::CreateOverrideRequestRelationships.new({
        user: DatadogAPIClient::V2::OverrideRelationshipsUser.new({
          data: DatadogAPIClient::V2::OverrideRelationshipsUserData.new({
            id: USER_DATA_ID,
            type: DatadogAPIClient::V2::OverrideRelationshipsUserDataType::USERS,
          }),
        }),
      }),
      type: DatadogAPIClient::V2::OverrideDataType::OVERRIDES,
    }),
  ],
})
p api_instance.create_schedule_overrides(SCHEDULE_DATA_ID, body)
