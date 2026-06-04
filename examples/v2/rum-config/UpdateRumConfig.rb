# Update the RUM configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_rum_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumConfigAPI.new

body = DatadogAPIClient::V2::RumConfigUpdateRequest.new({
  data: DatadogAPIClient::V2::RumConfigUpdateData.new({
    attributes: DatadogAPIClient::V2::RumConfigUpdateAttributes.new({
      enforced_application_tags: true,
    }),
    type: DatadogAPIClient::V2::RumConfigType::RUM_CONFIG,
  }),
})
p api_instance.update_rum_config(body)
