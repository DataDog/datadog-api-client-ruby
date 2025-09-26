# Get arbitrary cost rule returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.get_arbitrary_cost_rule(123456)
