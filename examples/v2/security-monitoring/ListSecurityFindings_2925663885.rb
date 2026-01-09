# List security findings returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
opts = {
  page_limit: 5,
}
p api_instance.list_security_findings(opts)
