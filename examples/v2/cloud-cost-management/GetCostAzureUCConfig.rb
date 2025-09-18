# Get cost Azure UC config returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.get_cost_azure_uc_config(123456)
