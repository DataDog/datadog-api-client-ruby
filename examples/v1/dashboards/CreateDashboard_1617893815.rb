# Create a new dashboard with formula and function distribution widget

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 0,
        y: 0,
        width: 47,
        height: 15,
      }),
      definition: DatadogAPIClient::V1::DistributionWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        time: DatadogAPIClient::V1::WidgetLegacyLiveSpan.new({}),
        type: DatadogAPIClient::V1::DistributionWidgetDefinitionType::DISTRIBUTION,
        requests: [
          DatadogAPIClient::V1::DistributionWidgetRequest.new({
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::SCALAR,
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinition.new({
                data_source: DatadogAPIClient::V1::FormulaAndFunctionEventsDataSource::LOGS,
                name: "query1",
                search: DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinitionSearch.new({
                  query: "",
                }),
                indexes: [
                  "*",
                ],
                compute: DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinitionCompute.new({
                  aggregation: DatadogAPIClient::V1::FormulaAndFunctionEventAggregation::AVG,
                  metric: "@duration",
                }),
                group_by: [
                  DatadogAPIClient::V1::FormulaAndFunctionEventQueryGroupBy.new({
                    facet: "service",
                    limit: 1000,
                    sort: DatadogAPIClient::V1::FormulaAndFunctionEventQueryGroupBySort.new({
                      aggregation: DatadogAPIClient::V1::FormulaAndFunctionEventAggregation::COUNT,
                      order: DatadogAPIClient::V1::QuerySortOrder::DESC,
                    }),
                  }),
                ],
                storage: "hot",
              }),
            ],
          }),
        ],
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::FREE,
  notify_list: [],
})
p api_instance.create_dashboard(body)
