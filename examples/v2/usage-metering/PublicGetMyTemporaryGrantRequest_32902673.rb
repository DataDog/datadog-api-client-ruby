# Read an owned temporary grant request

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.public_create_temporary_grant_request".to_sym] = true
  config.unstable_operations["v2.public_get_my_temporary_grant_request".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new

# there is a valid "temporary_grant_request" in the system
TEMPORARY_GRANT_REQUEST_DATA_ID = ENV["TEMPORARY_GRANT_REQUEST_DATA_ID"]
p api_instance.public_get_my_temporary_grant_request(TEMPORARY_GRANT_REQUEST_DATA_ID)
