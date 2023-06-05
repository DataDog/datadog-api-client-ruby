# Mute or unmute a finding returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_finding".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::MuteFindingRequest.new({
  data: DatadogAPIClient::V2::MuteFindingRequestData.new({
    attributes: DatadogAPIClient::V2::MuteFindingRequestAttributes.new({
      mute: DatadogAPIClient::V2::MuteFindingRequestProperties.new({
        description: "To be resolved later",
        expiration_date: 1778721573794,
        muted: true,
        reason: DatadogAPIClient::V2::FindingMuteReason::ACCEPTED_RISK,
      }),
    }),
    id: "AQAAAYbb1i0gijTHEQAAAABBWWJiMWkwZ0FBQ2FuNzBJVGZXZ3B3QUE",
    type: DatadogAPIClient::V2::FindingType::FINDING,
  }),
})
p api_instance.update_finding("AQAAAYbb1i0gijTHEQAAAABBWWJiMWkwZ0FBQ2FuNzBJVGZXZ3B3QUE", body)
