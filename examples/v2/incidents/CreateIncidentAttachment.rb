# Create incident attachment returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_attachment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident" in the system
INCIDENT_DATA_ID = ENV["INCIDENT_DATA_ID"]

body = DatadogAPIClient::V2::CreateAttachmentRequest.new({
  data: DatadogAPIClient::V2::CreateAttachmentRequestData.new({
    attributes: DatadogAPIClient::V2::CreateAttachmentRequestDataAttributes.new({
      attachment: DatadogAPIClient::V2::CreateAttachmentRequestDataAttributesAttachment.new({
        document_url: "https://app.datadoghq.com/notebook/ExampleIncident/Example-Incident",
        title: "Example-Incident",
      }),
      attachment_type: DatadogAPIClient::V2::AttachmentDataAttributesAttachmentType::POSTMORTEM,
    }),
    type: DatadogAPIClient::V2::IncidentAttachmentType::INCIDENT_ATTACHMENTS,
  }),
})
p api_instance.create_incident_attachment(INCIDENT_DATA_ID, body)
