# Update an incident status page notice returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_status_page_notice".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentStatusPageNoticeUpdateRequest.new({
  data: DatadogAPIClient::V2::IncidentStatusPageNoticeUpdateData.new({
    attributes: DatadogAPIClient::V2::IncidentStatusPageNoticeUpdateDataAttributes.new({
      message: "The issue has been resolved.",
      status: "resolved",
      title: "Service degradation resolved.",
    }),
    type: DatadogAPIClient::V2::IncidentStatusPageNoticeIntegrationType::INCIDENT_INTEGRATIONS,
  }),
})
p api_instance.update_incident_status_page_notice("incident_id", "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
