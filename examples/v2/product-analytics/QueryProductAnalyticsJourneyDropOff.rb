# Analyze journey drop-off returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.query_product_analytics_journey_drop_off".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new

body = DatadogAPIClient::V2::ProductAnalyticsJourneyDropOffRequest.new({
  data: DatadogAPIClient::V2::ProductAnalyticsJourneyDropOffRequestData.new({
    attributes: DatadogAPIClient::V2::ProductAnalyticsJourneyDropOffRequestAttributes.new({
      from: 1756425600000,
      query: DatadogAPIClient::V2::ProductAnalyticsJourneyDropOffQuery.new({
        sampling: DatadogAPIClient::V2::ProductAnalyticsSampling.new({
          enabled: false,
        }),
        search: DatadogAPIClient::V2::ProductAnalyticsJourneySearch.new({
          expression: "A -> B",
          filters: DatadogAPIClient::V2::ProductAnalyticsJourneySearchFilters.new({
            audience_filters: DatadogAPIClient::V2::ProductAnalyticsJourneyAudienceFilters.new({
              accounts: [
                DatadogAPIClient::V2::ProductAnalyticsJourneyAudienceAccountQuery.new({
                  name: "enterprise_accounts",
                }),
              ],
              formula: "power_users AND NOT trial_segment",
              segments: [
                DatadogAPIClient::V2::ProductAnalyticsJourneyAudienceSegmentQuery.new({
                  name: "trial_segment",
                  segment_id: "00000000-0000-0000-0000-000000000000",
                }),
              ],
              users: [
                DatadogAPIClient::V2::ProductAnalyticsJourneyAudienceUserQuery.new({
                  name: "power_users",
                }),
              ],
            }),
            graph_filters: [
              DatadogAPIClient::V2::ProductAnalyticsJourneySearchGraphFilter.new({
                name: DatadogAPIClient::V2::ProductAnalyticsJourneySearchGraphFilterName::TIME_TO_CONVERT,
                operator: DatadogAPIClient::V2::ProductAnalyticsJourneySearchGraphFilterOperator::LESS_THAN_OR_EQUAL,
                target: DatadogAPIClient::V2::ProductAnalyticsJourneyNodeTarget.new({
                  type: DatadogAPIClient::V2::ProductAnalyticsJourneyNodeTargetType::NODE,
                  value: "A",
                }),
                value: 60000,
              }),
            ],
          }),
          join_keys: DatadogAPIClient::V2::ProductAnalyticsJoinKeys.new({
            primary: "@session.id",
            secondary: [],
          }),
          node_objects: {
            A: DatadogAPIClient::V2::ProductAnalyticsEventQuery.new({
              data_source: DatadogAPIClient::V2::ProductAnalyticsEventQueryDataSource::PRODUCT_ANALYTICS,
              search: DatadogAPIClient::V2::ProductAnalyticsEventSearch.new({
                query: "@type:view @view.name:Login",
              }),
            }), B: DatadogAPIClient::V2::ProductAnalyticsEventQuery.new({
              data_source: DatadogAPIClient::V2::ProductAnalyticsEventQueryDataSource::PRODUCT_ANALYTICS,
              search: DatadogAPIClient::V2::ProductAnalyticsEventSearch.new({
                query: "@type:action @action.target.name:Submit",
              }),
            }),
          },
        }),
        target: DatadogAPIClient::V2::ProductAnalyticsJourneyNodeTarget.new({
          type: DatadogAPIClient::V2::ProductAnalyticsJourneyNodeTargetType::NODE,
          value: "B",
        }),
        top_issue_count: 5,
      }),
      to: 1756857600000,
    }),
    type: DatadogAPIClient::V2::ProductAnalyticsJourneyDropOffRequestType::JOURNEY_DROP_OFF_ANALYSIS_REQUEST,
  }),
})
p api_instance.query_product_analytics_journey_drop_off(body)
