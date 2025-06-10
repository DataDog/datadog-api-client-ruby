# Get a list of all on-call schedules returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::OnCallAPI.new
p api_instance.list_on_call_schedules()
