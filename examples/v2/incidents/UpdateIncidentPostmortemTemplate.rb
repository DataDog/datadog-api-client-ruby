# Update postmortem template returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_postmortem_template".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::PostmortemTemplateRequest.new({
  data: DatadogAPIClient::V2::PostmortemTemplateDataRequest.new({
    attributes: DatadogAPIClient::V2::PostmortemTemplateAttributesRequest.new({
      name: "Standard Postmortem Template",
    }),
    type: DatadogAPIClient::V2::PostmortemTemplateType::POSTMORTEM_TEMPLATE,
  }),
})
p api_instance.update_incident_postmortem_template("template-456", body)
