# List Cloud Cost Management Azure configs returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.list_cost_azure_uc_configs()
