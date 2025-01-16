# Update a custom framework returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_custom_framework".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::UpdateCustomFrameworkRequest.new({
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
p api_instance.update_custom_framework("handle", "version", body)
