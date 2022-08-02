# Get a quick list of security signals returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SecurityMonitoringAPI.new
opts = {
  page_limit: 2,
}
api_instance.list_security_monitoring_signals_with_pagination(opts) { |item| puts item }
