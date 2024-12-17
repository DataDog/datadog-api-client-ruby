# Delete Multiple Apps returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.delete_apps".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AppsAPI.new

# there is a valid "app" in the system
APP_DATA_ID = ENV["APP_DATA_ID"]

body = DatadogAPIClient::V2::DeleteAppsRequest.new({
  data: [
    DatadogAPIClient::V2::DeleteAppsRequestDataItems.new({
      id: APP_DATA_ID,
      type: DatadogAPIClient::V2::DeleteAppsRequestDataItemsType::APPDEFINITIONS,
    }),
  ],
})
p api_instance.delete_apps(body)
