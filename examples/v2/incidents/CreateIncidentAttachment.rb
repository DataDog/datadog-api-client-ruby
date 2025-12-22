# Create incident attachment returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_attachment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::CreateAttachmentRequest.new({
  data: DatadogAPIClient::V2::CreateAttachmentRequestData.new({
    attributes: DatadogAPIClient::V2::CreateAttachmentRequestDataAttributes.new({
      attachment: DatadogAPIClient::V2::CreateAttachmentRequestDataAttributesAttachment.new({
        document_url: "https://app.datadoghq.com/notebook/123/Postmortem-IR-123",
        title: "Postmortem-IR-123",
      }),
      attachment_type: DatadogAPIClient::V2::AttachmentDataAttributesAttachmentType::POSTMORTEM,
    }),
    id: "00000000-0000-0000-0000-000000000000",
    type: DatadogAPIClient::V2::IncidentAttachmentType::INCIDENT_ATTACHMENTS,
  }),
})
p api_instance.create_incident_attachment("incident_id", body)
