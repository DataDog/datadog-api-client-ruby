# List status page email subscriptions returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_statuspage_email_subscriptions".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new
p api_instance.list_statuspage_email_subscriptions("page_id")
