# Update App returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new

# there is a valid "app" in the system
APP_DATA_ID = ENV["APP_DATA_ID"]

body = DatadogAPIClient::V2::UpdateAppRequest.new({
  data: DatadogAPIClient::V2::UpdateAppRequestData.new({
    attributes: DatadogAPIClient::V2::UpdateAppRequestDataAttributes.new({
      name: "Updated Name",
      root_instance_name: "grid0",
    }),
    id: APP_DATA_ID,
    type: DatadogAPIClient::V2::AppDefinitionType::APPDEFINITIONS,
  }),
})
p api_instance.update_app(APP_DATA_ID, body)
