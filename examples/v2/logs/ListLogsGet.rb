# Search logs (GET) returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsAPI.new
p api_instance.list_logs_get()
