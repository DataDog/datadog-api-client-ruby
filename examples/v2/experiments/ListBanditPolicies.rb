# List bandit policies returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_bandit".to_sym] = true
  config.unstable_operations["v2.list_bandit_policies".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "bandit" in the system
BANDIT_DATA_ID = ENV["BANDIT_DATA_ID"]
p api_instance.list_bandit_policies(BANDIT_DATA_ID)
