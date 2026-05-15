# Get the Cloud Cost Management billing currency returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_cost_tag_metadata_currency".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.get_cost_tag_metadata_currency("filter[month]")
