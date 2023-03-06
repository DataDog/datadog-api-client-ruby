# Get a restriction policy returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RestrictionPoliciesAPI.new
p api_instance.get_restriction_policy("dashboard:test-get")
