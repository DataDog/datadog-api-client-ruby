# Compute Sankey flow analysis returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new

body = DatadogAPIClient::V2::ProductAnalyticsSankeyRequest.new({
  data: DatadogAPIClient::V2::ProductAnalyticsSankeyRequestData.new({
    attributes: DatadogAPIClient::V2::ProductAnalyticsSankeyRequestAttributes.new({
      data_source: "product_analytics",
      definition: DatadogAPIClient::V2::ProductAnalyticsSankeyDefinition.new({
        entries_per_step: 5,
        number_of_steps: 5,
        source: "/logs",
        target: "",
      }),
      search: DatadogAPIClient::V2::ProductAnalyticsSankeySearch.new({
        join_keys: DatadogAPIClient::V2::ProductAnalyticsJoinKeys.new({
          primary: "@session.id",
        }),
        query: "@type:view",
      }),
      time: DatadogAPIClient::V2::ProductAnalyticsSankeyTime.new({
        from: 1771232048460,
        to: 1771836848262,
      }),
    }),
    type: DatadogAPIClient::V2::ProductAnalyticsSankeyRequestType::SANKEY_REQUEST,
  }),
})
p api_instance.query_product_analytics_sankey(body)
