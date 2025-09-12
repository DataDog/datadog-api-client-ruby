# List Google Cloud Usage Cost configs returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.list_cost_gcp_usage_cost_configs()
