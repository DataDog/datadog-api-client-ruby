# List the entities behind a retention cell returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.query_product_analytics_retention_list".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ProductAnalyticsAPI.new

body = DatadogAPIClient::V2::ProductAnalyticsRetentionListRequest.new({
  data: DatadogAPIClient::V2::ProductAnalyticsRetentionListRequestData.new({
    attributes: DatadogAPIClient::V2::ProductAnalyticsRetentionListRequestAttributes.new({
      from: 1756425600000,
      query: DatadogAPIClient::V2::ProductAnalyticsRetentionListQuery.new({
        columns: [
          DatadogAPIClient::V2::ProductAnalyticsRetentionListColumn.new({
            field: DatadogAPIClient::V2::ProductAnalyticsRetentionListColumnField.new({
              path: "@usr.email",
            }),
          }),
        ],
        computation_scope: DatadogAPIClient::V2::ProductAnalyticsRetentionCellScope.new({
          cohort_target: DatadogAPIClient::V2::ProductAnalyticsRetentionIndexTarget.new({
            type: DatadogAPIClient::V2::ProductAnalyticsRetentionIndexTargetType::INDEX,
            value: 0,
          }),
          return_period_target: DatadogAPIClient::V2::ProductAnalyticsRetentionIndexTarget.new({
            type: DatadogAPIClient::V2::ProductAnalyticsRetentionIndexTargetType::INDEX,
            value: 0,
          }),
          type: DatadogAPIClient::V2::ProductAnalyticsRetentionCellScopeType::CELL,
        }),
        limit: 100,
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
    type: DatadogAPIClient::V2::ProductAnalyticsRetentionListRequestType::RETENTION_LIST_REQUEST,
  }),
})
p api_instance.query_product_analytics_retention_list(body)
