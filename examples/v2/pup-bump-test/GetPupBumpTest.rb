# Get pup bump test resource returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_pup_bump_test".to_sym] = true
end
api_instance = DatadogAPIClient::V2::PupBumpTestAPI.new
p api_instance.get_pup_bump_test()
