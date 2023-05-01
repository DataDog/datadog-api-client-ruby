# Delete a restriction policy returns "No Content" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RestrictionPoliciesAPI.new
api_instance.delete_restriction_policy("dashboard:test-delete")
