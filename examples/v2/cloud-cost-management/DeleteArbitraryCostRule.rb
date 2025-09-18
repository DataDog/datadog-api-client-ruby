# Delete arbitrary cost rule returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
api_instance.delete_arbitrary_cost_rule(123456)
