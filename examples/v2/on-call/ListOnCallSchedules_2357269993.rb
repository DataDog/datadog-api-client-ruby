# List On-Call schedules returns "OK" response with pagination

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new
api_instance.list_on_call_schedules_with_pagination() { |item| puts item }
