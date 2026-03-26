# Update a widget returns "OK" response

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
p api_instance.update_widget(WidgetExperienceType::CCM_REPORTS, "9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", body)
