# Send server-side events returns "Request accepted for processing (always 202 empty JSON)." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new

body = DatadogAPIClient::V2::ProductAnalyticsServerSideEventItem.new({
  account: DatadogAPIClient::V2::ProductAnalyticsServerSideEventItemAccount.new({
    id: "account-67890",
  }),
  application: DatadogAPIClient::V2::ProductAnalyticsServerSideEventItemApplication.new({
    id: "123abcde-123a-123b-1234-123456789abc",
  }),
  event: DatadogAPIClient::V2::ProductAnalyticsServerSideEventItemEvent.new({
    name: "payment.processed",
  }),
  session: DatadogAPIClient::V2::ProductAnalyticsServerSideEventItemSession.new({
    id: "session-abcdef",
  }),
  type: DatadogAPIClient::V2::ProductAnalyticsServerSideEventItemType::SERVER,
  usr: DatadogAPIClient::V2::ProductAnalyticsServerSideEventItemUsr.new({
    id: "user-12345",
  }),
})
p api_instance.submit_product_analytics_event(body)
