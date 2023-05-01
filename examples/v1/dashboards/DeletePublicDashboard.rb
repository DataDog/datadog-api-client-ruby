# Revoke a shared dashboard URL returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new
p api_instance.delete_public_dashboard("token")
