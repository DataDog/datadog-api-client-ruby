# Send server-side events returns "Request accepted for processing (always 202 empty JSON)." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new

body = DatadogAPIClient::V2::ProductAnalyticsServerSideEventItem.new({
  account: DatadogAPIClient::V2::ProductAnalyticsAccount.new({
    id: "account-67890",
  }),
  application: DatadogAPIClient::V2::ProductAnalyticsApplication.new({
    id: "123abcde-123a-123b-1234-123456789abc",
  }),
  event: DatadogAPIClient::V2::ProductAnalyticsEvent.new({
    name: "payment.processed",
  }),
  session: DatadogAPIClient::V2::ProductAnalyticsSession.new({
    id: "session-abcdef",
  }),
  type: DatadogAPIClient::V2::ProductAnalyticsEventType::SERVER,
  usr: DatadogAPIClient::V2::ProductAnalyticsUser.new({
    id: "user-12345",
  }),
})
p api_instance.submit_product_analytics_event(body)
