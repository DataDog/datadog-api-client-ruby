# Search logs (GET) returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsAPI.new
api_instance.list_logs_get_with_pagination() { |item| puts item }
