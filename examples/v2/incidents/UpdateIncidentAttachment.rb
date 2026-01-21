# Update incident attachment returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_attachment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident" in the system
INCIDENT_DATA_ID = ENV["INCIDENT_DATA_ID"]

# there is a valid "incident_attachment" in the system
INCIDENT_ATTACHMENT_DATA_ID = ENV["INCIDENT_ATTACHMENT_DATA_ID"]

body = DatadogAPIClient::V2::PatchAttachmentRequest.new({
  data: DatadogAPIClient::V2::PatchAttachmentRequestData.new({
    attributes: DatadogAPIClient::V2::PatchAttachmentRequestDataAttributes.new({
      attachment: DatadogAPIClient::V2::PatchAttachmentRequestDataAttributesAttachment.new({
        document_url: "https://app.datadoghq.com/notebook/124/Example-Incident",
        title: "Example-Incident",
      }),
    }),
    id: INCIDENT_ATTACHMENT_DATA_ID,
    type: DatadogAPIClient::V2::IncidentAttachmentType::INCIDENT_ATTACHMENTS,
  }),
})
p api_instance.update_incident_attachment(INCIDENT_DATA_ID, INCIDENT_ATTACHMENT_DATA_ID, body)
