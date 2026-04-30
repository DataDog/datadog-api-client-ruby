# List Cloud Cost Management OCI configs returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_cost_oci_configs".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.list_cost_oci_configs()
