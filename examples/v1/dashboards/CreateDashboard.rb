# Create a new dashboard returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  title: "Example-Dashboard with Profile Metrics Query",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::TimeseriesWidgetDefinition.new({
        type: DatadogAPIClient::V1::TimeseriesWidgetDefinitionType::TIMESERIES,
        requests: [
          DatadogAPIClient::V1::TimeseriesWidgetRequest.new({
            profile_metrics_query: DatadogAPIClient::V1::LogQueryDefinition.new({
              compute: DatadogAPIClient::V1::LogsQueryCompute.new({
                aggregation: "sum",
                facet: "@prof_core_cpu_cores",
              }),
              search: DatadogAPIClient::V1::LogQueryDefinitionSearch.new({
                query: "runtime:jvm",
              }),
              group_by: [
                DatadogAPIClient::V1::LogQueryDefinitionGroupBy.new({
                  facet: "service",
                  limit: 10,
                  sort: DatadogAPIClient::V1::LogQueryDefinitionGroupBySort.new({
                    aggregation: "sum",
                    order: DatadogAPIClient::V1::WidgetSort::DESCENDING,
                    facet: "@prof_core_cpu_cores",
                  }),
                }),
              ],
            }),
          }),
        ],
      }),
    }),
  ],
})
p api_instance.create_dashboard(body)
