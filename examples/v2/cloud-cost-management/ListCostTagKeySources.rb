# List Cloud Cost Management tag sources returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_cost_tag_key_sources".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.list_cost_tag_key_sources("filter[month]")
