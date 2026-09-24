# Get Blueprints by Integration ID returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new
p api_instance.get_blueprints_by_integration_id("aws")
