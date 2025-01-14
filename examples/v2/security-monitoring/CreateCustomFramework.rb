# Create a custom framework returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::CreateCustomFrameworkRequest.new({
  handle: "",
  name: "",
  requirements: [
    DatadogAPIClient::V2::FrameworkRequirement.new({
      controls: [
        DatadogAPIClient::V2::FrameworkControl.new({
          name: "",
          rule_ids: [
            "",
          ],
        }),
      ],
      name: "",
    }),
  ],
  version: "",
})
p api_instance.create_custom_framework(body)
