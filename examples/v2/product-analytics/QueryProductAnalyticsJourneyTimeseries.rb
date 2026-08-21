# Compute journey timeseries analytics returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.query_product_analytics_journey_timeseries".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new

body = DatadogAPIClient::V2::ProductAnalyticsFormulaJourneyRequest.new({
  data: DatadogAPIClient::V2::ProductAnalyticsFormulaJourneyRequestData.new({
    attributes: DatadogAPIClient::V2::ProductAnalyticsFormulaJourneyRequestAttributes.new({
      from: 1756425600000,
      query: DatadogAPIClient::V2::ProductAnalyticsFormulaJourneyQuery.new({
        compute: DatadogAPIClient::V2::ProductAnalyticsGraphQueryCompute.new({
          aggregation: "count",
          target: DatadogAPIClient::V2::ProductAnalyticsJourneyNodeTarget.new({
            type: DatadogAPIClient::V2::ProductAnalyticsJourneyNodeTargetType::NODE,
            value: "A",
          }),
        }),
        group_by: [
          DatadogAPIClient::V2::ProductAnalyticsGraphQueryGroupBy.new({
            facet: "@geo.country",
            should_exclude_missing: false,
            sort: DatadogAPIClient::V2::ProductAnalyticsGroupBySort.new({
              aggregation: "count",
              order: DatadogAPIClient::V2::QuerySortOrder::DESC,
            }),
            source: DatadogAPIClient::V2::ProductAnalyticsGraphQueryGroupBySource::USERS,
            target: DatadogAPIClient::V2::ProductAnalyticsJourneyNodeTarget.new({
              type: DatadogAPIClient::V2::ProductAnalyticsJourneyNodeTargetType::NODE,
              value: "A",
            }),
            value_filters: [],
          }),
        ],
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
      }),
      to: 1756857600000,
    }),
    type: DatadogAPIClient::V2::ProductAnalyticsFormulaJourneyRequestType::FORMULA_JOURNEY_REQUEST,
  }),
})
p api_instance.query_product_analytics_journey_timeseries(body)
