# Delete bandit returns "The bandit was deleted." response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.create_bandit".to_sym] = true
  config.unstable_operations["v2.delete_bandit".to_sym] = true
end
api_instance = DatadogAPIClient::V2::ExperimentsAPI.new

# there is a valid "bandit" in the system
BANDIT_DATA_ID = ENV["BANDIT_DATA_ID"]
api_instance.delete_bandit(BANDIT_DATA_ID)
