# Link Teams with GitHub Teams returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.sync_teams".to_sym] = true
end
api_instance = DatadogAPIClient::V2::TeamsAPI.new

body = DatadogAPIClient::V2::TeamSyncRequest.new({
  data: DatadogAPIClient::V2::TeamSyncData.new({
    attributes: DatadogAPIClient::V2::TeamSyncAttributes.new({
      source: DatadogAPIClient::V2::TeamSyncAttributesSource::GITHUB,
      type: DatadogAPIClient::V2::TeamSyncAttributesType::LINK,
    }),
    type: DatadogAPIClient::V2::TeamSyncBulkType::TEAM_SYNC_BULK,
  }),
})
p api_instance.sync_teams(body)
