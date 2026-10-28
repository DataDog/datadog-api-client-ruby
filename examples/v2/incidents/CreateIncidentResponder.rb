# Create an incident responder returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_incident_responder".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentResponderRequest.new({
  data: DatadogAPIClient::V2::IncidentResponderDataRequest.new({
    relationships: DatadogAPIClient::V2::IncidentResponderRelationshipsRequest.new({
      user: DatadogAPIClient::V2::IncidentResponderUserRelationship.new({
        data: DatadogAPIClient::V2::IncidentResponderUserRelationshipData.new({
          id: "00000000-0000-0000-0000-000000000000",
          type: "users",
        }),
      }),
    }),
    type: DatadogAPIClient::V2::IncidentResponderType::INCIDENT_RESPONDERS,
  }),
})
p api_instance.create_incident_responder("incident_id", body)
