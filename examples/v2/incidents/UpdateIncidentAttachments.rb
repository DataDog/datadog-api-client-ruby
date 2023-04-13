# Create, update, and delete incident attachments returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_attachments".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentAttachmentUpdateRequest.new({
  data: [
    DatadogAPIClient::V2::IncidentAttachmentUpdateData.new({
      attributes: DatadogAPIClient::V2::IncidentAttachmentPostmortemAttributes.new({
        attachment: DatadogAPIClient::V2::IncidentAttachmentsPostmortemAttributesAttachmentObject.new({
          document_url: "https://app.datadoghq.com/notebook/123",
          title: "Postmortem IR-123",
        }),
        attachment_type: DatadogAPIClient::V2::IncidentAttachmentPostmortemAttachmentType::POSTMORTEM,
      }),
      id: "00000000-abcd-0002-0000-000000000000",
      type: DatadogAPIClient::V2::IncidentAttachmentType::INCIDENT_ATTACHMENTS,
    }),
    DatadogAPIClient::V2::IncidentAttachmentUpdateData.new({
      attributes: DatadogAPIClient::V2::IncidentAttachmentLinkAttributes.new({
        attachment: DatadogAPIClient::V2::IncidentAttachmentLinkAttributesAttachmentObject.new({
          document_url: "https://www.example.com/webstore-failure-runbook",
          title: "Runbook for webstore service failures",
        }),
        attachment_type: DatadogAPIClient::V2::IncidentAttachmentLinkAttachmentType::LINK,
      }),
      type: DatadogAPIClient::V2::IncidentAttachmentType::INCIDENT_ATTACHMENTS,
    }),
    DatadogAPIClient::V2::IncidentAttachmentUpdateData.new({
      id: "00000000-abcd-0003-0000-000000000000",
      type: DatadogAPIClient::V2::IncidentAttachmentType::INCIDENT_ATTACHMENTS,
    }),
  ],
})
p api_instance.update_incident_attachments("incident_id", body)
