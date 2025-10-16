# Get a tag pipeline ruleset returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.get_tag_pipelines_ruleset("a1e9de9b-b88e-41c6-a0cd-cc0ebd7092de")
