# Create a new dashboard with llm_observability_stream list_stream widget

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
            response_format: DatadogAPIClient::V1::ListStreamResponseFormat::EVENT_LIST,
            query: DatadogAPIClient::V1::ListStreamQuery.new({
              data_source: DatadogAPIClient::V1::ListStreamSource::LLM_OBSERVABILITY_STREAM,
              query_string: "@event_type:span @parent_id:undefined",
              indexes: [],
            }),
            columns: [
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "@status",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::COMPACT,
              }),
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "@content.prompt",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
              }),
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "@content.response.content",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
              }),
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "timestamp",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
              }),
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "@ml_app",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
              }),
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "service",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
              }),
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "@meta.evaluations.quality",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
              }),
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "@meta.evaluations.security",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
              }),
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "@duration",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
              }),
            ],
          }),
        ],
      }),
    }),
  ],
})
p api_instance.create_dashboard(body)
