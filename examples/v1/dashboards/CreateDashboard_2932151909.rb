# Create a new dashboard with sankey widget and rum data source

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  description: "",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 0,
        y: 0,
        width: 47,
        height: 15,
      }),
      definition: DatadogAPIClient::V1::SankeyWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::SankeyWidgetDefinitionType::SANKEY,
        requests: [
          DatadogAPIClient::V1::SankeyRumRequest.new({
            query: DatadogAPIClient::V1::SankeyRumQuery.new({
              data_source: DatadogAPIClient::V1::SankeyRumDataSource::RUM,
              query_string: "@type:view",
              mode: DatadogAPIClient::V1::SankeyRumQueryMode::SOURCE,
            }),
            request_type: DatadogAPIClient::V1::SankeyWidgetDefinitionType::SANKEY,
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
