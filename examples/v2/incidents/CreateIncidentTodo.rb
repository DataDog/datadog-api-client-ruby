# Create an incident todo returns "CREATED" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_todo".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident" in the system
INCIDENT_DATA_ID = ENV["INCIDENT_DATA_ID"]

body = DatadogAPIClient::V2::IncidentTodoCreateRequest.new({
  data: DatadogAPIClient::V2::IncidentTodoCreateData.new({
    attributes: DatadogAPIClient::V2::IncidentTodoAttributes.new({
      assignees: [
        "@test.user@test.com",
      ],
      content: "Restore lost data.",
    }),
    type: DatadogAPIClient::V2::IncidentTodoType::INCIDENT_TODOS,
  }),
})
p api_instance.create_incident_todo(INCIDENT_DATA_ID, body)
