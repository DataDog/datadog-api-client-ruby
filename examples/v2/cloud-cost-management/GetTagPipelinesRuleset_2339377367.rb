# Get tag pipeline ruleset returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.get_tag_pipelines_ruleset("ee10c3ff-312f-464c-b4f6-46adaa6d00a1")
