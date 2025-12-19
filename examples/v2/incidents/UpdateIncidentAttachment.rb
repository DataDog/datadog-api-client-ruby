# Update incident attachment returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_attachment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::PatchAttachmentRequest.new({
  data: DatadogAPIClient::V2::PatchAttachmentRequestData.new({
    attributes: DatadogAPIClient::V2::PatchAttachmentRequestDataAttributes.new({
      attachment: DatadogAPIClient::V2::PatchAttachmentRequestDataAttributesAttachment.new({
        document_url: "https://app.datadoghq.com/notebook/124/Postmortem-IR-124",
        title: "Postmortem-IR-124",
      }),
    }),
    type: DatadogAPIClient::V2::IncidentAttachmentType::INCIDENT_ATTACHMENTS,
  }),
})
p api_instance.update_incident_attachment("incident_id", "00000000-0000-0000-0000-000000000002", body)
