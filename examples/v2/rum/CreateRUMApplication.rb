# Create a new RUM application returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMAPI.new

body = DatadogAPIClient::V2::RUMApplicationCreateRequest.new({
  data: DatadogAPIClient::V2::RUMApplicationCreate.new({
    attributes: DatadogAPIClient::V2::RUMApplicationCreateAttributes.new({
      name: "my_new_rum_application",
      type: "ios",
    }),
    type: DatadogAPIClient::V2::RUMApplicationCreateType::RUM_APPLICATION_CREATE,
  }),
})
p api_instance.create_rum_application(body)
