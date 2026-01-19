# Create postmortem attachment returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_postmortem_attachment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::PostmortemAttachmentRequest.new({
  data: DatadogAPIClient::V2::PostmortemAttachmentRequestData.new({
    attributes: DatadogAPIClient::V2::PostmortemAttachmentRequestAttributes.new({
      cells: [
        DatadogAPIClient::V2::PostmortemCell.new({
          attributes: DatadogAPIClient::V2::PostmortemCellAttributes.new({
            definition: DatadogAPIClient::V2::PostmortemCellDefinition.new({
              content: '## Incident Summary\nThis incident was caused by...',
            }),
          }),
          id: "cell-1",
          type: DatadogAPIClient::V2::PostmortemCellType::MARKDOWN,
        }),
      ],
      content: '# Incident Report - IR-123\n[...]',
      postmortem_template_id: "93645509-874e-45c4-adfa-623bfeaead89-123",
      title: "Postmortem-IR-123",
    }),
    type: DatadogAPIClient::V2::IncidentAttachmentType::INCIDENT_ATTACHMENTS,
  }),
})
p api_instance.create_incident_postmortem_attachment("00000000-0000-0000-0000-000000000000", body)
