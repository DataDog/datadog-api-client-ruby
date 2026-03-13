# Create a new dashboard with apm metrics widget

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::TableWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::TableWidgetDefinitionType::QUERY_TABLE,
        requests: [
          DatadogAPIClient::V1::TableWidgetRequest.new({
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::SCALAR,
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionApmMetricsQueryDefinition.new({
                stat: DatadogAPIClient::V1::FormulaAndFunctionApmMetricStatName::HITS,
                name: "query1",
                service: "web-store",
                data_source: DatadogAPIClient::V1::FormulaAndFunctionApmMetricsDataSource::APM_METRICS,
                query_filter: "env:prod",
                group_by: [
                  "resource_name",
                ],
              }),
            ],
          }),
        ],
      }),
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 0,
        y: 0,
        width: 4,
        height: 4,
      }),
    }),
  ],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
})
p api_instance.create_dashboard(body)
