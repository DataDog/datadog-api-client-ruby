# Create a geomap widget using an event_list request

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  description: "Example-Dashboard",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::GeomapWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::GeomapWidgetDefinitionType::GEOMAP,
        requests: [
          DatadogAPIClient::V1::GeomapWidgetRequest.new({
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::EVENT_LIST,
            query: DatadogAPIClient::V1::ListStreamQuery.new({
              data_source: DatadogAPIClient::V1::ListStreamSource::LOGS_STREAM,
              query_string: "",
              indexes: [],
            }),
            columns: [
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "@network.client.geoip.location.latitude",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
              }),
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "@network.client.geoip.location.longitude",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
              }),
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "@network.client.geoip.country.iso_code",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
              }),
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "@network.client.geoip.subdivision.name",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
              }),
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "classic",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
              }),
              DatadogAPIClient::V1::ListStreamColumn.new({
                field: "",
                width: DatadogAPIClient::V1::ListStreamColumnWidth::AUTO,
              }),
            ],
          }),
        ],
        style: DatadogAPIClient::V1::GeomapWidgetDefinitionStyle.new({
          palette: "hostmap_blues",
          palette_flip: false,
        }),
        view: DatadogAPIClient::V1::GeomapWidgetDefinitionView.new({
          focus: "WORLD",
        }),
      }),
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 0,
        y: 0,
        width: 12,
        height: 6,
      }),
    }),
  ],
  template_variables: [],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  notify_list: [],
  reflow_type: DatadogAPIClient::V1::DashboardReflowType::FIXED,
  tags: [],
})
p api_instance.create_dashboard(body)
