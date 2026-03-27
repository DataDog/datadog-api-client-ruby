# Create a widget returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WidgetsAPI.new

body = DatadogAPIClient::V2::CreateOrUpdateWidgetRequest.new({
  data: DatadogAPIClient::V2::CreateOrUpdateWidgetRequestData.new({
    attributes: DatadogAPIClient::V2::CreateOrUpdateWidgetRequestAttributes.new({
      definition: DatadogAPIClient::V2::WidgetDefinition.new({
        title: "My Widget",
        type: DatadogAPIClient::V2::WidgetType::BAR_CHART,
      }),
      tags: [],
    }),
    type: "widgets",
  }),
})
p api_instance.create_widget(WidgetExperienceType::CCM_REPORTS, body)
