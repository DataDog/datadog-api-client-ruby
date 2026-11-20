# Update the RUM configuration returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.update_rum_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RUMConfigAPI.new

body = DatadogAPIClient::V2::RUMConfigUpdateRequest.new({
  data: DatadogAPIClient::V2::RUMConfigUpdateData.new({
    attributes: DatadogAPIClient::V2::RUMConfigUpdateAttributes.new({
      enforced_application_tags: true,
    }),
    type: DatadogAPIClient::V2::RUMConfigType::RUM_CONFIG,
  }),
})
p api_instance.update_rum_config(body)
