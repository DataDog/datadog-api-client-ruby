# Update an existing incident integration metadata returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_integration".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

# there is a valid "incident" in the system
INCIDENT_DATA_ID = ENV["INCIDENT_DATA_ID"]

# the "incident" has an "incident_integration_metadata"
INCIDENT_INTEGRATION_METADATA_DATA_ID = ENV["INCIDENT_INTEGRATION_METADATA_DATA_ID"]

body = DatadogAPIClient::V2::IncidentIntegrationMetadataPatchRequest.new({
  data: DatadogAPIClient::V2::IncidentIntegrationMetadataPatchData.new({
    attributes: DatadogAPIClient::V2::IncidentIntegrationMetadataAttributes.new({
      incident_id: INCIDENT_DATA_ID,
      integration_type: 1,
      metadata: DatadogAPIClient::V2::SlackIntegrationMetadata.new({
        channels: [
          DatadogAPIClient::V2::SlackIntegrationMetadataChannelItem.new({
            channel_id: "C0123456789",
            channel_name: "#updated-channel-name",
            team_id: "T01234567",
            redirect_url: "https://slack.com/app_redirect?channel=C0123456789&team=T01234567",
          }),
        ],
      }),
    }),
    type: DatadogAPIClient::V2::IncidentIntegrationMetadataType::INCIDENT_INTEGRATIONS,
  }),
})
p api_instance.update_incident_integration(INCIDENT_DATA_ID, INCIDENT_INTEGRATION_METADATA_DATA_ID, body)
