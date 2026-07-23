# Update postmortem template returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_postmortem_template".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::PostmortemTemplateRequest.new({
  data: DatadogAPIClient::V2::PostmortemTemplateDataRequest.new({
    attributes: DatadogAPIClient::V2::PostmortemTemplateAttributesRequest.new({
      confluence_postmortem_settings: DatadogAPIClient::V2::ConfluencePostmortemSettings.new({
        account_id: "123456",
        parent_id: "345678",
        space_id: "789012",
      }),
      content: '# Overview\n\n# What Happened\n\n# Timeline\n\n# Action Items',
      google_docs_postmortem_settings: DatadogAPIClient::V2::GoogleDocsPostmortemSettings.new({
        account_id: "123456",
        parent_folder_id: "789012",
      }),
      is_default: "2024-01-01T00:00:00+00:00",
      location: DatadogAPIClient::V2::PostmortemTemplateLocation::DATADOG_NOTEBOOKS,
      name: "Standard Postmortem Template",
    }),
    id: "00000000-0000-0000-0000-000000000000",
    relationships: DatadogAPIClient::V2::PostmortemTemplateCreateRelationships.new({
      incident_type: DatadogAPIClient::V2::PostmortemTemplateIncidentTypeRelationship.new({
        data: DatadogAPIClient::V2::PostmortemTemplateIncidentTypeRelationshipData.new({
          id: "00000000-0000-0000-0000-000000000009",
          type: "incident_types",
        }),
      }),
    }),
    type: DatadogAPIClient::V2::PostmortemTemplateType::POSTMORTEM_TEMPLATES,
  }),
})
p api_instance.update_incident_postmortem_template("template_id", body)
