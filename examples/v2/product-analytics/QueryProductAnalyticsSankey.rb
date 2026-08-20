# Compute a Sankey diagram returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.query_product_analytics_sankey".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new

body = DatadogAPIClient::V2::ProductAnalyticsSankeyRequest.new({
  data: DatadogAPIClient::V2::ProductAnalyticsSankeyRequestData.new({
    attributes: DatadogAPIClient::V2::ProductAnalyticsSankeyRequestAttributes.new({
      definition: DatadogAPIClient::V2::ProductAnalyticsSankeyDefinition.new({
        entries_per_step: 10,
        number_of_steps: 3,
        source: "@view.name",
        target: "@view.name",
      }),
      search: DatadogAPIClient::V2::ProductAnalyticsSankeySearch.new({
        audience_filters: DatadogAPIClient::V2::ProductAnalyticsAudienceFilters.new({
          accounts: [
            DatadogAPIClient::V2::ProductAnalyticsAudienceAccountSubquery.new({
              name: "",
            }),
          ],
          formula: "u",
          segments: [
            DatadogAPIClient::V2::ProductAnalyticsAudienceSegmentSubquery.new({
              name: "",
              segment_id: "00000000-0000-0000-0000-000000000000",
            }),
          ],
          users: [
            DatadogAPIClient::V2::ProductAnalyticsAudienceUserSubquery.new({
              name: "u",
              query: "*",
            }),
          ],
        }),
        join_keys: DatadogAPIClient::V2::ProductAnalyticsJoinKeys.new({
          primary: "@session.id",
          secondary: [],
        }),
        query: "@type:view",
      }),
      time: DatadogAPIClient::V2::ProductAnalyticsSankeyTime.new({
        from: 1756425600000,
        to: 1756857600000,
      }),
    }),
    type: DatadogAPIClient::V2::ProductAnalyticsSankeyRequestType::SANKEY_REQUEST,
  }),
})
p api_instance.query_product_analytics_sankey(body)
