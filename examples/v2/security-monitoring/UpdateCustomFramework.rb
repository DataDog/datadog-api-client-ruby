# Update a custom framework returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_custom_framework".to_sym] = true
end
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new

body = DatadogAPIClient::V2::UpdateCustomFrameworkRequest.new({
  data: DatadogAPIClient::V2::CustomFrameworkData.new({
    attributes: DatadogAPIClient::V2::CustomFrameworkDataAttributes.new({
      handle: "",
      name: "",
      requirements: [
        DatadogAPIClient::V2::CustomFrameworkRequirement.new({
          controls: [
            DatadogAPIClient::V2::CustomFrameworkControl.new({
              name: "",
              rules_id: [
                "",
              ],
            }),
          ],
          name: "",
        }),
      ],
      version: "",
    }),
    type: DatadogAPIClient::V2::CustomFrameworkType::CUSTOM_FRAMEWORK,
  }),
})
p api_instance.update_custom_framework("handle", "version", body)
