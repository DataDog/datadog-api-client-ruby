# Create an incident Jira template returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_jira_template".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentJiraTemplateRequest.new({
  data: DatadogAPIClient::V2::IncidentJiraTemplateDataRequest.new({
    attributes: DatadogAPIClient::V2::IncidentJiraTemplateDataAttributesRequest.new({
      account_id: "123456",
      field_configurations: [
        DatadogAPIClient::V2::IncidentJiraTemplateFieldConfiguration.new({
          incident_field: "title",
          jira_field_key: "summary",
          jira_field_type: "string",
          sync_direction: "bidirectional",
        }),
      ],
      is_default: false,
      issue_id: "10001",
      name: "Default Jira Template",
      project_id: "10000",
      project_key: "INC",
      sync_enabled: true,
      type: "jira",
    }),
    relationships: DatadogAPIClient::V2::IncidentJiraTemplateRelationships.new({
      incident_type: DatadogAPIClient::V2::IncidentJiraTemplateIncidentTypeRelationship.new({
        data: DatadogAPIClient::V2::IncidentJiraTemplateIncidentTypeRelationshipData.new({
          id: "00000000-0000-0000-0000-000000000000",
          type: "incident_types",
        }),
      }),
    }),
    type: DatadogAPIClient::V2::IncidentJiraTemplateType::INCIDENTS_JIRA_TEMPLATES,
  }),
})
p api_instance.create_incident_jira_template(body)
