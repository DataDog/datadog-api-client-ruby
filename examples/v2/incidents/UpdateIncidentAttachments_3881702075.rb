# Create an incident attachment returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_attachments".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident" in the system
INCIDENT_DATA_ID = ENV["INCIDENT_DATA_ID"]

body = DatadogAPIClient::V2::IncidentAttachmentUpdateRequest.new({
  data: [
    DatadogAPIClient::V2::IncidentAttachmentUpdateData.new({
      type: DatadogAPIClient::V2::IncidentAttachmentType::INCIDENT_ATTACHMENTS,
      attributes: DatadogAPIClient::V2::IncidentAttachmentLinkAttributes.new({
        attachment_type: DatadogAPIClient::V2::IncidentAttachmentLinkAttachmentType::LINK,
        attachment: DatadogAPIClient::V2::IncidentAttachmentLinkAttributesAttachmentObject.new({
          document_url: "https://www.example.com/doc",
          title: "Example-Incident",
        }),
      }),
    }),
  ],
})
p api_instance.update_incident_attachments(INCIDENT_DATA_ID, body)
