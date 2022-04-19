# Update a dashboard returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

# there is a valid "dashboard" in the system
DASHBOARD_ID = ENV["DASHBOARD_ID"]

body = DatadogAPIClient::V1::Dashboard.new({
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  title: "Example-Update_a_dashboard_returns_OK_response with list_stream widget",
  description: "Updated description",
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
              data_source: DatadogAPIClient::V1::ListStreamSource::APM_ISSUE_STREAM,
              query_string: "",
            }),
            response_format: DatadogAPIClient::V1::ListStreamResponseFormat::EVENT_LIST,
          }),
        ],
      }),
    }),
  ],
})
p api_instance.update_dashboard(DASHBOARD_ID, body)
