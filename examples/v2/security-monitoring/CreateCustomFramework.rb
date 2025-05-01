# Create a custom framework returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::CreateCustomFrameworkRequest.new({
  data: DatadogAPIClient::V2::CustomFrameworkData.new({
    type: DatadogAPIClient::V2::CustomFrameworkType::CUSTOM_FRAMEWORK,
    attributes: DatadogAPIClient::V2::CustomFrameworkDataAttributes.new({
      name: "name",
      handle: "",
      version: "10",
      icon_url: "test-url",
      requirements: [
        DatadogAPIClient::V2::CustomFrameworkRequirement.new({
          name: "requirement",
          controls: [
            DatadogAPIClient::V2::CustomFrameworkControl.new({
              name: "control",
              rules_id: [
                "def-000-be9",
              ],
            }),
          ],
        }),
      ],
    }),
  }),
})
p api_instance.create_custom_framework(body)
