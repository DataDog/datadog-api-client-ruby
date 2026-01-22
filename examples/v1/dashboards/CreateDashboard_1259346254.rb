# Create a new dashboard with timeseries widget using order_by values

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  title: "Example-Dashboard with order_by values",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::TimeseriesWidgetDefinition.new({
        type: DatadogAPIClient::V1::TimeseriesWidgetDefinitionType::TIMESERIES,
        requests: [
          DatadogAPIClient::V1::TimeseriesWidgetRequest.new({
            q: "avg:system.cpu.user{*} by {host}",
            style: DatadogAPIClient::V1::WidgetRequestStyle.new({
              palette: "warm",
              order_by: DatadogAPIClient::V1::WidgetStyleOrderBy::VALUES,
            }),
            display_type: DatadogAPIClient::V1::WidgetDisplayType::LINE,
          }),
        ],
      }),
    }),
  ],
})
p api_instance.create_dashboard(body)
