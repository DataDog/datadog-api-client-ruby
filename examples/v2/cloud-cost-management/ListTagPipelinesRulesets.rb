# List tag pipeline rulesets returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
p api_instance.list_tag_pipelines_rulesets()
