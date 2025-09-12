# Get ruleset returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.get_ruleset("da0e30e2-615d-4dae-9a22-38cf86a87dde")
