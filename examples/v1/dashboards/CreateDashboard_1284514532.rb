# Create a new dashboard with a timeseries widget using formulas and functions cloud cost query

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::TimeseriesWidgetDefinition.new({
        title: "Example Cloud Cost Query",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::TimeseriesWidgetDefinitionType::TIMESERIES,
        requests: [
          DatadogAPIClient::V1::TimeseriesWidgetRequest.new({
            formulas: [
              DatadogAPIClient::V1::WidgetFormula.new({
                formula: "query1",
              }),
            ],
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionCloudCostQueryDefinition.new({
                data_source: DatadogAPIClient::V1::FormulaAndFunctionCloudCostDataSource::CLOUD_COST,
                name: "query1",
                query: "sum:aws.cost.amortized{*} by {aws_product}.rollup(sum, monthly)",
              }),
            ],
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::TIMESERIES,
            style: DatadogAPIClient::V1::WidgetRequestStyle.new({
              palette: "dog_classic",
              line_type: DatadogAPIClient::V1::WidgetLineType::SOLID,
              line_width: DatadogAPIClient::V1::WidgetLineWidth::NORMAL,
            }),
            display_type: DatadogAPIClient::V1::WidgetDisplayType::BARS,
          }),
        ],
        time: DatadogAPIClient::V1::WidgetTime.new({
          live_span: DatadogAPIClient::V1::WidgetLiveSpan::WEEK_TO_DATE,
        }),
      }),
    }),
  ],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
})
p api_instance.create_dashboard(body)
