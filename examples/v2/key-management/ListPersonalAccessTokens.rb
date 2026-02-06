# List personal access tokens returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.list_personal_access_tokens".to_sym] = true
end
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new
p api_instance.list_personal_access_tokens()
