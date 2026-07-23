# Update ownership settings for the org returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.post_ownership_settings".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CSMOwnershipAPI.new

body = DatadogAPIClient::V2::OwnershipSettingsRequest.new({
  data: DatadogAPIClient::V2::OwnershipSettingsRequestData.new({
    attributes: DatadogAPIClient::V2::OwnershipSettingsRequestAttributes.new({
      auto_tag: true,
      confidence_level: DatadogAPIClient::V2::OwnershipConfidenceLevel::HIGH,
    }),
    type: DatadogAPIClient::V2::OwnershipSettingsType::OWNERSHIP_SETTINGS,
  }),
})
p api_instance.post_ownership_settings(body)
