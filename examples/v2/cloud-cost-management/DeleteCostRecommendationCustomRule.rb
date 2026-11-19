# Delete a cost recommendation custom rule returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.delete_cost_recommendation_custom_rule".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new
api_instance.delete_cost_recommendation_custom_rule("custom_rule_id")
