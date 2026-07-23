# Count untagged findings by ownership confidence returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.get_ownership_untagged_findings".to_sym] = true
end
api_instance = DatadogAPIClient::V2::CSMOwnershipAPI.new
p api_instance.get_ownership_untagged_findings()
