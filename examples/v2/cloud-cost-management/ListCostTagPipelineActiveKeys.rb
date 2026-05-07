# List active tag pipeline keys returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_cost_tag_pipeline_active_keys".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.list_cost_tag_pipeline_active_keys()
