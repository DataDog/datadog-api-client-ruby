# Publish an incident status page notice returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_status_page_notice".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentStatusPageNoticeCreateRequest.new({
  data: DatadogAPIClient::V2::IncidentStatusPageNoticeCreateData.new({
    attributes: DatadogAPIClient::V2::IncidentStatusPageNoticeCreateDataAttributes.new({
      components: {
        component_1: "degraded_performance",
      },
      message: "We are investigating reports of elevated error rates.",
      status: "investigating",
      title: "Service degradation detected.",
    }),
    type: DatadogAPIClient::V2::IncidentStatusPageNoticeIntegrationType::INCIDENT_INTEGRATIONS,
  }),
})
p api_instance.create_incident_status_page_notice("incident_id", "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
