# List tag pipeline ruleset statuses returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.list_tag_pipelines_rulesets_status()
