# List Custom Costs files returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.list_custom_costs_files()
