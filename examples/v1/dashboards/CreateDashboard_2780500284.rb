# Create a new dashboard with hostmap DDSQL widget

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  description: nil,
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 0,
        y: 0,
        width: 47,
        height: 22,
      }),
      definition: DatadogAPIClient::V1::HostMapWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::HostMapWidgetDefinitionType::HOSTMAP,
        requests: DatadogAPIClient::V1::HostMapWidgetDefinitionRequests.new({
          request_type: DatadogAPIClient::V1::HostMapWidgetDefinitionRequestType::DATA_PROJECTION,
          limit: 1000,
          query: DatadogAPIClient::V1::DatasetListQuery.new({
            data_source: DatadogAPIClient::V1::DatasetListQueryDataSourceType::DATASET,
            dataset_provider: DatadogAPIClient::V1::PublishedDatasetProvider::DDSQL_QUERY,
            dataset_id: "abc-123-def",
          }),
          projection: DatadogAPIClient::V1::HostMapWidgetProjection.new({
            type: DatadogAPIClient::V1::HostMapWidgetProjectionType::HOSTMAP,
            dimensions: [
              DatadogAPIClient::V1::HostMapWidgetProjectionDimensionMapping.new({
                column: "entity_id",
                dimension: DatadogAPIClient::V1::HostMapWidgetDimension::NODE,
              }),
              DatadogAPIClient::V1::HostMapWidgetProjectionDimensionMapping.new({
                column: "parent_id",
                dimension: DatadogAPIClient::V1::HostMapWidgetDimension::GROUP,
              }),
              DatadogAPIClient::V1::HostMapWidgetProjectionDimensionMapping.new({
                column: "cpu_usage",
                dimension: DatadogAPIClient::V1::HostMapWidgetDimension::FILL,
              }),
            ],
          }),
          style: DatadogAPIClient::V1::HostMapWidgetInfrastructureStyle.new({
            palette: "green_to_orange",
            palette_flip: false,
          }),
        }),
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::FREE,
  notify_list: [],
})
p api_instance.create_dashboard(body)
