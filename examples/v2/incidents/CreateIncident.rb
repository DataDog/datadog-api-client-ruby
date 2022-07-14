# Create an incident returns "CREATED" response

require "datadog_api_client"
DatadogAPIClient::V2.configure do |config|
  config.unstable_operations["v2.create_incident".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

body = DatadogAPIClient::V2::IncidentCreateRequest.new({
  data: DatadogAPIClient::V2::IncidentCreateData.new({
    type: DatadogAPIClient::V2::IncidentType::INCIDENTS,
    attributes: DatadogAPIClient::V2::IncidentCreateAttributes.new({
      title: "Example-Create_an_incident_returns_CREATED_response",
      customer_impacted: false,
      fields: {
        state: DatadogAPIClient::V2::IncidentFieldAttributesSingleValue.new({
          type: DatadogAPIClient::V2::IncidentFieldAttributesSingleValueType::DROPDOWN,
          value: "resolved",
        }),
      },
    }),
    relationships: DatadogAPIClient::V2::IncidentCreateRelationships.new({
      commander_user: DatadogAPIClient::V2::NullableRelationshipToUser.new({
        data: DatadogAPIClient::V2::NullableRelationshipToUserData.new({
          type: DatadogAPIClient::V2::UsersType::USERS,
          id: USER_DATA_ID,
        }),
      }),
    }),
  }),
})
p api_instance.create_incident(body)
