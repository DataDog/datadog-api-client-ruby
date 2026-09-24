# Get Blueprint returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::AppBuilderAPI.new
p api_instance.get_blueprint("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d")
