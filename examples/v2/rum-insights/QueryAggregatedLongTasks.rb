# Query aggregated long tasks returns "Successful response" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.query_aggregated_long_tasks".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RUMInsightsAPI.new

body = DatadogAPIClient::V2::AggregatedLongTasksRequest.new({
  data: DatadogAPIClient::V2::AggregatedLongTasksRequestData.new({
    attributes: DatadogAPIClient::V2::AggregatedLongTasksRequestAttributes.new({
      application_id: "ccbc53b1-74f2-496b-bdd7-9a8fa7b7376b",
      criteria: DatadogAPIClient::V2::AggregatedWaterfallPerformanceCriteria.new({
        max: 5.0,
        metric: DatadogAPIClient::V2::AggregatedWaterfallPerformanceCriteriaMetric::LARGEST_CONTENTFUL_PAINT,
        min: 2.5,
      }),
      filter: "@session.type:user",
      from: 1762437564,
      sample_size: 20,
      to: 1762523964,
      view_name: "/account/login(/:type)",
    }),
    type: DatadogAPIClient::V2::AggregatedLongTasksRequestType::AGGREGATED_LONG_TASKS,
  }),
})
p api_instance.query_aggregated_long_tasks(body)
