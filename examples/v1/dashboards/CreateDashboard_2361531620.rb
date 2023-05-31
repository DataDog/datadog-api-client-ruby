# Create a new dashboard with list_stream widget with a valid sort parameter DESC

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  title: "Example-Dashboard with list_stream widget",
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
              data_source: DatadogAPIClient::V1::ListStreamSource::EVENT_STREAM,
              query_string: "",
              event_size: DatadogAPIClient::V1::WidgetEventSize::LARGE,
              sort: DatadogAPIClient::V1::WidgetFieldSort.new({
                column: "timestamp",
                order: DatadogAPIClient::V1::WidgetSort::DESCENDING,
              }),
            }),
            response_format: DatadogAPIClient::V1::ListStreamResponseFormat::EVENT_LIST,
          }),
        ],
      }),
    }),
  ],
})
p api_instance.create_dashboard(body)
