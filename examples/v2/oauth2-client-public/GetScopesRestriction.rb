# Get an OAuth2 client scopes restriction returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_scopes_restriction".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OAuth2ClientPublicAPI.new
p api_instance.get_scopes_restriction("fafa8e1c-36a5-11f0-a83d-da7ad0900001")
