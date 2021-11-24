# Delete an API key returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::KeyManagementAPI.new

# there is a valid "api_key" in the system
API_KEY_DATA_ID = ENV["API_KEY_DATA_ID"]
api_instance.delete_api_key(API_KEY_DATA_ID)
