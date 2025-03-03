# Publish App returns "Created" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new

# there is a valid "app" in the system
APP_DATA_ID = ENV["APP_DATA_ID"]
p api_instance.publish_app(APP_DATA_ID)
