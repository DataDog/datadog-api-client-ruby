# Update an incident todo returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_todo".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident" in the system
INCIDENT_DATA_ID = ENV["INCIDENT_DATA_ID"]

# the "incident" has an "incident_todo"
INCIDENT_TODO_DATA_ID = ENV["INCIDENT_TODO_DATA_ID"]

body = DatadogAPIClient::V2::IncidentTodoPatchRequest.new({
  data: DatadogAPIClient::V2::IncidentTodoPatchData.new({
    attributes: DatadogAPIClient::V2::IncidentTodoAttributes.new({
      assignees: [
        "@test.user@test.com",
      ],
      content: "Restore lost data.",
      completed: "2023-03-06T22:00:00.000000+00:00",
      due_date: "2023-07-10T05:00:00.000000+00:00",
    }),
    type: DatadogAPIClient::V2::IncidentTodoType::INCIDENT_TODOS,
  }),
})
p api_instance.update_incident_todo(INCIDENT_DATA_ID, INCIDENT_TODO_DATA_ID, body)
