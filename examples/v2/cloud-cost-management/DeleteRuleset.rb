# Delete ruleset returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
api_instance.delete_ruleset("1c5dae14-237d-4b9a-a515-aa55b3939142")
