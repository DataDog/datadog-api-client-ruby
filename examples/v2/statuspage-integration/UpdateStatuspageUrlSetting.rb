# Update a Statuspage URL setting returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatuspageIntegrationAPI.new

body = DatadogAPIClient::V2::StatuspageUrlSettingUpdateRequest.new({
  data: DatadogAPIClient::V2::StatuspageUrlSettingUpdateData.new({
    attributes: DatadogAPIClient::V2::StatuspageUrlSettingUpdateAttributes.new({
      custom_tags: "team:collaboration-integrations,env:prod",
      url: "https://example.statuspage.io",
    }),
    id: "596da4af-0563-4097-90ff-07230c3f9db3",
    type: DatadogAPIClient::V2::StatuspageUrlSettingType::STATUSPAGE_URL_SETTING,
  }),
})
p api_instance.update_statuspage_url_setting("statuspage_url_setting_id", body)
