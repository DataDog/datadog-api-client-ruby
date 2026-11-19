# Get bandit results returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_bandit".to_sym] = true
  config.unstable_operations["v2.get_bandit_results".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "bandit" in the system
BANDIT_DATA_ID = ENV["BANDIT_DATA_ID"]
p api_instance.get_bandit_results(BANDIT_DATA_ID)
