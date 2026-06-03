# Create the RUM configuration returns "Created" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_rum_config".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumConfigAPI.new

body = DatadogAPIClient::V2::RumConfigCreateRequest.new({
  data: DatadogAPIClient::V2::RumConfigCreateData.new({
    attributes: DatadogAPIClient::V2::RumConfigCreateAttributes.new({
      enforced_application_tags: true,
    }),
    type: DatadogAPIClient::V2::RumConfigType::RUM_CONFIG,
  }),
})
p api_instance.create_rum_config(body)
