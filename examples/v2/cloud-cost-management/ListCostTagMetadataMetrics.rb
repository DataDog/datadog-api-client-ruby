# List available Cloud Cost Management metrics returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_cost_tag_metadata_metrics".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.list_cost_tag_metadata_metrics("filter[month]")
