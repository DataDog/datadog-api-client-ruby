# Get a restriction policy returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.access_token = ENV["DD_BEARER_TOKEN"]
end
api_instance = DatadogAPIClient::V2::RestrictionPoliciesAPI.new
p api_instance.get_restriction_policy("dashboard:test-get")
