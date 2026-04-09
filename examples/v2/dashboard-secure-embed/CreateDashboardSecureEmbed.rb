# Create a secure embed for a dashboard returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_dashboard_secure_embed".to_sym] = true
end
api_instance = DatadogAPIClient::V2::DashboardSecureEmbedAPI.new

body = DatadogAPIClient::V2::SecureEmbedCreateRequest.new({
  data: DatadogAPIClient::V2::SecureEmbedCreateRequestData.new({
    attributes: DatadogAPIClient::V2::SecureEmbedCreateRequestAttributes.new({
      global_time: DatadogAPIClient::V2::SecureEmbedGlobalTime.new({
        live_span: DatadogAPIClient::V2::SecureEmbedGlobalTimeLiveSpan::PAST_ONE_HOUR,
      }),
      global_time_selectable: true,
      selectable_template_vars: [
        DatadogAPIClient::V2::SecureEmbedSelectableTemplateVariable.new({
          default_values: [
            "1",
          ],
          name: "org_id",
          prefix: "org_id",
          visible_tags: [
            "1",
          ],
        }),
      ],
      status: DatadogAPIClient::V2::SecureEmbedStatus::ACTIVE,
      title: "Q1 Metrics Dashboard",
      viewing_preferences: DatadogAPIClient::V2::SecureEmbedViewingPreferences.new({
        high_density: false,
        theme: DatadogAPIClient::V2::SecureEmbedViewingPreferencesTheme::SYSTEM,
      }),
    }),
    type: DatadogAPIClient::V2::SecureEmbedRequestType::SECURE_EMBED_REQUEST,
  }),
})
p api_instance.create_dashboard_secure_embed("dashboard_id", body)
