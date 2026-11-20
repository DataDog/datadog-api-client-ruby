# Search remediation groups returns "OK" response with pagination

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.search_remediation_groups".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
opts = {
  page_size: 2,
}
api_instance.search_remediation_groups_with_pagination(opts) { |item| puts item }
