# Update a Salesforce incident template returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SalesforceIntegrationAPI.new

body = DatadogAPIClient::V2::SalesforceIncidentsTemplateUpdateRequest.new({
  data: DatadogAPIClient::V2::SalesforceIncidentsTemplateUpdateData.new({
    attributes: DatadogAPIClient::V2::SalesforceIncidentsTemplateUpdateAttributes.new({
      description: "An incident was detected by Datadog monitors.",
      name: "production-outage",
      owner_id: "005000000000000",
      priority: DatadogAPIClient::V2::SalesforceIncidentsTemplatePriority::HIGH,
      salesforce_org_id: "596da4af-0563-4097-90ff-07230c3f9db3",
      subject: "Datadog Incident: Production Outage",
    }),
    id: "596da4af-0563-4097-90ff-07230c3f9db3",
    type: DatadogAPIClient::V2::SalesforceIncidentsTemplateType::SALESFORCE_INCIDENTS_INCIDENT_TEMPLATE,
  }),
})
p api_instance.update_incident_template("incident_template_id", body)
