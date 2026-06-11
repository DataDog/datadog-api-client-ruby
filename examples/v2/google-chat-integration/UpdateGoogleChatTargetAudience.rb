# Update a target audience returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GoogleChatIntegrationAPI.new

body = DatadogAPIClient::V2::GoogleChatTargetAudienceUpdateRequest.new({
  data: DatadogAPIClient::V2::GoogleChatTargetAudienceUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::GoogleChatTargetAudienceUpdateRequestAttributes.new({
      audience_id: "fake-audience-id-1",
      audience_name: "fake audience name 1",
    }),
    type: DatadogAPIClient::V2::GoogleChatTargetAudienceType::GOOGLE_CHAT_TARGET_AUDIENCE_TYPE,
  }),
})
p api_instance.update_google_chat_target_audience("organization_binding_id", "target_audience_id", body)
