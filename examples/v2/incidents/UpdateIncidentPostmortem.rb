# Update postmortem for an incident returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_postmortem".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "postmortem" in the system
POSTMORTEM_DATA_ID = ENV["POSTMORTEM_DATA_ID"]
POSTMORTEM_DATA_RELATIONSHIPS_INCIDENT_DATA_ID = ENV["POSTMORTEM_DATA_RELATIONSHIPS_INCIDENT_DATA_ID"]

body = DatadogAPIClient::V2::IncidentPostmortemUpdateRequest.new({
  data: DatadogAPIClient::V2::IncidentPostmortemUpdateData.new({
    attributes: DatadogAPIClient::V2::IncidentPostmortemUpdateAttributes.new({
      status: DatadogAPIClient::V2::PostmortemStatus::IN_REVIEW,
    }),
    id: POSTMORTEM_DATA_ID,
    type: DatadogAPIClient::V2::IncidentPostmortemType::INCIDENT_POSTMORTEMS,
  }),
})
p api_instance.update_incident_postmortem(POSTMORTEM_DATA_RELATIONSHIPS_INCIDENT_DATA_ID, body)
