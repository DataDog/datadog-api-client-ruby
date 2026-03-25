# Create a new dashboard with sankey widget and network data source

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
          DatadogAPIClient::V1::SankeyNetworkRequest.new({
            query: DatadogAPIClient::V1::SankeyNetworkQuery.new({
              data_source: DatadogAPIClient::V1::SankeyNetworkDataSource::NETWORK,
              query_string: "*",
              group_by: [
                "source",
                "destination",
              ],
              limit: 100,
            }),
            request_type: DatadogAPIClient::V1::SankeyNetworkRequestType::NETFLOW_SANKEY,
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
