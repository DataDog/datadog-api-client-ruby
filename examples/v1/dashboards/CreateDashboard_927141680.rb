# Create a new dashboard with funnel widget

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  title: "Example-Dashboard with funnel widget",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::FunnelWidgetDefinition.new({
        type: DatadogAPIClient::V1::FunnelWidgetDefinitionType::FUNNEL,
        requests: [
          DatadogAPIClient::V1::FunnelWidgetRequest.new({
            query: DatadogAPIClient::V1::FunnelQuery.new({
              data_source: DatadogAPIClient::V1::FunnelSource::RUM,
              query_string: "",
              steps: [],
            }),
            request_type: DatadogAPIClient::V1::FunnelRequestType::FUNNEL,
          }),
        ],
      }),
    }),
  ],
})
p api_instance.create_dashboard(body)
