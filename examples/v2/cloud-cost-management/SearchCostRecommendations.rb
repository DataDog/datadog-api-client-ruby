# Search cost recommendations returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.search_cost_recommendations".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::RecommendationsFilterRequest.new({
  data: DatadogAPIClient::V2::RecommendationsFilterRequestData.new({
    attributes: DatadogAPIClient::V2::RecommendationsFilterRequestDataAttributes.new({
      scope: DatadogAPIClient::V2::RecommendationsFilterRequestScope::CCM,
      sort: [
        DatadogAPIClient::V2::RecommendationsFilterRequestSortItems.new({
          expression: "@potential_daily_savings",
          order: "DESC",
        }),
      ],
    }),
    id: "@resource_table:aws_ec2_instance",
    type: DatadogAPIClient::V2::RecommendationsFilterRequestDataType::RECOMMENDATIONS_FILTER,
  }),
})
p api_instance.search_cost_recommendations(body)
