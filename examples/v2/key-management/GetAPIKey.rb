# Get API key returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new

# there is a valid "api_key" in the system
API_KEY_DATA_ID = ENV["API_KEY_DATA_ID"]
p api_instance.get_api_key(API_KEY_DATA_ID)
