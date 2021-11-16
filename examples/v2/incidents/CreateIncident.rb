# Create an incident returns "CREATED" response

require 'datadog_api_client'
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "user" in the system
USER_DATA_ID = ENV["USER_DATA_ID"]

body = DatadogAPIClient::V2::IncidentCreateRequest.new({
  data: DatadogAPIClient::V2::IncidentCreateData.new({
    type: DatadogAPIClient::V2::IncidentType::INCIDENTS,
    attributes: DatadogAPIClient::V2::IncidentCreateAttributes.new({
      title: 'Example-Create_an_incident_returns_CREATED_response',
      customer_impacted: false,
      fields: DatadogAPIClient::V2::IncidentCreateAttributesFields.new({
        state: DatadogAPIClient::V2::IncidentFieldAttributesSingleValue.new({
          type: DatadogAPIClient::V2::IncidentFieldAttributesSingleValueType::DROPDOWN,
          value: 'resolved'
        }) })
    }),
    relationships: DatadogAPIClient::V2::IncidentCreateRelationships.new({
      commander: DatadogAPIClient::V2::RelationshipToUser.new({
        data: DatadogAPIClient::V2::RelationshipToUserData.new({
          type: DatadogAPIClient::V2::UsersType::USERS,
          id: USER_DATA_ID
        })
      })
    })
  })
})
p api_instance.create_incident(body)
