# Get all API keys returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new

# there is a valid "api_key" in the system
API_KEY_DATA_ATTRIBUTES_NAME = ENV["API_KEY_DATA_ATTRIBUTES_NAME"]
opts = {
  filter: API_KEY_DATA_ATTRIBUTES_NAME,
}
p api_instance.list_api_keys(opts)
