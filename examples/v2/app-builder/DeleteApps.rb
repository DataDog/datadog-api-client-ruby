# Delete Multiple Apps returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new

# there is a valid "app" in the system
APP_DATA_ID = ENV["APP_DATA_ID"]

body = DatadogAPIClient::V2::DeleteAppsRequest.new({
  data: [
    DatadogAPIClient::V2::DeleteAppsRequestDataItems.new({
      id: APP_DATA_ID,
      type: DatadogAPIClient::V2::AppDefinitionType::APPDEFINITIONS,
    }),
  ],
})
p api_instance.delete_apps(body)
