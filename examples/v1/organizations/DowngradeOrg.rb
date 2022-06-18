# Spin-off Child Organization returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::OrganizationsAPI.new
p api_instance.downgrade_org("abc123")
