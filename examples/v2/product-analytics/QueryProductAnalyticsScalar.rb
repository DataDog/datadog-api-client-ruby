# Compute scalar analytics returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new

body = DatadogAPIClient::V2::ProductAnalyticsAnalyticsRequest.new({
  data: DatadogAPIClient::V2::ProductAnalyticsAnalyticsRequestData.new({
    attributes: DatadogAPIClient::V2::ProductAnalyticsAnalyticsRequestAttributes.new({
      from: 1771232048460,
      query: DatadogAPIClient::V2::ProductAnalyticsAnalyticsQuery.new({
        compute: DatadogAPIClient::V2::ProductAnalyticsCompute.new({
          aggregation: "count",
        }),
        query: DatadogAPIClient::V2::ProductAnalyticsEventQuery.new({
          data_source: DatadogAPIClient::V2::ProductAnalyticsEventQueryDataSource::PRODUCT_ANALYTICS,
          search: DatadogAPIClient::V2::ProductAnalyticsEventSearch.new({
            query: "@type:view",
          }),
        }),
      }),
      to: 1771836848262,
    }),
    type: DatadogAPIClient::V2::ProductAnalyticsAnalyticsRequestType::FORMULA_ANALYTICS_EXTENDED_REQUEST,
  }),
})
p api_instance.query_product_analytics_scalar(body)
