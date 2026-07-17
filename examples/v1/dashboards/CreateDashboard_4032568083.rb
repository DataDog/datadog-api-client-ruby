# Create a new dashboard with a live default_timeframe returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Dashboard",
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::NoteWidgetDefinition.new({
        type: DatadogAPIClient::V1::NoteWidgetDefinitionType::NOTE,
        content: "test",
        background_color: "white",
        font_size: "14",
        text_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        show_tick: false,
        tick_pos: "50%",
        tick_edge: DatadogAPIClient::V1::WidgetTickEdge::LEFT,
      }),
    }),
  ],
  default_timeframe: DatadogAPIClient::V1::DashboardLiveTimeframe.new({
    type: DatadogAPIClient::V1::DashboardLiveTimeframeType::LIVE,
    unit: DatadogAPIClient::V1::WidgetLiveSpanUnit::HOUR,
    value: 4,
  }),
})
p api_instance.create_dashboard(body)
