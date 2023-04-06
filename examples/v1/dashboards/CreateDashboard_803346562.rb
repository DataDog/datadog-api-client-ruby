# Create a new dashboard with distribution widget and apm stats data

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::DistributionWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::DistributionWidgetDefinitionType::DISTRIBUTION,
        requests: [
          DatadogAPIClient::V1::DistributionWidgetRequest.new({
            apm_stats_query: DatadogAPIClient::V1::ApmStatsQueryDefinition.new({
              env: "prod",
              service: "cassandra",
              name: "cassandra.query",
              primary_tag: "datacenter:dc1",
              row_type: DatadogAPIClient::V1::ApmStatsQueryRowType::SERVICE,
            }),
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
