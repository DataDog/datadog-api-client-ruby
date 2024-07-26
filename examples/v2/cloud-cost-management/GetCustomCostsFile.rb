# Get Custom Costs file returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.get_custom_costs_file("file_id")
