# Disable App returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.disable_app".to_sym] = true
end
api_instance = DatadogAPIClient::V2::AppDeploymentAPI.new

# there is a valid "app" in the system
APP_DATA_ID = ENV["APP_DATA_ID"]
p api_instance.disable_app(APP_DATA_ID)
