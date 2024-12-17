# Update App returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_app".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AppsAPI.new

# there is a valid "app" in the system
APP_DATA_ID = ENV["APP_DATA_ID"]

body = DatadogAPIClient::V2::UpdateAppRequest.new({
  data: DatadogAPIClient::V2::UpdateAppRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateAppRequestDataAttributes.new({
      name: "Updated Name",
      root_instance_name: "grid0",
    }),
    id: APP_DATA_ID,
    type: DatadogAPIClient::V2::UpdateAppRequestDataType::APPDEFINITIONS,
  }),
})
p api_instance.update_app(APP_DATA_ID, body)
