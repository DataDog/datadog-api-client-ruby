# Search cost recommendations returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.search_cost_recommendations".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::RecommendationsFilterRequest.new({
  filter: "@resource_table:aws_ec2_instance",
  sort: [
    DatadogAPIClient::V2::RecommendationsFilterRequestSortItems.new({
      expression: "potential_daily_savings.amount",
      order: "DESC",
    }),
  ],
})
p api_instance.search_cost_recommendations(body)
