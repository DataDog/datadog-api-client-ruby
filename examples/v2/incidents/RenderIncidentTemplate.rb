# Render an incident template returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.render_incident_template".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentRenderTemplateRequest.new({
  data: DatadogAPIClient::V2::IncidentRenderTemplateDataRequest.new({
    attributes: DatadogAPIClient::V2::IncidentRenderTemplateDataAttributesRequest.new({
      content: "Incident INC-123 is SEV-1.",
      datetime_format: "2006-01-02T15:04:05Z07:00",
      timezone: "America/New_York",
      validate_links: false,
      validate_variables: false,
    }),
    type: DatadogAPIClient::V2::IncidentRenderedTemplateType::RENDERED_TEMPLATES,
  }),
})
p api_instance.render_incident_template("incident_id", body)
