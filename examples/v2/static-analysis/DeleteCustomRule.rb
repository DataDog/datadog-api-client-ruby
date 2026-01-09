# Delete Custom Rule returns "Successfully deleted" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_custom_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::StaticAnalysisAPI.new
p api_instance.delete_custom_rule("ruleset_name", "rule_name")
