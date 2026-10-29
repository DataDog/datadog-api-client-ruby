# Get an organization temporary grant request returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
  config.unstable_operations["v2.get_temporary_grant_request".to_sym] = true
end
api_instance = DatadogAPIClient::V2::UsageMeteringAPI.new

# there is a valid "temporary_grant_request" in the system
TEMPORARY_GRANT_REQUEST_DATA_ID = ENV["TEMPORARY_GRANT_REQUEST_DATA_ID"]
p api_instance.get_temporary_grant_request(TEMPORARY_GRANT_REQUEST_DATA_ID)
