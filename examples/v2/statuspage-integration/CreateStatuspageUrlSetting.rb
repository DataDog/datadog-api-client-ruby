# Create a Statuspage URL setting returns "CREATED" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::StatuspageIntegrationAPI.new

body = DatadogAPIClient::V2::StatuspageUrlSettingCreateRequest.new({
  data: DatadogAPIClient::V2::StatuspageUrlSettingCreateData.new({
    attributes: DatadogAPIClient::V2::StatuspageUrlSettingCreateAttributes.new({
      custom_tags: "team:collaboration-integrations,env:prod",
      url: "https://example.statuspage.io",
    }),
    type: DatadogAPIClient::V2::StatuspageUrlSettingType::STATUSPAGE_URL_SETTING,
  }),
})
p api_instance.create_statuspage_url_setting(body)
