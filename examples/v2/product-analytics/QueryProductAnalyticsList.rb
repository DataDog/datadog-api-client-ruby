# List analytics events returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.query_product_analytics_list".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new

body = DatadogAPIClient::V2::ProductAnalyticsAnalyticsListRequest.new({
  data: DatadogAPIClient::V2::ProductAnalyticsAnalyticsListRequestData.new({
    attributes: DatadogAPIClient::V2::ProductAnalyticsAnalyticsListRequestAttributes.new({
      from: 1771232048460,
      query: DatadogAPIClient::V2::ProductAnalyticsAnalyticsListQuery.new({
        columns: [
          "@view.name",
        ],
        limit: 100,
        query: DatadogAPIClient::V2::ProductAnalyticsEventQuery.new({
          data_source: DatadogAPIClient::V2::ProductAnalyticsEventQueryDataSource::PRODUCT_ANALYTICS,
          search: DatadogAPIClient::V2::ProductAnalyticsEventSearch.new({
            query: "@type:view",
          }),
        }),
      }),
      to: 1771836848262,
    }),
    type: DatadogAPIClient::V2::ProductAnalyticsAnalyticsListRequestType::FORMULA_ANALYTICS_EXTENDED_LIST_REQUEST,
  }),
})
p api_instance.query_product_analytics_list(body)
