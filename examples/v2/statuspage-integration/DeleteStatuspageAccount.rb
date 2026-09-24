# Delete the Statuspage account returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::StatuspageIntegrationAPI.new
api_instance.delete_statuspage_account()
