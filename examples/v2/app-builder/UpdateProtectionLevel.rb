# Update App Protection Level returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new

body = DatadogAPIClient::V2::UpdateAppProtectionLevelRequest.new({
  data: DatadogAPIClient::V2::UpdateAppProtectionLevelRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateAppProtectionLevelRequestDataAttributes.new({
      protection_level: DatadogAPIClient::V2::AppProtectionLevel::APPROVAL_REQUIRED,
    }),
    type: DatadogAPIClient::V2::AppProtectionLevelType::PROTECTIONLEVEL,
  }),
})
p api_instance.update_protection_level("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
