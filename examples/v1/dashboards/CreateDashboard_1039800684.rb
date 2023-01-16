# Create a new dashboard with logs_pattern_stream list_stream widget

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  title: "Example-Create_a_new_dashboard_with_logs_pattern_stream_list_stream_widget with list_stream widget",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::ListStreamWidgetDefinition.new({
        type: DatadogAPIClient::V1::ListStreamWidgetDefinitionType::LIST_STREAM,
        requests: [
          DatadogAPIClient::V1::ListStreamWidgetRequest.new({
            columns: [
              DatadogAPIClient::V1::ListStreamColumn.new({
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
                field: "timestamp",
              }),
            ],
            query: DatadogAPIClient::V1::ListStreamQuery.new({
              data_source: DatadogAPIClient::V1::ListStreamSource::LOGS_PATTERN_STREAM,
              query_string: "",
              group_by: [
                DatadogAPIClient::V1::ListStreamGroupByItems.new({
                  facet: "service",
                }),
              ],
            }),
            response_format: DatadogAPIClient::V1::ListStreamResponseFormat::EVENT_LIST,
          }),
        ],
      }),
    }),
  ],
})
p api_instance.create_dashboard(body)
