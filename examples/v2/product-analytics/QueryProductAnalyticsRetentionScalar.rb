# Compute retention scalar values returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.query_product_analytics_retention_scalar".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new

body = DatadogAPIClient::V2::ProductAnalyticsFormulaRetentionRequest.new({
  data: DatadogAPIClient::V2::ProductAnalyticsFormulaRetentionRequestData.new({
    attributes: DatadogAPIClient::V2::ProductAnalyticsFormulaRetentionRequestAttributes.new({
      exclude_anonymous_traffic: false,
      from: 1756425600000,
      query: DatadogAPIClient::V2::ProductAnalyticsFormulaRetentionQuery.new({
        computation_scope: DatadogAPIClient::V2::ProductAnalyticsRetentionCohortScope.new({
          target: DatadogAPIClient::V2::ProductAnalyticsRetentionIndexTarget.new({
            type: DatadogAPIClient::V2::ProductAnalyticsRetentionIndexTargetType::INDEX,
            value: 0,
          }),
          type: DatadogAPIClient::V2::ProductAnalyticsRetentionCohortScopeType::COHORT,
        }),
        compute: DatadogAPIClient::V2::ProductAnalyticsRetentionCompute.new({
          aggregation: "count",
          metric: DatadogAPIClient::V2::ProductAnalyticsRetentionComputeMetric::RETENTION_RATE,
        }),
        group_by: [
          DatadogAPIClient::V2::ProductAnalyticsRetentionGroupBy.new({
            facet: "@geo.country",
            limit: 10,
            should_exclude_missing: false,
            sort: DatadogAPIClient::V2::ProductAnalyticsGroupBySort.new({
              aggregation: "count",
              order: DatadogAPIClient::V2::QuerySortOrder::DESC,
            }),
            target: DatadogAPIClient::V2::ProductAnalyticsRetentionGroupByTarget::COHORT,
          }),
        ],
        search: DatadogAPIClient::V2::ProductAnalyticsRetentionSearch.new({
          cohort_criteria: DatadogAPIClient::V2::ProductAnalyticsRetentionCohortCriteria.new({
            base_query: DatadogAPIClient::V2::ProductAnalyticsEventQuery.new({
              data_source: DatadogAPIClient::V2::ProductAnalyticsEventQueryDataSource::PRODUCT_ANALYTICS,
              search: DatadogAPIClient::V2::ProductAnalyticsEventSearch.new({
                query: "@type:view",
              }),
            }),
            time_interval: DatadogAPIClient::V2::ProductAnalyticsRetentionCalendarTimeInterval.new({
              type: DatadogAPIClient::V2::ProductAnalyticsRetentionCalendarTimeIntervalType::CALENDAR,
              value: DatadogAPIClient::V2::ProductAnalyticsCalendarInterval.new({
                alignment: "monday",
                quantity: 1,
                timezone: "UTC",
                type: DatadogAPIClient::V2::ProductAnalyticsCalendarIntervalType::WEEK,
              }),
            }),
          }),
          filters: DatadogAPIClient::V2::ProductAnalyticsRetentionFilters.new({
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
          }),
          retention_entity: DatadogAPIClient::V2::ProductAnalyticsRetentionEntity::USER_ID,
          return_condition: DatadogAPIClient::V2::ProductAnalyticsRetentionReturnCondition::CONVERSION_ON_OR_AFTER,
          return_criteria: DatadogAPIClient::V2::ProductAnalyticsRetentionReturnCriteria.new({
            base_query: DatadogAPIClient::V2::ProductAnalyticsEventQuery.new({
              data_source: DatadogAPIClient::V2::ProductAnalyticsEventQueryDataSource::PRODUCT_ANALYTICS,
              search: DatadogAPIClient::V2::ProductAnalyticsEventSearch.new({
                query: "@type:view",
              }),
            }),
            time_interval: DatadogAPIClient::V2::ProductAnalyticsRetentionCalendarTimeInterval.new({
              type: DatadogAPIClient::V2::ProductAnalyticsRetentionCalendarTimeIntervalType::CALENDAR,
              value: DatadogAPIClient::V2::ProductAnalyticsCalendarInterval.new({
                alignment: "monday",
                quantity: 1,
                timezone: "UTC",
                type: DatadogAPIClient::V2::ProductAnalyticsCalendarIntervalType::WEEK,
              }),
            }),
          }),
        }),
      }),
      to: 1756857600000,
    }),
    type: DatadogAPIClient::V2::ProductAnalyticsFormulaRetentionRequestType::FORMULA_RETENTION_REQUEST,
  }),
})
p api_instance.query_product_analytics_retention_scalar(body)
