# Create an incident Jira issue returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_jira_issue".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentJiraIssueRequest.new({
  data: DatadogAPIClient::V2::IncidentJiraIssueDataRequest.new({
    attributes: DatadogAPIClient::V2::IncidentJiraIssueDataAttributesRequest.new({
      account_id: "123456",
      issue_type_id: "10001",
      project_id: "10000",
      template_id: "00000000-0000-0000-0000-000000000000",
    }),
    type: DatadogAPIClient::V2::IncidentJiraIssueType::INCIDENT_JIRA_ISSUES,
  }),
})
p api_instance.create_incident_jira_issue("incident_id", body)
